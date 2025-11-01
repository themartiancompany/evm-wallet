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

evm-wallet *[options]* *command* *[command-args]*


Description
===========
Ethereum Virtual Machine (EVM) compatible
networks' cryptocurrency wallet.


Commands
=========
* get  *wallet-name*  *key*

  Retrieves information about specific items of single wallets.

* set *wallet-name* *key* *value*

  Sets information about specific items of single wallets.

* list *filter*

  Display contacts information for wallest respecting the filter.

* send *address* *amount*

  Sends balance to an address.


Get and set arguments
=======================

* address

  Returns wallet address.

* balance

  Returns balance for the wallet.

* seed

  Returns wallet seed phrase.


List arguments
=================

* filter

  Restrict the listing to wallets respecting the filter.
  It can be a regex.


Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.


Options
========

-u measure-unit         Measure unit for the transaction
                        value. It can be 'ether' or 'wei'.
-l balance-lifespan     Maximum threshold in seconds
                        from now after which to consider
                        balance to be outdated.


List options
==============

-o output-type          Output type for the list option.
                        It can be 'name', 'address',
                        'fingerprint'.


Network options
================

-n network              EVM network name. Accepted values
                        are all those supported by
                        evm-chains-info and RPC addresses.
-R rpc-selection        RPC selection method.
-S explorer-selection   Network explorer selection method.
-r retries-max          Maximum number of retries before
                        failing.


Credentials options
=====================

-w wallet-path          Wallet path.
-p wallet-password      Wallet password.
-s wallet-seed          Wallet seed path.
-k api-key              Etherscan-like service key.


Application options
=====================

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
* ether2wei
* evm-chains-info
* evm-chains-explorers
* evm-contract-call
* key-gen

.. include:: variables.rst
