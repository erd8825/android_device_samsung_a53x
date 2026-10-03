#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit the phone-specific configuration
$(call inherit-product, device/samsung/s5e8825-common/products/phone/product.mk)

# Inherit the device-specific vendor configuration
$(call inherit-product, vendor/samsung/a53x/a53x-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    WiFiOverlayDevice

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += device/samsung/a53x
