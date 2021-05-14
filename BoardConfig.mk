#
# Copyright (C) 2020 Projekt YuMi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a50dd

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Others 64-bit flags
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

ALLOW_MISSING_DEPENDENCIES := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos9610 androidboot.selinux=permissive
BOARD_NAME := SRPRL05B001RU
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)

# Prebuilt: Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image

# Prebuilt: DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := universal9610
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Assert
TARGET_OTA_ASSERT_DEVICE := a50,a50dd

# File systems: File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# File systems: Block Flash
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems: Out dir
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configs
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
RECOVERY_SDCARD_ON_DATA := true
TARGET_OTA_ASSERT_DEVICE := a50,a50dd
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true

#SHRP_Variables
BUILD_SHRP_REC := true
SHRP_PATH := device/samsung/$(SHRP_DEVICE_CODE)
SHRP_MAINTAINER := TenSeventy7
SHRP_DEVICE_CODE := a50dd
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 0
SHRP_REC := /dev/block/platform/13520000.ufs/by-name/recovery
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A_Only
SHRP_EXPRESS := true
SHRP_OFFICIAL := false
SHRP_DARK:= true
SHRP_ALT_REBOOT := true
SHRP_NOTCH := true
SHRP_STATUSBAR_RIGHT_PADDING := 48
SHRP_STATUSBAR_LEFT_PADDING := 48

# SHRP addons
SHRP_EXTERNAL_ADDON_PATH := $(DEVICE_PATH)/addons/
SHRP_SKIP_DEFAULT_ADDON_1 := true
SHRP_SKIP_DEFAULT_ADDON_2 := true
SHRP_SKIP_DEFAULT_ADDON_3 := true
SHRP_SKIP_DEFAULT_ADDON_4 := true

SHRP_EXTERNAL_ADDON_1_NAME := "Pass/PIN Reset"
SHRP_EXTERNAL_ADDON_1_INFO := "Fix PIN problem when flashing kernels with differing security patch levels."
SHRP_EXTERNAL_ADDON_1_FILENAME := "PassReset.zip"
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Fix PIN Problem"
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Successfuly fixed"
SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true

SHRP_EXTERNAL_ADDON_2_NAME := "Disable Samsung Services"
SHRP_EXTERNAL_ADDON_2_INFO := "Disable Samsung security services like Knox."
SHRP_EXTERNAL_ADDON_2_FILENAME := "multidisabler_samsung.zip"
SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Patch Services"
SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Successfuly patched"
SHRP_INC_IN_REC_EXTERNAL_ADDON_2 := true

SHRP_EXTERNAL_ADDON_3_NAME := "Remove Warning on Splash Screen"
SHRP_EXTERNAL_ADDON_3_INFO := "Removes the bootloader unlock warning on splash."
SHRP_EXTERNAL_ADDON_3_FILENAME := "RemoveSplashWarning.zip"
SHRP_EXTERNAL_ADDON_3_BTN_TEXT := "Remove Splash Screen Warning"
SHRP_EXTERNAL_ADDON_3_SUCCESSFUL_TEXT := "Successfuly removed"
SHRP_INC_IN_REC_EXTERNAL_ADDON_3 := true
