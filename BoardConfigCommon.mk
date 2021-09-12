#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

WAYNE_PATH := device/xiaomi/wayne-common

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_MANIFEST_FILE += $(WAYNE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := wayne_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648

# Properties
TARGET_VENDOR_PROP += $(WAYNE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/xiaomi/wayne-common/BoardConfigVendor.mk
