LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := stdioext

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

# missing stdio functions

LOCAL_SRC_FILES := \
  $(LOCAL_PATH)/src/open_memstream.c \
  $(LOCAL_PATH)/src/fopencookie.c \
  $(LOCAL_PATH)/src/fmemopen.c

LOCAL_CFLAGS += -O3

include $(BUILD_STATIC_LIBRARY)
