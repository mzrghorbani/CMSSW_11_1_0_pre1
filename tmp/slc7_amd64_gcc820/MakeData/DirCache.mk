ALL_SUBSYSTEMS+=DataFormats
subdirs_src_DataFormats = src_DataFormats_L1TrackTrigger
ALL_PACKAGES += DataFormats/L1TrackTrigger
subdirs_src_DataFormats_L1TrackTrigger := src_DataFormats_L1TrackTrigger_src
ALL_SUBSYSTEMS+=L1Trigger
subdirs_src_L1Trigger = src_L1Trigger_TrackerDTC src_L1Trigger_TrackerTFP
ALL_PACKAGES += L1Trigger/TrackerDTC
subdirs_src_L1Trigger_TrackerDTC := src_L1Trigger_TrackerDTC_plugins src_L1Trigger_TrackerDTC_python src_L1Trigger_TrackerDTC_src src_L1Trigger_TrackerDTC_test
ifeq ($(strip $(PyL1TriggerTrackerDTC)),)
PyL1TriggerTrackerDTC := self/src/L1Trigger/TrackerDTC/python
src_L1Trigger_TrackerDTC_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/TrackerDTC/python)
PyL1TriggerTrackerDTC_files := $(patsubst src/L1Trigger/TrackerDTC/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/TrackerDTC/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerTrackerDTC_LOC_USE := self  
PyL1TriggerTrackerDTC_PACKAGE := self/src/L1Trigger/TrackerDTC/python
ALL_PRODS += PyL1TriggerTrackerDTC
PyL1TriggerTrackerDTC_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerTrackerDTC,src/L1Trigger/TrackerDTC/python,src_L1Trigger_TrackerDTC_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerTrackerDTC,src/L1Trigger/TrackerDTC/python))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerDTC_python
src_L1Trigger_TrackerDTC_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerDTC_python,src/L1Trigger/TrackerDTC/python,PYTHON))
ifeq ($(strip $(TrackerDTCTests)),)
TrackerDTCTests := self/src/L1Trigger/TrackerDTC/test
TrackerDTCTests_files := $(patsubst src/L1Trigger/TrackerDTC/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/TrackerDTC/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/TrackerDTC/test/$(file). Please fix src/L1Trigger/TrackerDTC/test/BuildFile.))))
TrackerDTCTests_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerDTC/test/BuildFile
TrackerDTCTests_LOC_USE := self  L1Trigger/TrackerDTC
TrackerDTCTests_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackerDTCTests,TrackerDTCTests,$(SCRAMSTORENAME_LIB),src/L1Trigger/TrackerDTC/test))
TrackerDTCTests_PACKAGE := self/src/L1Trigger/TrackerDTC/test
ALL_PRODS += TrackerDTCTests
TrackerDTCTests_INIT_FUNC        += $$(eval $$(call Library,TrackerDTCTests,src/L1Trigger/TrackerDTC/test,src_L1Trigger_TrackerDTC_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackerDTCTests_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackerDTCTests,src/L1Trigger/TrackerDTC/test))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerDTC_test
src_L1Trigger_TrackerDTC_test_parent := L1Trigger/TrackerDTC
src_L1Trigger_TrackerDTC_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerDTC_test,src/L1Trigger/TrackerDTC/test,TEST))
ALL_PACKAGES += L1Trigger/TrackerTFP
subdirs_src_L1Trigger_TrackerTFP := src_L1Trigger_TrackerTFP_interface src_L1Trigger_TrackerTFP_plugins src_L1Trigger_TrackerTFP_python src_L1Trigger_TrackerTFP_src src_L1Trigger_TrackerTFP_test
ifeq ($(strip $(PyL1TriggerTrackerTFP)),)
PyL1TriggerTrackerTFP := self/src/L1Trigger/TrackerTFP/python
src_L1Trigger_TrackerTFP_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Trigger/TrackerTFP/python)
PyL1TriggerTrackerTFP_files := $(patsubst src/L1Trigger/TrackerTFP/python/%,%,$(wildcard $(foreach dir,src/L1Trigger/TrackerTFP/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1TriggerTrackerTFP_LOC_USE := self  
PyL1TriggerTrackerTFP_PACKAGE := self/src/L1Trigger/TrackerTFP/python
ALL_PRODS += PyL1TriggerTrackerTFP
PyL1TriggerTrackerTFP_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1TriggerTrackerTFP,src/L1Trigger/TrackerTFP/python,src_L1Trigger_TrackerTFP_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyL1TriggerTrackerTFP,src/L1Trigger/TrackerTFP/python))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerTFP_python
src_L1Trigger_TrackerTFP_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerTFP_python,src/L1Trigger/TrackerTFP/python,PYTHON))
ifeq ($(strip $(TrackerTFPTests)),)
TrackerTFPTests := self/src/L1Trigger/TrackerTFP/test
TrackerTFPTests_files := $(patsubst src/L1Trigger/TrackerTFP/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/L1Trigger/TrackerTFP/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/L1Trigger/TrackerTFP/test/$(file). Please fix src/L1Trigger/TrackerTFP/test/BuildFile.))))
TrackerTFPTests_BuildFile    := $(WORKINGDIR)/cache/bf/src/L1Trigger/TrackerTFP/test/BuildFile
TrackerTFPTests_LOC_USE := self  L1Trigger/TrackerTFP
TrackerTFPTests_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TrackerTFPTests,TrackerTFPTests,$(SCRAMSTORENAME_LIB),src/L1Trigger/TrackerTFP/test))
TrackerTFPTests_PACKAGE := self/src/L1Trigger/TrackerTFP/test
ALL_PRODS += TrackerTFPTests
TrackerTFPTests_INIT_FUNC        += $$(eval $$(call Library,TrackerTFPTests,src/L1Trigger/TrackerTFP/test,src_L1Trigger_TrackerTFP_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
TrackerTFPTests_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,TrackerTFPTests,src/L1Trigger/TrackerTFP/test))
endif
ALL_COMMONRULES += src_L1Trigger_TrackerTFP_test
src_L1Trigger_TrackerTFP_test_parent := L1Trigger/TrackerTFP
src_L1Trigger_TrackerTFP_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Trigger_TrackerTFP_test,src/L1Trigger/TrackerTFP/test,TEST))
ALL_SUBSYSTEMS+=SimTracker
subdirs_src_SimTracker = src_SimTracker_TrackTriggerAssociation
ALL_PACKAGES += SimTracker/TrackTriggerAssociation
subdirs_src_SimTracker_TrackTriggerAssociation := src_SimTracker_TrackTriggerAssociation_doc src_SimTracker_TrackTriggerAssociation_interface src_SimTracker_TrackTriggerAssociation_plugins src_SimTracker_TrackTriggerAssociation_python src_SimTracker_TrackTriggerAssociation_src
ifeq ($(strip $(PySimTrackerTrackTriggerAssociation)),)
PySimTrackerTrackTriggerAssociation := self/src/SimTracker/TrackTriggerAssociation/python
src_SimTracker_TrackTriggerAssociation_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimTracker/TrackTriggerAssociation/python)
PySimTrackerTrackTriggerAssociation_files := $(patsubst src/SimTracker/TrackTriggerAssociation/python/%,%,$(wildcard $(foreach dir,src/SimTracker/TrackTriggerAssociation/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimTrackerTrackTriggerAssociation_LOC_USE := self  
PySimTrackerTrackTriggerAssociation_PACKAGE := self/src/SimTracker/TrackTriggerAssociation/python
ALL_PRODS += PySimTrackerTrackTriggerAssociation
PySimTrackerTrackTriggerAssociation_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimTrackerTrackTriggerAssociation,src/SimTracker/TrackTriggerAssociation/python,src_SimTracker_TrackTriggerAssociation_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimTrackerTrackTriggerAssociation,src/SimTracker/TrackTriggerAssociation/python))
endif
ALL_COMMONRULES += src_SimTracker_TrackTriggerAssociation_python
src_SimTracker_TrackTriggerAssociation_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimTracker_TrackTriggerAssociation_python,src/SimTracker/TrackTriggerAssociation/python,PYTHON))
