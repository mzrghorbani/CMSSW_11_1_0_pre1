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
