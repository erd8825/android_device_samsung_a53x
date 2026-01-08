#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the device
$(call inherit-product, device/samsung/a53x/device.mk)

# Device identifiers
PRODUCT_DEVICE := a53x
PRODUCT_NAME := lineage_a53x
PRODUCT_MODEL := SM-A536B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a53xnaxx-user 16 BP2A.250605.031.A3 A536BXXSOGZH2 release-keys" \
    BuildFingerprint=samsung/a53xnaxx/essi:16/BP2A.250605.031.A3/A536BXXSOGZH2:user/release-keys \
    DeviceProduct=a53xnaxx \
    SystemName=a53xnaxx
