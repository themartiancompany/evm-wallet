# SPDX-License-Identifier: GPL-3.0-or-later

#    ----------------------------------------------------------------------
#    Copyright © 2024, 2025  Pellegrino Prevete
#
#    All rights reserved
#    ----------------------------------------------------------------------
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

PREFIX ?= /usr/local
_PROJECT=evm-wallet
DATA_DIR=$(DESTDIR)$(PREFIX)/share
DOC_DIR=$(DATA_DIR)/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
LIB_DIR=$(DESTDIR)$(PREFIX)/lib/$(_PROJECT)
MAN_DIR?=$(DATA_DIR)/man

DOC_FILES=\
  $(wildcard *.rst) \
  $(wildcard *.md)

_BASH_FILES=\
  $(_PROJECT) \
  mkseed

_NODE_FILES=\
  address-get \
  balance-check \
  balance-get \
  balance-send \
  ethers-to-wei \
  network-provider \
  seed-new \
  wallet-get \
  wallet-new

_INSTALL_FILE=install -vDm644
_INSTALL_EXE=install -vDm755
_INSTALL_DIR=install -vdm755

_CHECK_TARGETS=\
  shellcheck
_CHECK_TARGETS_ALL=\
  check \
  $(_CHECK_TARGETS)
_INSTALL_SCRIPTS_TARGETS=\
  install-bash-scripts \
  install-node-scripts \
  install-configs
_INSTALL_COMPLETION_TARGETS=\
  install-bash-completion \
  install-zsh-completion
_INSTALL_DOC_TARGETS=\
  install-doc \
  install-man
_INSTALL_TARGETS=\
  install-scripts \
  install-completion \
  $(_INSTALL_DOC_TARGETS)
_INSTALL_TARGETS_ALL=\
  install \
  $(_INSTALL_TARGETS) \
  $(_INSTALL_COMPLETION_TARGETS) \
  $(_INSTALL_SCRIPTS_TARGETS)

_PHONY_TARGETS=\
  $(_CHECK_TARGETS_ALL) \
  $(_INSTALL_TARGETS_ALL)

all:

check: shellcheck

shellcheck:

	shellcheck -s bash $(_BASH_FILES)

install: $(_INSTALL_TARGETS)

install-scripts: $(_INSTALL_SCRIPTS_TARGETS)

install-completion: $(_INSTALL_COMPLETION_TARGETS)

install-bash-scripts:

	for _file in $(_BASH_FILES); do \
	  $(_INSTALL_EXE) \
	    "$(_PROJECT)/$${_file}" \
	    "$(BIN_DIR)/$${_file}"; \
	done

install-node-scripts:

	for _file in $(_NODE_FILES); do \
	  $(_INSTALL_EXE) \
	    "$(_PROJECT)/$${_file}" \
	    "$(LIB_DIR)/$${_file}"; \
	done

install-bash-completion:

	$(_INSTALL_FILE) \
	  "completion/bash_completion" \
          "$(DATA_DIR)/bash-completion/completions/$(_PROJECT)"

install-zsh-completion:

	$(_INSTALL_FILE) \
	  "completion/zsh_completion" \
          "$(DATA_DIR)/zsh/site-functions/_$(_PROJECT)"

install-configs:

	$(_INSTALL_DIR) \
	  "$(LIB_DIR)/configs"
	$(_INSTALL_FILE) \
	  "configs/IERC20."* \
	  "$(LIB_DIR)/configs"

install-doc:

	$(_INSTALL_FILE) \
	  $(DOC_FILES) \
	  -t \
	  "$(DOC_DIR)/"

install-man:

	install \
	  -vdm755 \
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/$(_PROJECT).1.rst" \
	  "$(MAN_DIR)/man1/$(_PROJECT).1"
	rst2man \
	  "man/mkseed.1.rst" \
	  "$(MAN_DIR)/man1/mkseed.1"


.PHONY: $(_PHONY_TARGETS)
