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
