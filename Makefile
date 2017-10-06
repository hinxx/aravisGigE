#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG
DIRS := $(DIRS) configure
# NG3E: do not use vendor - aravis should be installed into /usr/local
#DIRS := $(DIRS) vendor
DIRS := $(DIRS) aravisGigEApp
#aravisGigEApp_DEPEND_DIRS += vendor
ifeq ($(BUILD_IOCS), YES)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocs))
iocs_DEPEND_DIRS += aravisGigEApp
endif
include $(TOP)/configure/RULES_TOP

# NG3E: do not touch iocs
#uninstall: uninstall_iocs
#uninstall_iocs:
#	$(MAKE) -C iocs uninstall
#.PHONY: uninstall uninstall_iocs
#
#realuninstall: realuninstall_iocs
#realuninstall_iocs:
#	$(MAKE) -C iocs realuninstall
#.PHONY: realuninstall realuninstall_iocs

uninstall:
.PHONY: uninstall

realuninstall:
.PHONY: realuninstall
