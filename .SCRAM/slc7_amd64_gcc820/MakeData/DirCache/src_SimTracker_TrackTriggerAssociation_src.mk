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
