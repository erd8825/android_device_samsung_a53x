#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a53x device
$(call inherit-product, device/samsung/a53x/device.mk)

# Device identifier, this must come after all inclusions
PRODUCT_DEVICE := a53x
PRODUCT_NAME := lineage_a53x
PRODUCT_MODEL := SM-A536B
