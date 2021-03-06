LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    rild.c

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    liblog \
    libril

# Temporary hack for broken vendor RILs.
LOCAL_WHOLE_STATIC_LIBRARIES := \
    librilutils

LOCAL_CFLAGS := -DRIL_SHLIB
LOCAL_CFLAGS += -Wall -Wextra -Werror

ifeq ($(SIM_COUNT), 2)
    LOCAL_CFLAGS += -DANDROID_MULTI_SIM
    LOCAL_CFLAGS += -DANDROID_SIM_COUNT_2
endif

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE:= rild-quectel
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := rild
PACKAGES.$(LOCAL_MODULE).OVERRIDES := rild
LOCAL_INIT_RC := rild.quectel.rc

include $(BUILD_EXECUTABLE)
