#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit products from the common tree
$(call inherit-product, device/samsung/s5e8825-common/products/phone/product.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a53x/a53x-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += mixer_paths.xml

# CAS
TARGET_REQUIRES_HIDL_CAS_HAL := false

# Display - Configuration
PRODUCT_PACKAGES += displayconfig.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice \
    WiFiOverlayDevice

# Properties
TARGET_VENDOR_PROP += device/samsung/a53x/configs/props/vendor.prop

# RIL
TARGET_HAS_RIL := true

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += device/samsung/a53x
