#
# Copyright (C) 2017-2021 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/santoni

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

BOARD_USES_ADRENO := true

TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 loop.max_part=7
ifeq ($(TARGET_KERNEL_VERSION), 4.9)
    BOARD_KERNEL_CMDLINE := androidboot.usbconfigfs=true
endif
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := santoni_treble_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8937
TARGET_KERNEL_VERSION := 4.9
TARGET_KERNEL_CLANG_COMPILE := true

# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
RELAX_USES_LIBRARY_CHECK := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/configs/bluetooth

# Camera
TARGET_NEEDS_RAW10_BUFFER_FIX := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true
USE_DISPLAY_SERVICE := true

# Charger
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO
TARGET_INCLUDE_PIXEL_CHARGER := true

# Display
TARGET_DISPLAY_USE_SMOOTH_MOTION := true
TARGET_SCREEN_DENSITY := 300
BOARD_USES_ADRENO := true
TARGET_USES_ION := true
TARGET_USES_HWC2 := true
TARGET_USES_QTI_MAPPER_2_0 := true
TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true
TARGET_USES_GRALLOC4 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# Filesystem
TARGET_EXFAT_DRIVER := sdfat
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /vendor/bt_firmware:/bt_firmware

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/configs/config.fs

# HALs
QCOM_SOONG_NAMESPACE := $(DEVICE_PATH)/qcom-caf
DEVICE_SPECIFIC_AUDIO_PATH := $(DEVICE_PATH)/qcom-caf/audio
DEVICE_SPECIFIC_DISPLAY_PATH := $(DEVICE_PATH)/qcom-caf/display
DEVICE_SPECIFIC_MEDIA_PATH := $(DEVICE_PATH)/qcom-caf/media

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifests/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifests/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/manifests/compatibility_matrix.xml
ifeq ($(PRODUCT_NAME), lineage_santoni)
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifests/manifest-lineage.xml
endif

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_santoni
TARGET_RECOVERY_DEVICE_MODULES := libinit_santoni

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Malloc
MALLOC_SVELTE_FOR_LIBC32 := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25765043200 # 25765059584 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BLOCK_BASED_OTA := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
#ifeq ($(PRODUCT_NAME), lineage_santoni)
#BOARD_POWER_CUSTOM_BOARD_LIB := libpower_8937
#endif
TARGET_USES_INTERACTION_BOOST := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_USES_OLD_MNC_FORMAT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom

# SELinux
include device/qcom/sepolicy-legacy-um/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
ifeq ($(PRODUCT_NAME), lineage_santoni)
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-lineage/vendor
endif

# Treble
BOARD_VNDK_VERSION := current
ENABLE_VENDOR_IMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 528482304
TARGET_COPY_OUT_VENDOR := vendor
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2021-07-05

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
HOSTAPD_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

# Inherit from the proprietary version
-include vendor/xiaomi/santoni/BoardConfigVendor.mk
