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
