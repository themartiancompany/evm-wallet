==========
evm-wallet
==========

---------------------------------------------------------
Ethereum Virtual Machine (EVM) compatible networks' wallet
---------------------------------------------------------
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
