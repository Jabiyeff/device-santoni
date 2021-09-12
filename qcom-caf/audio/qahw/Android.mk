ifeq ($(strip $(BOARD_SUPPORTS_QAHW)),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

libqahw-inc := $(LOCAL_PATH)/inc

LOCAL_USE_VNDK := true
LOCAL_MODULE := libqahwwrapper
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES   := $(libqahw-inc)
LOCAL_C_INCLUDES   += $(TARGET_OUT_HEADERS)/common/inc

LOCAL_HEADER_LIBRARIES := \
    libutils_headers \

LOCAL_SRC_FILES := \
    src/qahw.c \
    src/qahw_effect.c

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libhardware \
    libdl

LOCAL_CFLAGS += -Wall -Werror

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE    := false
LOCAL_VENDOR_MODULE     := true

include $(BUILD_SHARED_LIBRARY)

include $(BUILD_COPY_HEADERS)
endif
