LOCAL_PATH ;= $(call my-dir)
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif
file := $(INSTALLED_KERNEL_TARGET)
ALL PREBUILT += $(file)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
               $(transform-prebuilt-to-target)
LOCAL_PATH := partner/kyocera/M6000_Board
include $(CLEAR_VARS)
