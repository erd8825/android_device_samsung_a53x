#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit products from the common tree
$(call inherit-product, device/samsung/s5e8825-common/products/aod/product.mk)
$(call inherit-product, device/samsung/s5e8825-common/products/phone/product.mk)
$(call inherit-product, device/samsung/s5e8825-common/products/sec_nfc/product.mk)
$(call inherit-product, device/samsung/s5e8825-common/products/unify/product.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a53x/a53x-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += mixer_paths.xml

# Audio - Effects - SoundBooster
$(call soong_config_set,samsungAudioVars,soundbooster_dsp_library,//vendor/samsung/a53x:lib_SoundBooster_ver1100)

# CAS
TARGET_REQUIRES_HIDL_CAS_HAL := false

# Display - Configuration
PRODUCT_PACKAGES += displayconfig.xml

# Fingerprint
$(call soong_config_set,samsungUdfpsVars,dim_layer_zorder,0xff)
$(call soong_config_set,samsungUdfpsVars,udfps_zorder,0x100)
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/samsung/fingerprint:libudfps_extension.samsung)

# Init
PRODUCT_PACKAGES += init.a53x.rc

# Installer
TARGET_ANDROID_INFO_EXTRA_FILE := device/samsung/a53x/configs/installer/android-info-extra.txt

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

# Properties
TARGET_VENDOR_PROP += device/samsung/a53x/configs/props/vendor.prop

# RIL
TARGET_HAS_RIL := true

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += device/samsung/a53x
