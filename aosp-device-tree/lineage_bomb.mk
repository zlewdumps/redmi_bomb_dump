#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bomb device
$(call inherit-product, device/xiaomi/bomb/device.mk)

PRODUCT_DEVICE := bomb
PRODUCT_NAME := lineage_bomb
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2004J7BC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bomb-user 12 SP1A.210812.016 V13.0.7.0.SJLCNXM release-keys"

BUILD_FINGERPRINT := Redmi/bomb/bomb:12/SP1A.210812.016/V13.0.7.0.SJLCNXM:user/release-keys
