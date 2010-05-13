
ifeq ($(BOARD_HAVE_VPU),true)

LOCAL_PATH := $(call my-dir)

vpu_etc_dir := $(TARGET_OUT)/etc/vpu
vpu_fw_dir := vpu_fw
vpu_fw_target := $(vpu_etc_dir)/$(vpu_fw_dir)

soc := $(shell echo "$(BOARD_SOC_TYPE)" | tr [A-Z] [a-z])
vpu_fw_file := vpu_fw_$(soc).bin

# Firmware
include $(CLEAR_VARS)
LOCAL_MODULE := $(vpu_fw_file)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(vpu_fw_target)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
