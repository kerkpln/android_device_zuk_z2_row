LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
     $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
     $(call project-path-for,qcom-audio)/hal/msm8974 \
     hardware/libhardware/include

LOCAL_ADDITIONAL_DEPENDENCIES := INSTALLED_KERNEL_HEADERS
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libdl

LOCAL_CFLAGS := -Wall -Werror -Wno-unused-parameter

LOCAL_SRC_FILES := audio_amplifier.c

LOCAL_MODULE := audio_amplifier.msm8996
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
