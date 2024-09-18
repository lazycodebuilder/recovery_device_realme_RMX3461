#
# Copyright (C) 2023-2024 The TeamWin Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

# Shipping API
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B
ENABLE_AB := true
ENABLE_VIRTUAL_AB := true

# A/B support
AB_OTA_UPDATER := true

# A/B updater updatable partitions list. Keep in sync with the partition list
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_boot \
    vendor_dlkm

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    android.hardware.fastboot@1.1-impl-mock.recovery \
    fastbootd

PRODUCT_PROPERTY_OVERRIDES += \
	ro.fastbootd.available=true

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service-qti

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/qcom-caf/bootctrl \
	vendor/qcom/opensource/usb/etc

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# oem otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/realmelocal \
    $(DEVICE_PATH)/security/realmespecial
