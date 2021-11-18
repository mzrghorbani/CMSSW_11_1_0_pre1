ifeq ($(strip $(TrackerDTCPlugins)),)
TrackerDTCPlugins := self/src/L1Trigger/TrackerDTC/plugins
PLUGINS:=yes
TrackerDTCPlugins_files := $(patsubst src/L1Trigger/TrackerDTC/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/TrackerDTC/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/TrackerDTC/plugins/$(file). Please fix src/L1Trigger/TrackerDTC/plugins/BuildFile.))))
TrackerDTCPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerDTC/plugins/BuildFile
TrackerDTCPlugins_LOC_USE := self  L1Trigger/TrackerDTC
TrackerDTCPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackerDTCPlugins,TrackerDTCPlugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/TrackerDTC/plugins))
TrackerDTCPlugins_PACKAGE := self/src/L1Trigger/TrackerDTC/plugins
ALL_PRODS += TrackerDTCPlugins
L1Trigger/TrackerDTC_forbigobj+=TrackerDTCPlugins
TrackerDTCPlugins_INIT_FUNC        += $$(eval $$(call Library,TrackerDTCPlugins,src/L1Trigger/TrackerDTC/plugins,src_L1Trigger_TrackerDTC_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackerDTCPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackerDTCPlugins,src/L1Trigger/TrackerDTC/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerDTC_plugins
src_L1Trigger_TrackerDTC_plugins_parent := L1Trigger/TrackerDTC
src_L1Trigger_TrackerDTC_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerDTC_plugins,src/L1Trigger/TrackerDTC/plugins,PLUGINS))
