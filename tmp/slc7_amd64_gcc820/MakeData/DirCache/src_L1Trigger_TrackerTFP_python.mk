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
