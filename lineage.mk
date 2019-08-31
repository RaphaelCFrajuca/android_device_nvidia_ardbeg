# Inherit device configuration for shieldtablet.
$(call inherit-product, device/nvidia/ardbeg/full_ardbeg.mk)

# Inherit some common lineage stuff.
ifeq ($(ALTERNATE_BUILD),true)
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

PRODUCT_NAME := lineage_ardbeg
PRODUCT_DEVICE := ardbeg
