

# NVIDIA Tegra5 "Ardbeg" development system
#
# Copyright (c) 2013-2014 NVIDIA Corporation.  All rights reserved.

## Common product locale
PRODUCT_LOCALES += en_US

## Common property overrides
PRODUCT_PROPERTY_OVERRIDES += ro.com.google.clientidbase=android-nvidia \
			      ro.product.locale.language=en \
			      ro.product.locale.region=US

## Common packages
#$(call inherit-product-if-exists, vendor/nvidia/tegra/secureos/nvsi/nvsi.mk)
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage3.mk)
#$(call inherit-product-if-exists, vendor/nvidia/tegra/core/nvidia-tegra-vendor.mk)
#$(call inherit-product-if-exists, vendor/nvidia/tegra/ardbeg/partition-data/factory-ramdisk/factory.mk)

include frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk
include $(LOCAL_PATH)/touchscreen/maxim/maxim.mk
#include packages/aliasapps/alias_apps.mk
#include packages/thirdpart/third_part_apps.mk

PRODUCT_LOCALES += mdpi hdpi xhdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/ueventd.ardbeg.rc:root/ueventd.ardbeg.rc \
  $(LOCAL_PATH)/ueventd.ardbeg.rc:root/ueventd.laguna.rc \
  $(LOCAL_PATH)/ueventd.ardbeg.rc:root/ueventd.norrin.rc \
  $(LOCAL_PATH)/ueventd.ardbeg.rc:root/ueventd.tn8.rc \
  $(LOCAL_PATH)/ueventd.ardbeg.rc:root/ueventd.ardbeg_sata.rc \
  $(LOCAL_PATH)/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
  $(LOCAL_PATH)/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
  $(LOCAL_PATH)/jxd_key.kl:system/usr/keylayout/jxd_key.kl \
  $(LOCAL_PATH)/Vendor_0955_Product_7210.kl:system/usr/keylayout/Vendor_0955_Product_7210.kl \
  $(LOCAL_PATH)/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
  $(LOCAL_PATH)/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
  $(LOCAL_PATH)/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc \
  $(LOCAL_PATH)/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
  $(LOCAL_PATH)/../common/gps_select.sh:system/bin/gps_select.sh \
  $(LOCAL_PATH)/../common/ussr_setup.sh:system/bin/ussr_setup.sh \
  $(LOCAL_PATH)/ussrd.conf:system/etc/ussrd.conf \
  $(LOCAL_PATH)/../common/input_cfboost_init.sh:system/bin/input_cfboost_init.sh \
  $(LOCAL_PATH)/../common/set_hwui_params.sh:system/bin/set_hwui_params.sh \
  $(LOCAL_PATH)/touch_fusion.idc:system/usr/idc/touch_fusion.idc \
  $(LOCAL_PATH)/../common/set_light_sensor_perm.sh:system/bin/set_light_sensor_perm.sh \
  $(LOCAL_PATH)/../common/comms/marvel_wpa.conf:/system/etc/firmware/marvel_wpa.conf \
  $(LOCAL_PATH)/../common/comms/marvel_p2p.conf:/system/etc/firmware/marvel_p2p.conf

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/../common/init_lbh.sh:system/bin/init_lbh.sh

ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
   $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf
else
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/media_profiles_noenhance.xml:system/etc/media_profiles.xml \
   $(LOCAL_PATH)/media_codecs_noenhance.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/audio_policy_noenhance.conf:system/etc/audio_policy.conf
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power.ardbeg.rc:system/etc/power.ardbeg.rc \
    $(LOCAL_PATH)/power.tn8.rc:system/etc/power.tn8.rc \
    $(LOCAL_PATH)/init.t124.rc:root/init.t124.rc \
    $(LOCAL_PATH)/init.t124_sata.rc:root/init.t124_sata.rc \
    $(LOCAL_PATH)/init.t124_emmc.rc:root/init.t124_emmc.rc \
    $(LOCAL_PATH)/init.ardbeg.rc:root/init.ardbeg.rc \
    $(LOCAL_PATH)/init.laguna.rc:root/init.laguna.rc \
    $(LOCAL_PATH)/init.norrin.rc:root/init.norrin.rc \
    $(LOCAL_PATH)/init.tn8.rc:root/init.tn8.rc \
    $(LOCAL_PATH)/init.ardbeg_sata.rc:root/init.ardbeg_sata.rc \
    $(LOCAL_PATH)/fstab.ardbeg:root/fstab.ardbeg \
    $(LOCAL_PATH)/fstab.tn8:root/fstab.tn8 \
    $(LOCAL_PATH)/fstab.laguna:root/fstab.laguna \
    $(LOCAL_PATH)/fstab.norrin:root/fstab.norrin \
    $(LOCAL_PATH)/fstab.ardbeg_sata:root/fstab.ardbeg_sata \
    $(LOCAL_PATH)/../common/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc

