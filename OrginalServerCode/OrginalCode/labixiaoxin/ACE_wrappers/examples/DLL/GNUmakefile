# -*- makefile -*-
#----------------------------------------------------------------------------
#       GNU ACE Workspace
#
# $Id: GNUACEWorkspaceCreator.pm 91813 2010-09-17 07:52:52Z johnnyw $
#
# This file was generated by MPC.  Any changes made directly to
# this file will be lost the next time it is generated.
#
# MPC Command:
# /tmp/DOC_ROOT/stage-14548/ACE_wrappers/bin/mwc.pl -type gnuace -exclude "TAO/TAO_*.mwc,TAO/CIAO/CIAO_*.mwc" -recurse -hierarchy -relative ACE_ROOT=/tmp/DOC_ROOT/stage-14548/ACE_wrappers -relative TAO_ROOT=/tmp/DOC_ROOT/stage-14548/ACE_wrappers/TAO -relative CIAO_ROOT=/tmp/DOC_ROOT/stage-14548/ACE_wrappers/TAO/CIAO -relative DANCE_ROOT=/tmp/DOC_ROOT/stage-14548/ACE_wrappers/TAO/DAnCE
#
#----------------------------------------------------------------------------

MAKEFILE = GNUmakefile

ifeq ($(findstring k,$(MAKEFLAGS)),k)
  KEEP_GOING = -
endif

include $(ACE_ROOT)/include/makeinclude/macros.GNU

all: DLL_Today DLL_Newsweek DLL_Main

REMAINING_TARGETS := $(filter-out all,$(TARGETS_NESTED:.nested=)) $(CUSTOM_TARGETS)

$(REMAINING_TARGETS):
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Today $(@)
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Newsweek $(@)
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Main $(@)

.PHONY: DLL_Today
DLL_Today:
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Today all

.PHONY: DLL_Newsweek
DLL_Newsweek:
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Newsweek all

.PHONY: DLL_Main
DLL_Main: DLL_Today DLL_Newsweek
	$(KEEP_GOING)@$(MAKE) -f GNUmakefile.DLL_Main all

project_name_list:
	@echo DLL_Main
	@echo DLL_Newsweek
	@echo DLL_Today
