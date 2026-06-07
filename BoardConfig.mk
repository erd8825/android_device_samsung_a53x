#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board configuration
include device/samsung/s5e8825-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a53x

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Security
VENDOR_SECURITY_PATCH := 2026-08-05
