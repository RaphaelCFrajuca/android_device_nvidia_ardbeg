#
# Copyright (C) 2014 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include device/nvidia/shield-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_INFO_FILE := device/nvidia/ardbeg/board-info.txt

# Kernel
TARGET_KERNEL_SOURCE := kernel/nvidia/ardbeg
TARGET_KERNEL_CONFIG := tegra12_android_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 13099646976
BOARD_FLASH_BLOCK_SIZE := 4096

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/ardbeg/comms
# At least when debugging is enabled, we have the same crash as manta
BCM_BLUETOOTH_MANTA_BUG := true

# Graphics
USE_OPENGL_RENDERER := true
#BOARD_DISABLE_TRIPLE_BUFFERED_DISPLAY_SURFACES := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Per-application sizes for shader cache
MAX_EGL_CACHE_SIZE := 4194304
MAX_EGL_CACHE_ENTRY_SIZE := 262144

# Recovery
TARGET_RECOVERY_FSTAB := device/nvidia/ardbeg/initfiles/fstab.ardbeg

# RenderScript
OVERRIDE_RS_DRIVER := libnvRSDriver.so

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

BOARD_HARDWARE_CLASS := device/nvidia/ardbeg/lineagehw/

# SELinux
BOARD_SEPOLICY_DIRS += device/nvidia/ardbeg/sepolicy

# Vendor Init
#TARGET_INIT_VENDOR_LIB := libinit_shield libinit_tn8
#TARGET_LIBINIT_DEFINES_FILE := device/nvidia/ardbeg/init/init_tn8.cpp

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Forced shims
TARGET_LD_SHIM_LIBS := /system/vendor/bin/glgps_nvidiaTegra2android|/system/lib/libsensor.so:/system/lib/libcutils.so|/system/lib/libcutils_shim.so

# Zygote whitelist extra paths
ZYGOTE_WHITELIST_PATH_EXTRA := \"/dev/nvhost-ctrl\",

# Override common releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/nvidia/ardbeg/releasetools

# Build with TWRP support
WITH_TWRP := true

# powerhal
BOARD_USES_POWERHAL := true

# Using the NCT partition
TARGET_USE_NCT := true
# LBH related defines
# use LBH partition and resources in it
BOARD_HAVE_LBH_SUPPORT := true

# TWRP Support
ifeq ($(WITH_TWRP),true)
-include device/nvidia/ardbeg/twrp/twrp.mk
endif
