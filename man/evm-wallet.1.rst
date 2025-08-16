..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.


===========
evm-wallet
===========

-----------------------------------------------------------
Ethereum Virtual Machine (EVM) compatible networks' wallet
-----------------------------------------------------------
:Version: evm-wallet |version|
:Manual section: 1

Synopsis
========

evm-wallet *[options]* *command* *[command_args]*

Description
===========
Ethereum Virtual Machine (EVM) compatible
networks' cryptocurrency wallet.


Commands
=========
* get
    *wallet_name*
      *key*

* set
    *wallet_name*
      *key*
      *value*
* send
    *address*
      *amount*

Keys
=====
* address
* balance
* seed

Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.


evmfs is the reference implementation of the
Ethereum Virtual Machine File System (EVMFS),
a distributed, undeletable, uncensorable,
network-indipendent file system running
on Ethereum Virtual Machine (EVM) compatible
blockchain networks.

Options
========

-w wallet_path          Wallet path.
-p wallet_password      Wallet password.
-s wallet_seed          Wallet seed path.
-n network              EVM network name. Accepted values
                        are all those supported by
                        evm-chains-info and RPC addresses.
-k api_key              Etherscan-like service key.
-R rpc_selection        RPC selection method.
-S explorer_selection   Network explorer selection method.
-r retries_max          Maximum number of retries before
                        failing.
-u measure_unit         Measure unit for the transaction
                        value. It can be 'ether' or 'wei'.
-l balance_lifespan     Maximum threshold in seconds
                        from now after which to consider
                        balance to be outdated.

-h                      This message.
-c                      Enable color output
-v                      Enable verbose output

Bugs
====

https://github.com/themartiancompany/evm-wallet/-/issues

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* mkseed
* key-gen
* evm-chains-info
* evm-chains-explorers
* evm-contract-call

.. include:: variables.rst
