#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit products from the common tree
$(call inherit-product, device/samsung/s5e8825-common/products/aod/product.mk)
$(call inherit-product, device/samsung/s5e8825-common/products/phone/product.mk)
$(call inherit-product, device/samsung/s5e8825-common/products/sec_nfc/product.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a53x/a53x-vendor.mk)

DEVICE_PATH := device/samsung/a53x

# Audio - Configuration
PRODUCT_PACKAGES += mixer_paths.xml

# CAS
TARGET_REQUIRES_HIDL_CAS_HAL := false

# Display - Configuration
PRODUCT_PACKAGES += displayconfig.xml

# Init
PRODUCT_PACKAGES += init.a53x.rc

# NFC - eSE
PRODUCT_PACKAGES += android.hardware.secure_element-service.thales-st33

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice \
    WiFiOverlayDevice

# Permissions
PRODUCT_PACKAGES += \
    android.hardware.nfc.ese.prebuilt.xml \
    android.hardware.se.omapi.ese.prebuilt.xml

# RIL
TARGET_HAS_RIL := true

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
