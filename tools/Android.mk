LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := QAndroidLog
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/bin
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
ifeq ($(TARGET_ARCH),arm64)
LOCAL_SRC_FILES := arm64-v8a/$(LOCAL_MODULE)
else
LOCAL_SRC_FILES := armeabi-v7a/$(LOCAL_MODULE)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QFirehose
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/bin
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
ifeq ($(TARGET_ARCH),arm64)
LOCAL_SRC_FILES := arm64-v8a/$(LOCAL_MODULE)
else
LOCAL_SRC_FILES := armeabi-v7a/$(LOCAL_MODULE)
endif
include $(BUILD_PREBUILT)
