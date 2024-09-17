#
# Copyright (C) 2023-2024 The TeamWin Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX3461
PRODUCT_NAME := twrp_RMX3461
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 9 5g Speed Edition
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := RMX3461

# Default device path for tree
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure SDCard replacement functionality
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
