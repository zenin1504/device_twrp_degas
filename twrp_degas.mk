# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from degas device
$(call inherit-product, device/xiaomi/degas/device.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

PRODUCT_DEVICE := degas
PRODUCT_NAME := twrp_degas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 14T
PRODUCT_PLATFORM := mt6897
PRODUCT_MANUFACTURER := xiaomi

