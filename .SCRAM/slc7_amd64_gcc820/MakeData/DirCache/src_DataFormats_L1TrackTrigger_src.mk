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
