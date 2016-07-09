#
# RAPHAFILES
#

ACTUAL_DIR = $(shell pwd)

# String for the MAC OS X operationg system
MAC_OS_X_OSTYPE := Darwin

# Shell program
SHELL := bash

# Gets from shell the operating system
OS := $(shell uname -s)

# get scripts files
SCRIPTS_DIR := $(ACTUAL_DIR)/scripts
SCRIPTS_EXT := sh
SCRIPTS_NAMES := $(notdir $(basename $(wildcard $(SCRIPTS_DIR)/*.$(SCRIPTS_EXT))))
SCRIPTS := $(patsubst %,$(SCRIPTS_DIR)/%.$(SCRIPTS_EXT),$(SCRIPTS_NAMES))


#
# COMPILATION RULES
#

all: install

install-scripts: $(SCRIPTS)
		@echo $^
		for file in $^; do sh $$file; done

install: clean
		make install-scripts

clean: clear-vim

clear-vim:
		@echo "Clearing VIM...."
		@rm -rf $PWD/vim/bundle/*
		@rm -rf ~/.vim
		@rm -rf ~/.vimrc
		@rm -rf lucario/


