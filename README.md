# MetaMaskDemo
MetaMask App Demo with SwiftUI.

# Data provider
The mock data is just using for representation of `token` and `NFT`.

The `token` list is fetched from [coincap.io](https://api.coincap.io/v2/assets), which maintain the global coin list, and offer the volume-weighted price. And the `NFT` list is read from local json file `NFTMock.json`.

# Assets
Some assets in this project is using [SFSymbol](https://developer.apple.com/design/human-interface-guidelines/foundations/sf-symbols), and the NFT images is using [unsplash](https://unsplash.com/) which is free.

# Pages
The App is still under development, some pages can be displayed:

- **HomePage**, with token list / NTF list.
- **TokenDetail**, click the token list cell, display the token info inside.
- **TokenScan**, click the right barButton of the HomePage.

# Licens
MIT License.