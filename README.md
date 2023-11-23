# USDx Stablecoin





![casey50224_ethical_netnographical_data_practices_against_the_ba_0a29e88e-1c55-4502-9058-0ad69fa00cf9](https://github.com/Marzel7/USDx/assets/2925473/773d39c3-65d0-4ada-9768-f72c97c32121)

## USDx


USDx strives to address the query, "What constitutes the most basic decentralized stablecoin?" The outcome is a decentralized (without an owner and unchangeable), closely fixed, open-source, non-profit ERC-20 stablecoin system.

USDx is pegged to the United States dollar and maintains its stability by creating USM tokens in exchange for ETH/BTC, valuing them based on the current ETH price during token creation.

For instance, if ETH/BTC is valued at $200, depositing 1 ETH yields 200 USM (after deducting a nominal minting fee). The reverse applies when burning tokens.

This mechanism operates under the concept of a CDP: Collateralized Debt Position. However, CDPs face a challenge: if the collateral asset's value, especially ETH's, drops (due to its volatility), the contract might become undercollateralized. When triggered, the system might initiate a liquidation process. It could involve auctioning off or automatically selling a portion of the deposited collateral (ETH) to repay the outstanding debt (USDx) and restore the required collateralization ratio. 

Instead of immediately liquidating the entire position, the USDX system triggers a partial liquidation process when the collateral value approaches but has not fully breached the threshold. In a partial liquidation, the system sells only a portion of the user's collateral. For example, suppose the value of the collateral falls to a point where liquidating 25% of it would restore the required collateralization ratio. In that case, the system would sell only that portion. 

Partial liquidation aims to mitigate risk while allowing users to retain a portion of their collateralized assets. It helps restore the required collateralization ratio without completely liquidating the entire position, offering users an opportunity to rectify their positions and prevent potential losses while maintaining the system's stability.

## Networks & Addresses

### USM v1-rc1 (mainnet v1 release candidate)

On Oct 10, 2021, **v1 LAUNCHED!**  🎆🎉😬  v1-rc1 is the first uncapped mainnet USM release, which is exciting; but as a release _candidate_ v1-rc1 **may still be replaced by a v1-rc2 if significant problems are found** - keep an eye on [Twitter](https://twitter.com/usmfum) for news of any such developments.  See the [initial launch thread](https://twitter.com/usmfum/status/1447437647727763456) and give it a poke.

* Oracle: [0x7F360C88CABdcC2F2874Ec4Eb05c3D47bD0726C5](https://etherscan.io/address/0x7F360C88CABdcC2F2874Ec4Eb05c3D47bD0726C5)
* USM: [0x2a7FFf44C19f39468064ab5e5c304De01D591675](https://etherscan.io/address/0x2a7FFf44C19f39468064ab5e5c304De01D591675)
* FUM: [0x86729873e3b88DE2Ab85CA292D6d6D69D548eDF3](https://etherscan.io/address/0x86729873e3b88DE2Ab85CA292D6d6D69D548eDF3)
* USMView: [0x0aEbFe42154dEaE7e35AFA9727469e7F4a192b9d](https://etherscan.io/address/0x0aEbFe42154dEaE7e35AFA9727469e7F4a192b9d)
* USMWETHProxy: [0x19d4465Ea18d31fC113DF522994b68BA9a10A184](https://etherscan.io/address/0x19d4465Ea18d31fC113DF522994b68BA9a10A184)
* [Live v1 stats dashboard webpage](https://usmfum.github.io/USM-Stats/)


## 

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```




### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```


