# Copyright (C) 2016 Onion Corporation
# 
# Author: 	Rajiv Puri  <rajiv@onion.io>
# Date:		Nov 15, 2016
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# No Make Necessary, doing this for build root integration

SRCEXT := sh
SRCDIR := .
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))

DST := $(shell echo $(SOURCES) | sed -e 's/\.$(SRCEXT)//')

all: copy

copy:
	@echo $(SOURCES)

clean:
	@rm -rf $(DST)