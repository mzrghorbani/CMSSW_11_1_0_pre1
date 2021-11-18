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
