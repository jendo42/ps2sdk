# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.

# You can override the following options on the make command line, or manually
# edit them below.  Please see the file INSTALL for details on building
# ps2sdk.

#
# Definitions for the EE toolchain.
#

EE_TOOL_PREFIX ?= mips64r5900el-ps2-elf-
EE_CC ?= $(EE_TOOL_PREFIX)gcc
EE_CXX ?= $(EE_TOOL_PREFIX)g++
EE_AS ?= $(EE_TOOL_PREFIX)as
EE_LD ?= $(EE_TOOL_PREFIX)ld
EE_AR ?= $(EE_TOOL_PREFIX)ar
EE_OBJCOPY ?= $(EE_TOOL_PREFIX)objcopy
EE_STRIP ?= $(EE_TOOL_PREFIX)strip
EE_ADDR2LINE ?= $(EE_TOOL_PREFIX)addr2line
EE_RANLIB ?= $(EE_TOOL_PREFIX)ranlib

#
# Defintions for the IOP toolchain.
#

IOP_TOOL_PREFIX ?= mipsel-ps2-irx-
IOP_CC ?= $(IOP_TOOL_PREFIX)gcc
IOP_AS ?= $(IOP_TOOL_PREFIX)as
IOP_LD ?= $(IOP_TOOL_PREFIX)ld
IOP_AR ?= $(IOP_TOOL_PREFIX)ar
IOP_OBJCOPY ?= $(IOP_TOOL_PREFIX)objcopy
IOP_STRIP ?= $(IOP_TOOL_PREFIX)strip
IOP_ADDR2LINE ?= $(IOP_TOOL_PREFIX)addr2line
IOP_RANLIB ?= $(IOP_TOOL_PREFIX)ranlib

#
# Definitions for the local toolchain
#

CC ?= cc
AS ?= as
LD ?= ld
AR ?= ar
OBJCOPY ?= objcopy
STRIP ?= strip

#
# ccache support
#
CCACHE ?= ccache
ifeq (, $(shell which $(CCACHE)))

else
	EE_CC := $(CCACHE) $(EE_CC)
	EE_CXX := $(CCACHE) $(EE_CXX)
	EE_AS := $(CCACHE) $(EE_AS)
	EE_LD := $(CCACHE) $(EE_LD)
	EE_AR := $(CCACHE) $(EE_AR)
	IOP_CC := $(CCACHE) $(IOP_CC)
	IOP_AS := $(CCACHE) $(IOP_AS)
	IOP_LD := $(CCACHE) $(IOP_LD)
	IOP_AR := $(CCACHE) $(IOP_AR)
	CC := $(CCACHE) $(CC)
	AS := $(CCACHE) $(AS)
	LD := $(CCACHE) $(LD)
	AR := $(CCACHE) $(AR)
endif

#
# Definitions for local shell operations
#

MKDIR ?= mkdir
RMDIR ?= rmdir
ECHO ?= echo
PRINTF ?= printf

MAKEREC ?= $(MAKE) -C
