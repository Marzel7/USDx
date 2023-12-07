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

### USDx v1 (sepolia v1 release)

* Engine: [0xE4cF44F4A219b74902D20dA59DBaFEd3690F1620](https://sepolia.etherscan.io/address/0xe4cf44f4a219b74902d20da59dbafed3690f1620)
* USDx: [0xF9f2bF9B18b19b2772fD3BCD0198896f248a7E3B](https://sepolia.etherscan.io/address/0xF9f2bF9B18b19b2772fD3BCD0198896f248a7E3B#code)
* Oracle: [0x4cd2d6c6Ef31785c2C61240D1E1384Aa2907217c] (https://sepolia.etherscan.io/address/0x4cd2d6c6ef31785c2c61240d1e1384aa2907217c)

##



