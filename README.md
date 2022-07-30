# MetaMaskDemo
MetaMask App Demo with SwiftUI.

# Data provider
The mock data is just using for representation of `token` and `NFT`.

The `token` list is fetched from [coincap.io](https://api.coincap.io/v2/assets), which maintain the global coin list, and offer the volume-weighted price. And the `NFT` list is read from local json file `NFTMock.json`.

# Assets
Some assets in this project is using [SFSymbol](https://developer.apple.com/design/human-interface-guidelines/foundations/sf-symbols), and the NFT images is using [unsplash](https://unsplash.com/) which is free.

# Pages
The App is still under development, some pages or functions can be shown:

- *HomePage*, with token/NTF list.
- *TokenDetail*, click the token list cell, display the token info inside.
- *Scan*, click the right barButton of the HomePage.
- *Sidecar*, click the left barButton of the HomePage.
- *Copy*, click the wallet address of the HomePage profile, can copy the address.

# Licens
MIT License.