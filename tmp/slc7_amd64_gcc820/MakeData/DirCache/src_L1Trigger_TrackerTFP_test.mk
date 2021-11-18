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
