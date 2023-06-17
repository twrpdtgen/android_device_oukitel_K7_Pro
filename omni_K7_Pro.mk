#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from K7_Pro device
$(call inherit-product, device/oukitel/K7_Pro/device.mk)

PRODUCT_DEVICE := K7_Pro
PRODUCT_NAME := omni_K7_Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := K7_Pro
PRODUCT_MANUFACTURER := oukitel

PRODUCT_GMS_CLIENTID_BASE := android-ragentek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_yk677_lwtg_64-user 9 PPR1.180610.011 20190730.163421 release-keys"

BUILD_FINGERPRINT := OUKITEL/K7_Pro_EEA/K7_Pro:9/PPR1.180610.011/20190726.202553:user/release-keys
