ifeq ($(strip $(TrackerTFPPlugins)),)
TrackerTFPPlugins := self/src/L1Trigger/TrackerTFP/plugins
PLUGINS:=yes
TrackerTFPPlugins_files := $(patsubst src/L1Trigger/TrackerTFP/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/TrackerTFP/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/TrackerTFP/plugins/$(file). Please fix src/L1Trigger/TrackerTFP/plugins/BuildFile.))))
TrackerTFPPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerTFP/plugins/BuildFile
TrackerTFPPlugins_LOC_USE := self  L1Trigger/TrackerTFP
TrackerTFPPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackerTFPPlugins,TrackerTFPPlugins,$(SCRAMSTORENAME_LIB),src/L1Trigger/TrackerTFP/plugins))
TrackerTFPPlugins_PACKAGE := self/src/L1Trigger/TrackerTFP/plugins
ALL_PRODS += TrackerTFPPlugins
L1Trigger/TrackerTFP_forbigobj+=TrackerTFPPlugins
TrackerTFPPlugins_INIT_FUNC        += $$(eval $$(call Library,TrackerTFPPlugins,src/L1Trigger/TrackerTFP/plugins,src_L1Trigger_TrackerTFP_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackerTFPPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackerTFPPlugins,src/L1Trigger/TrackerTFP/plugins))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerTFP_plugins
src_L1Trigger_TrackerTFP_plugins_parent := L1Trigger/TrackerTFP
src_L1Trigger_TrackerTFP_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerTFP_plugins,src/L1Trigger/TrackerTFP/plugins,PLUGINS))
