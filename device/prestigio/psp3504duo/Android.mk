LOCAL_PATH:=$(call my-dir)
ifeq ($(TARGET_DEVICE),psp3504duo)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
