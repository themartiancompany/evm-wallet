[comment]: <> (SPDX-License-Identifier: AGPL-3.0)

[comment]: <> (-------------------------------------------------------------)
[comment]: <> (Copyright © 2024, 2025, 2026  Pellegrino Prevete)
[comment]: <> (All rights reserved)
[comment]: <> (-------------------------------------------------------------)

[comment]: <> (This program is free software: you can redistribute)
[comment]: <> (it and/or modify it under the terms of the GNU Affero)
[comment]: <> (General Public License as published by the Free)
[comment]: <> (Software Foundation, either version 3 of the License.)

[comment]: <> (This program is distributed in the hope that it will be useful,)
[comment]: <> (but WITHOUT ANY WARRANTY; without even the implied warranty of)
[comment]: <> (MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the)
[comment]: <> (GNU Affero General Public License for more details.)

[comment]: <> (You should have received a copy of the GNU Affero General Public)
[comment]: <> (License along with this program.)
[comment]: <> (If not, see <https://www.gnu.org/licenses/>.)


# EVM Wallet

Cryptocurrency wallet for Ethereum Virtual Machine (EVM) compatible
blockchain networks written in Bash based on the
[Ethers](
  https://github.com/ethers-io/ethers.js) library and part of the
EVM Toolchain.

It depends on
[EVM Chains Info](
  https://github.com/themartiancompany/evm-chains-info)
and
[EVM Chains Explorers](
  https://github.com/themartiancompany/evm-chains-explorers)
in order to automatically retrieve informations about
blockchain networks, on
[key-gen](
  https://github.com/themartiancompany/key-gen),
for which it is at the same time a seed-phrase provider,
to generate secrets,
and on the
[Crash Bash](
  https://github.com/themartiancompany/crash-bash)
and
[Crash JavaScript](
  https://github.com/themartiancompany/crash-js)
run-time libraries.

It is a dependency for the
[EVM Contracts Tools](
  https://github.com/themartiancompany/evm-contracts-tools),
[libEVM](
  https://github.com/themartiancompany/libevm),
and so all the programs depending on it, such as the
[EVM OpenPGP KeyServer](
  https://github.com/themartiancompany/evm-openpgp-keyserver),
the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
and the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
Life and DogeOS user repository and application store. 

## Installation

The wallet in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

The program has officially published on the
the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`evm-wallet`.
The source code is published on the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
so it can't possibly be taken down.

To install it from there just type

```bash
ur \
  evm-wallet
```

A censorable HTTP Github mirror of the recipe published there,
containing a full list of the software dependencies needed to run the
tools is hosted on
[evm-wallet-ur](
  https://github.com/themartiancompany/evm-wallet-ur).

Be aware the mirror could go offline any time as Github and more
in general all HTTP resources are inherently unstable and censorable.

## License

This program is released by Pellegrino Prevete under the terms
of the GNU Affero General Public License version 3.
