include vendor/bootleggers/config/BoardConfigKernel.mk

# QCOM HW crypto
ifeq ($(TARGET_HW_DISK_ENCRYPTION),true)
    TARGET_CRYPTFS_HW_PATH ?= vendor/qcom/opensource/cryptfs_hw
endif


include vendor/bootleggers/config/BoardConfigSoong.mk