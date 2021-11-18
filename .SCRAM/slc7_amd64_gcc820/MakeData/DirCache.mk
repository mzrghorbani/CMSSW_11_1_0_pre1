ifeq ($(strip $(DataFormats/L1TrackTrigger)),)
ALL_COMMONRULES += src_DataFormats_L1TrackTrigger_src
src_DataFormats_L1TrackTrigger_src_parent := DataFormats/L1TrackTrigger
src_DataFormats_L1TrackTrigger_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_L1TrackTrigger_src,src/DataFormats/L1TrackTrigger/src,LIBRARY))
DataFormatsL1TrackTrigger := self/DataFormats/L1TrackTrigger
DataFormats/L1TrackTrigger := DataFormatsL1TrackTrigger
DataFormatsL1TrackTrigger_files := $(patsubst src/DataFormats/L1TrackTrigger/src/%,%,$(wildcard $(foreach dir,src/DataFormats/L1TrackTrigger/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsL1TrackTrigger_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/L1TrackTrigger/BuildFile
DataFormatsL1TrackTrigger_LOC_USE := self  DataFormats/Common DataFormats/DetId DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector DataFormats/Phase2TrackerDigi DataFormats/SiStripDetId DataFormats/TrackerCommon
DataFormatsL1TrackTrigger_LCGDICTS  := x 
DataFormatsL1TrackTrigger_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsL1TrackTrigger,src/DataFormats/L1TrackTrigger/src/classes.h,src/DataFormats/L1TrackTrigger/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
DataFormatsL1TrackTrigger_EX_LIB   := DataFormatsL1TrackTrigger
DataFormatsL1TrackTrigger_EX_USE   := $(foreach d,$(DataFormatsL1TrackTrigger_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsL1TrackTrigger_PACKAGE := self/src/DataFormats/L1TrackTrigger/src
ALL_PRODS += DataFormatsL1TrackTrigger
DataFormatsL1TrackTrigger_CLASS := LIBRARY
DataFormats/L1TrackTrigger_forbigobj+=DataFormatsL1TrackTrigger
DataFormatsL1TrackTrigger_INIT_FUNC        += $$(eval $$(call Library,DataFormatsL1TrackTrigger,src/DataFormats/L1TrackTrigger/src,src_DataFormats_L1TrackTrigger_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(L1Trigger/TrackerDTC)),)
ALL_COMMONRULES += src_L1Trigger_TrackerDTC_src
src_L1Trigger_TrackerDTC_src_parent := L1Trigger/TrackerDTC
src_L1Trigger_TrackerDTC_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerDTC_src,src/L1Trigger/TrackerDTC/src,LIBRARY))
L1TriggerTrackerDTC := self/L1Trigger/TrackerDTC
L1Trigger/TrackerDTC := L1TriggerTrackerDTC
L1TriggerTrackerDTC_files := $(patsubst src/L1Trigger/TrackerDTC/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/TrackerDTC/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerTrackerDTC_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerDTC/BuildFile
L1TriggerTrackerDTC_LOC_USE := self  CommonTools/UtilAlgos CondFormats/SiPhase2TrackerObjects L1Trigger/TrackTrigger
L1TriggerTrackerDTC_EX_LIB   := L1TriggerTrackerDTC
L1TriggerTrackerDTC_EX_USE   := $(foreach d,$(L1TriggerTrackerDTC_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerTrackerDTC_PACKAGE := self/src/L1Trigger/TrackerDTC/src
ALL_PRODS += L1TriggerTrackerDTC
L1TriggerTrackerDTC_CLASS := LIBRARY
L1Trigger/TrackerDTC_forbigobj+=L1TriggerTrackerDTC
L1TriggerTrackerDTC_INIT_FUNC        += $$(eval $$(call Library,L1TriggerTrackerDTC,src/L1Trigger/TrackerDTC/src,src_L1Trigger_TrackerDTC_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(L1Trigger/TrackerTFP)),)
ALL_COMMONRULES += src_L1Trigger_TrackerTFP_src
src_L1Trigger_TrackerTFP_src_parent := L1Trigger/TrackerTFP
src_L1Trigger_TrackerTFP_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerTFP_src,src/L1Trigger/TrackerTFP/src,LIBRARY))
L1TriggerTrackerTFP := self/L1Trigger/TrackerTFP
L1Trigger/TrackerTFP := L1TriggerTrackerTFP
L1TriggerTrackerTFP_files := $(patsubst src/L1Trigger/TrackerTFP/src/%,%,$(wildcard $(foreach dir,src/L1Trigger/TrackerTFP/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
L1TriggerTrackerTFP_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerTFP/BuildFile
L1TriggerTrackerTFP_LOC_FLAGS_CXXFLAGS   := -g -Wno-unknown-pragmas -Wno-misleading-indentation -DUSE_HLS -Wno-unused-variable -Wno-uninitialized -Wno-int-in-bool-context -Wno-maybe-uninitialized -Wno-parentheses
L1TriggerTrackerTFP_LOC_USE := self  CommonTools/UtilAlgos DataFormats/Common DataFormats/L1TrackTrigger DataFormats/JetReco DataFormats/Math DataFormats/Phase2TrackerDigi FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder L1Trigger/TrackTrigger L1Trigger/TrackerDTC MagneticField/Engine MagneticField/Records SimDataFormats/EncodedEventId SimDataFormats/Track SimDataFormats/TrackingAnalysis SimGeneral/TrackingAnalysis SimTracker/TrackTriggerAssociation boost roothistmatrix hls
L1TriggerTrackerTFP_EX_LIB   := L1TriggerTrackerTFP
L1TriggerTrackerTFP_EX_USE   := $(foreach d,$(L1TriggerTrackerTFP_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
L1TriggerTrackerTFP_PACKAGE := self/src/L1Trigger/TrackerTFP/src
ALL_PRODS += L1TriggerTrackerTFP
L1TriggerTrackerTFP_CLASS := LIBRARY
L1Trigger/TrackerTFP_forbigobj+=L1TriggerTrackerTFP
L1TriggerTrackerTFP_INIT_FUNC        += $$(eval $$(call Library,L1TriggerTrackerTFP,src/L1Trigger/TrackerTFP/src,src_L1Trigger_TrackerTFP_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(SimTracker/TrackTriggerAssociation)),)
ALL_COMMONRULES += src_SimTracker_TrackTriggerAssociation_src
src_SimTracker_TrackTriggerAssociation_src_parent := SimTracker/TrackTriggerAssociation
src_SimTracker_TrackTriggerAssociation_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimTracker_TrackTriggerAssociation_src,src/SimTracker/TrackTriggerAssociation/src,LIBRARY))
SimTrackerTrackTriggerAssociation := self/SimTracker/TrackTriggerAssociation
SimTracker/TrackTriggerAssociation := SimTrackerTrackTriggerAssociation
SimTrackerTrackTriggerAssociation_files := $(patsubst src/SimTracker/TrackTriggerAssociation/src/%,%,$(wildcard $(foreach dir,src/SimTracker/TrackTriggerAssociation/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimTrackerTrackTriggerAssociation_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimTracker/TrackTriggerAssociation/BuildFile
SimTrackerTrackTriggerAssociation_LOC_USE := self  DataFormats/Common DataFormats/DetId DataFormats/GeometryVector DataFormats/SiPixelDigi SimDataFormats/Track SimDataFormats/EncodedEventId SimDataFormats/TrackingAnalysis clhep xerces-c boost root rootrflx DataFormats/L1TrackTrigger DataFormats/Phase2TrackerDigi L1Trigger/TrackerDTC
SimTrackerTrackTriggerAssociation_LCGDICTS  := x 
SimTrackerTrackTriggerAssociation_PRE_INIT_FUNC += $$(eval $$(call LCGDict,SimTrackerTrackTriggerAssociation,src/SimTracker/TrackTriggerAssociation/src/classes.h,src/SimTracker/TrackTriggerAssociation/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
SimTrackerTrackTriggerAssociation_EX_LIB   := SimTrackerTrackTriggerAssociation
SimTrackerTrackTriggerAssociation_EX_USE   := $(foreach d,$(SimTrackerTrackTriggerAssociation_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimTrackerTrackTriggerAssociation_PACKAGE := self/src/SimTracker/TrackTriggerAssociation/src
ALL_PRODS += SimTrackerTrackTriggerAssociation
SimTrackerTrackTriggerAssociation_CLASS := LIBRARY
SimTracker/TrackTriggerAssociation_forbigobj+=SimTrackerTrackTriggerAssociation
SimTrackerTrackTriggerAssociation_INIT_FUNC        += $$(eval $$(call Library,SimTrackerTrackTriggerAssociation,src/SimTracker/TrackTriggerAssociation/src,src_SimTracker_TrackTriggerAssociation_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
