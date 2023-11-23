// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {DeployDSC} from "../../script/DeployDSC.s.sol";
import {DSCEngine} from "../../src/DSCEngine.sol";
import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";
import {ERC20Mock} from "lib/openzeppelin-contracts/contracts/mocks/ERC20Mock.sol";
import {Test, console} from "lib/forge-std/src/Test.sol";

contract DecentralizedStableCoinTest is Test {
    DeployDSC deployer;
    DecentralizedStableCoin dsc;
    DSCEngine dsce;
    HelperConfig helperConfig;

    address public weth;
    address public wbtc;

    address public owner = address(1);
    address public user = address(2);

    uint256 STARTING_USER_BALANCE = 100e8;
    uint256 COLLATERAL_TOKEN_STARTING_BALANCE = 1000e8;

    function setUp() public {
        deployer = new DeployDSC();
        (dsc, dsce, helperConfig) = deployer.run();
        (,, weth, wbtc,) = helperConfig.activeNetworkConfig();
    }

    function testMintDscIsNotOwner() public {
        vm.expectRevert();
        dsc.mint(user, 100);
    }

    function testBurnDscIsNotOwner() public {
        vm.expectRevert();
        dsc.burn(100);
    }

    function testMintNoCollateralTokenAllowance() public {
        vm.expectRevert("ERC20: insufficient allowance");
        dsce.depositCollateral(weth, 100);
    }

    function testMintNoCollateralTokenBalance() public {
        _appproveCollateralTokens(user);
        vm.expectRevert("ERC20: transfer amount exceeds balance");
        vm.prank(user);
        dsce.depositCollateral(weth, 100);
    }

    function testMintAndDepositCollateralTokensSuccess() public {
        _appproveCollateralTokens(user);
        _mintTokens(user);
        _depositCollateral(user);

        assertEq(ERC20Mock(weth).balanceOf(user), 0);
        assertEq(ERC20Mock(weth).totalSupply(), STARTING_USER_BALANCE + COLLATERAL_TOKEN_STARTING_BALANCE);
    }

    function _depositCollateral(address account) internal {
        vm.prank(account);
        dsce.depositCollateral(weth, STARTING_USER_BALANCE);
    }

    function _appproveCollateralTokens(address account) internal {
        vm.startPrank(account);
        ERC20Mock(weth).approve(address(dsce), type(uint256).max);
        vm.stopPrank();
    }

    function _mintTokens(address account) internal {
        vm.startPrank(account);
        ERC20Mock(weth).mint(account, STARTING_USER_BALANCE);
        vm.stopPrank();
    }
}
