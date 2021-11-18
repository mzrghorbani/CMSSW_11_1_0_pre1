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
