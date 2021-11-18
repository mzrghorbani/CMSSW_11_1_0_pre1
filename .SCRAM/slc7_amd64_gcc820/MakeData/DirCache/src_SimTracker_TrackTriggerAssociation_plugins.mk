ifeq ($(strip $(TrackTriggerAssociationPlugins)),)
TrackTriggerAssociationPlugins := self/src/SimTracker/TrackTriggerAssociation/plugins
PLUGINS:=yes
TrackTriggerAssociationPlugins_files := $(patsubst src/SimTracker/TrackTriggerAssociation/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimTracker/TrackTriggerAssociation/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimTracker/TrackTriggerAssociation/plugins/$(file). Please fix src/SimTracker/TrackTriggerAssociation/plugins/BuildFile.))))
TrackTriggerAssociationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimTracker/TrackTriggerAssociation/plugins/BuildFile
TrackTriggerAssociationPlugins_LOC_USE := self  L1Trigger/TrackTrigger DataFormats/L1TrackTrigger PhysicsTools/UtilAlgos CommonTools/UtilAlgos SimDataFormats/EncodedEventId SimDataFormats/TrackingAnalysis SimTracker/TrackTriggerAssociation root
TrackTriggerAssociationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackTriggerAssociationPlugins,TrackTriggerAssociationPlugins,$(SCRAMSTORENAME_LIB),src/SimTracker/TrackTriggerAssociation/plugins))
TrackTriggerAssociationPlugins_PACKAGE := self/src/SimTracker/TrackTriggerAssociation/plugins
ALL_PRODS += TrackTriggerAssociationPlugins
SimTracker/TrackTriggerAssociation_forbigobj+=TrackTriggerAssociationPlugins
TrackTriggerAssociationPlugins_INIT_FUNC        += $$(eval $$(call Library,TrackTriggerAssociationPlugins,src/SimTracker/TrackTriggerAssociation/plugins,src_SimTracker_TrackTriggerAssociation_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackTriggerAssociationPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackTriggerAssociationPlugins,src/SimTracker/TrackTriggerAssociation/plugins))
endif
ALL_COMMONRULES += src_SimTracker_TrackTriggerAssociation_plugins
src_SimTracker_TrackTriggerAssociation_plugins_parent := SimTracker/TrackTriggerAssociation
src_SimTracker_TrackTriggerAssociation_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimTracker_TrackTriggerAssociation_plugins,src/SimTracker/TrackTriggerAssociation/plugins,PLUGINS))