ifeq ($(NO_ROOT_DEVICE),1)
  PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init_no_root_device.rc:root/init.rc
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../common/cluster:system/bin/cluster \
    $(LOCAL_PATH)/../common/cluster_get.sh:system/bin/cluster_get.sh \
    $(LOCAL_PATH)/../common/cluster_set.sh:system/bin/cluster_set.sh \
    $(LOCAL_PATH)/../common/dcc:system/bin/dcc \
    $(LOCAL_PATH)/../common/hotplug:system/bin/hotplug \
    $(LOCAL_PATH)/../common/mount_debugfs.sh:system/bin/mount_debugfs.sh

PRODUCT_COPY_FILES += \
    device/nvidia/ardbeg/nvcms/device.cfg:system/lib/nvcms/device.cfg

PRODUCT_COPY_FILES += \
    device/nvidia/common/bdaddr:system/etc/bluetooth/bdaddr \
    device/nvidia/ardbeg/asound.conf:system/etc/asound.conf \
    device/nvidia/ardbeg/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/fw_bcm4330_abg.bin:system/vendor/firmware/bcm4330/fw_bcmdhd.bin \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/fw_bcm4330_apsta_bg.bin:system/vendor/firmware/bcm4330/fw_bcmdhd_apsta.bin \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/fw_bcm4329_abg.bin:system/vendor/firmware/bcm4329/fw_bcmdhd.bin \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/fw_bcm4329_apsta.bin:system/vendor/firmware/bcm4329/fw_bcmdhd_apsta.bin

PRODUCT_COPY_FILES += \
    device/nvidia/ardbeg/3rdparty/broadcom/gps/bin/bcm4752/glgps_nvidiaTegra2android:system/bin/glgps_nvidiaTegra2android \
    device/nvidia/ardbeg/3rdparty/broadcom/gps/bin/bcm4752/gpslogd_nvidiaTegra2android:system/bin/gpslogd \
    device/nvidia/ardbeg/3rdparty/broadcom/gps/bin/bcm4752/gps.tegra.so:system/lib/hw/gps.brcm.so

BCMBINARIES_PATH := device/nvidia/ardbeg/3rdparty/bcmbinaries
PRODUCT_COPY_FILES += \
    $(BCMBINARIES_PATH)/bcm4329/bluetooth/bcmpatchram.hcd:system/etc/firmware/bcm4329.hcd \
    $(BCMBINARIES_PATH)/bcm4330/bluetooth/BCM4330B1_002.001.003.0379.0390.hcd:system/etc/firmware/bcm4330.hcd \
    $(BCMBINARIES_PATH)/bcm43241/bluetooth/AB113_BCM43241B0_0012_Azurewave_AW-AH691_TEST.HCD:system/etc/firmware/bcm43241.hcd \
    $(BCMBINARIES_PATH)/bcm43241/wlan/sdio-ag-pno-p2p-proptxstatus-dmatxrc-rxov-pktfilter-keepalive-aoe-vsdb-wapi-wl11d-sr-srvsdb-opt1.bin:system/vendor/firmware/bcm43241/fw_bcmdhd.bin \
    $(BCMBINARIES_PATH)/bcm43241/wlan/sdio-ag-pno-p2p-proptxstatus-dmatxrc-rxov-pktfilter-keepalive-aoe-vsdb-wapi-wl11d-sr-srvsdb-opt1.bin:system/vendor/firmware/bcm43241/fw_bcmdhd_apsta.bin \
    $(BCMBINARIES_PATH)/bcm43241/wlan/bcm943241ipaagb_p100_hwoob.txt:system/etc/nvram_43241.txt \
    $(BCMBINARIES_PATH)/bcm43341/bluetooth/BCM43341A0_001.001.030.0015.0000_Generic_UART_37_4MHz_wlbga_iTR_Pluto_Evaluation_for_NVidia.hcd:system/etc/firmware/BCM43341A0_001.001.030.0015.0000.hcd \
    $(BCMBINARIES_PATH)/bcm43341/bluetooth/BCM43341B0_002.001.014.0008.0011.hcd:system/etc/firmware/BCM43341B0_002.001.014.0008.0011.hcd \
    $(BCMBINARIES_PATH)/bcm43341/wlan/sdio-ag-pno-pktfilter-keepalive-aoe-idsup-idauth-wme.bin:system/vendor/firmware/bcm43341/fw_bcmdhd.bin \
    $(BCMBINARIES_PATH)/bcm43341/wlan/sdio-ag-pno-p2p-proptxstatus-dmatxrc-rxov-pktfilter-keepalive-aoe-sr-wapi-wl11d.bin:system/vendor/firmware/bcm43341/fw_bcmdhd_a0.bin \
    $(BCMBINARIES_PATH)/bcm43341/wlan/bcm943341wbfgn_2_hwoob.txt:system/etc/nvram_rev2.txt \
    $(BCMBINARIES_PATH)/bcm43341/wlan/nvram_43341_rev3.txt:system/etc/nvram_rev3.txt \
    $(BCMBINARIES_PATH)/bcm43341/wlan/bcm943341wbfgn_4_hwoob.txt:system/etc/nvram_rev4.txt \
    $(BCMBINARIES_PATH)/bcm4335/bluetooth/BCM4335B0_002.001.006.0037.0046_ORC.hcd:system/etc/firmware/bcm4335.hcd \
    $(BCMBINARIES_PATH)/bcm4335/wlan/bcm94335wbfgn3_r04_hwoob.txt:system/etc/nvram_4335.txt \
    $(BCMBINARIES_PATH)/bcm4335/wlan/sdio-ag-pool-p2p-pno-pktfilter-keepalive-aoe-ccx-sr-vsdb-proptxstatus-lpc-wl11u-autoabn.bin:system/vendor/firmware/bcm4335/fw_bcmdhd.bin \
    $(BCMBINARIES_PATH)/bcm4350/wlan/bcm94350wlagbe_KA_hwoob.txt:system/etc/nvram_4350.txt \
    $(BCMBINARIES_PATH)/bcm4350/wlan/sdio-ag-p2p-pno-aoe-pktfilter-keepalive-sr-mchan-proptxstatus-ampduhostreorder-lpc-wl11u-txbf-pktctx-dmatxrc.bin:system/vendor/firmware/bcm4350/fw_bcmdhd.bin \
    $(BCMBINARIES_PATH)/bcm4354a1/wlan/nvram_4354.txt:system/etc/nvram_4354.txt \
    $(BCMBINARIES_PATH)/bcm4354a1/wlan/sdio-ag-p2p-pno-aoe-pktfilter-keepalive-sr-mchan-proptxstatus-ampduhostreorder-lpc-wl11u-txbf-pktctx-okc-tdls-ccx-ve-mfp-ltecxgpio.bin:system/vendor/firmware/bcm4354/fw_bcmdhd.bin \
    $(BCMBINARIES_PATH)/bcm4354/bluetooth/BCM4354_003.001.012.0163.0000_Nvidia_NV54_TEST_ONLY.hcd:system/etc/firmware/bcm4350.hcd \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/nvram_ap6335.txt:system/etc/nvram_ap6335.txt \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag.bin:system/vendor/firmware/bcm4339a0/fw_bcm4339a0_ag.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag_apsta.bin:system/vendor/firmware/bcm4339a0/fw_bcm4339a0_ag_apsta.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag_p2p.bin:system/vendor/firmware/bcm4339a0/fw_bcm4339a0_ag_p2p.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag.bin:system/vendor/firmware/bcm43241/fw_bcm4339a0_ag.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag_apsta.bin:system/vendor/firmware/bcm43241/fw_bcm4339a0_ag_apsta.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/wlan/fw_bcm4339a0_ag_p2p.bin:system/vendor/firmware/bcm43241/fw_bcm4339a0_ag_p2p.bin \
    $(BCMBINARIES_PATH)/bcm4339a0/bluetooth/bcm4339a0.hcd:system/etc/firmware/bcm4339a0.hcd

