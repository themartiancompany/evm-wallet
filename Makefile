#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
_PROJECT=evm-wallet
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
LIB_DIR=$(DESTDIR)$(PREFIX)/lib/$(_PROJECT)

DOC_FILES=$(wildcard *.rst)
SCRIPT_FILES=$(wildcard $(_PROJECT)/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-scripts install-doc

install-scripts:

	install -vDm 755 "$(_PROJECT)/$(_PROJECT)" "$(BIN_DIR)/$(_PROJECT)"
	install -vDm 755 "$(_PROJECT)/mkseed" "$(BIN_DIR)/mkseed"
	install -vDm 755 "$(_PROJECT)/address-get" "$(LIB_DIR)/address-get"
	install -vDm 755 "$(_PROJECT)/balance-get" "$(LIB_DIR)/balance-get"
	install -vDm 755 "$(_PROJECT)/network-provider" "$(LIB_DIR)/network-provider"
	install -vDm 755 "$(_PROJECT)/seed-new" "$(LIB_DIR)/seed-new"
	install -vDm 755 "$(_PROJECT)/wallet-get" "$(LIB_DIR)/wallet-get"
	install -vDm 755 "$(_PROJECT)/wallet-new" "$(LIB_DIR)/wallet-new"

install-doc:

	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

.PHONY: check install install-doc install-scripts shellcheck
