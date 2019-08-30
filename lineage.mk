# NVIDIA Tegra5 "Ardbeg" development system
#
# Copyright (c) 2013 NVIDIA Corporation.  All rights reserved.
#
# AndroidProducts.mk is included before BoardConfig.mk, variable essential at
# start of build and used in here should always be intialized in this file

## All essential packages
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/nvidia/ardbeg/ardbeg.mk)

## NV_TN_SKU
NV_TN_SKU := ardbeg

## REFERENCE_DEVICE
REFERENCE_DEVICE := ardbeg

## Thse are default settings, it gets changed as per sku manifest properties
PRODUCT_NAME := lineage_ardbeg
PRODUCT_DEVICE := ardbeg
PRODUCT_MODEL := s192
PRODUCT_MANUFACTURER := jxd
PRODUCT_BRAND := jxd

#include vendor/google/products/gms.mk

## The base dtb file name used for this product
TARGET_KERNEL_DT_NAME := tegra124-ardbeg

PRODUCT_COPY_FILES += device/nvidia/ardbeg/3rdparty/broadcom/gps/bin/gpsconfig-ardbeg.xml:system/etc/gps/gpsconfig.xml \
                      frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
                      frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