# Nvidia Miracast
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../common/miracast/com.nvidia.miracast.xml:system/etc/permissions/com.nvidia.miracast.xml

#enable Widevine drm
PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true
PRODUCT_PACKAGES += \
    com.google.widevine.software.drm.xml \
    com.google.widevine.software.drm \
    libdrmwvmplugin \
    libwvm \
    libdrmdecrypt \
    libWVStreamControlAPI_L$(BOARD_WIDEVINE_OEMCRYPTO_LEVEL) \
    libwvdrm_L$(BOARD_WIDEVINE_OEMCRYPTO_LEVEL)


#Marvell firmware package
PRODUCT_PACKAGES += sd8897_uapsta.bin \
    sd8797_uapsta.bin

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    audio.primary.tegra \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    libaudio-resampler \
    libaudiospdif \
    libtinyalsa \
    libtinycompress \
    tinycap \
    tinymix \
    tinyplay \
    xaplay \
    libstagefrighthw \
    enctune.conf \
    setup_fs \
    drmserver \
    libdrmframework_jni \
    overlaymon \
    e2fsck

#MTK GPS

PRODUCT_PACKAGES += \
    lbh_images

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# HDCP SRM Support
PRODUCT_PACKAGES += \
    hdcp1x.srm \
    hdcp2x.srm \
    hdcp2xtest.srm

# Camera
PRODUCT_PACKAGES += Snap
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/nvcamera.conf:system/etc/nvcamera.conf

PRODUCT_PACKAGES += \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/comms/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf


# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.tegra

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermalhal.tn8.xml:$(TARGET_COPY_OUT_VENDOR)/etc/thermalhal.tn8.xml

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Radio Interface
PRODUCT_PACKAGES += rild

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

# Shims
PRODUCT_PACKAGES += libs \
                    libcutils_shim \
                    libshim_zw

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Set up device overlays
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay-common

# Enable secure USB debugging in user release build
ifeq ($(TARGET_BUILD_TYPE),release)
ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1
endif
endif

# Include ShieldTech
ifeq ($(NV_ANDROID_FRAMEWORK_ENHANCEMENTS),TRUE)
SHIELDTECH_FEATURE_BLAKE := false
SHIELDTECH_FEATURE_KEYBOARD := false
SHIELDTECH_FEATURE_NVGALLERY := false
$(call inherit-product-if-exists, vendor/nvidia/shieldtech/common/shieldtech.mk)
endif

