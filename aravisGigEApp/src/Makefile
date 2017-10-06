TOP=../..

include $(TOP)/configure/CONFIG

# -------------------------------
# Build an Diamond Support Module
# -------------------------------

# Build some little helper functions
#PROD_IOC += aravisTest
#aravisTest_SRCS_DEFAULT += aravisTest.c
#aravisTest_LIBS += $(EPICS_BASE_IOC_LIBS)

LIBRARY_IOC += aravisCamera

# The following are compiled and added to the support library
aravisCamera_SRCS += aravisCamera.cpp

DBD += aravisCameraSupport.dbd

# NG3E: works on Linux Mint (glib-2.0_DIR not needed)
#       aravis installed  /usr/local/
ENVEXPORTS += export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
USR_INCLUDES += $(shell pkg-config --cflags glib-2.0 aravis-0.4)
$(warning case 3)

USR_SYS_LIBS += glib-2.0
USR_SYS_LIBS += aravis-0.4

include $(ADCORE)/ADApp/commonLibraryMakefile

#=============================

include $(TOP)/configure/RULES
