SHELL := /bin/bash

install:
	@bash install.sh

bundles:
	@vim +PluginInstall +qall
