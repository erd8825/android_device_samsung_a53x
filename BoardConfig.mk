#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board configuration
include device/samsung/s5e8825-common/BoardConfigCommon.mk

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += device/samsung/a53x/sepolicy/vendor

# Security
VENDOR_SECURITY_PATCH := 2026-08-05
