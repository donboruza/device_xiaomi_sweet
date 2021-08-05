#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sweet

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_DUP_SYSPROP := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Assert
TARGET_OTA_ASSERT_DEVICE := sweet,sweetin

# Audio
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Display
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_SCREEN_DENSITY := 440

# Graphics
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_sweet
TARGET_RECOVERY_DEVICE_MODULES := libinit_sweet

# Kernel
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1 androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_CMDLINE += kpti=off

#BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000 earlycon=msm_geni_serial,0x880000

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := clang-sdclang
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/$(TARGET_KERNEL_CLANG_VERSION)
TARGET_KERNEL_CONFIG := vendor/sweet_user_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/sweet
KERNEL_LD := LD=ld.lld
KERNEL_SUPPORTS_LLVM_TOOLS := true
TARGET_KERNEL_OPTIONAL_LD := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CROSS_COMPILE_PREFIX_ARM32 := TARGET_KERNEL_CROSS_COMPILE_PREFIX_ARM32 := arm-linux-androidkernel-
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    LLVM=1 \
    LLVM_IAS=1 \
    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument -Wno-reorder-init-list -Wno-implicit-fallthrough -Wno-c99-designator -Wno-implicit-int-float-conversion -Wno-int-in-bool-context -Wno-alloca -Wno-dangling-gsl -Wno-pointer-compare -Wno-final-dtor-non-final-class -Wno-incomplete-setjmp-declaration -Wno-sizeof-array-div -Wno-xor-used-as-pow -fsplit-lto-unit -Wno-c++17-extensions -flax-vector-conversions=all  -Wno-tautological-overlap-compare -Wno-range-loop-analysis -Wno-invalid-partial-specialization -Wno-deprecated-copy -Wno-misleading-indentation -Wno-zero-as-null-pointer-constant -Wno-deprecated-enum-enum-conversion -Wno-deprecated-anon-enum-enum-conversion -Wno-bool-operation -Wno-unused-comparison -Wno-string-compare -Wno-wrong-info -Wno-thread-safety-analysis -Wno-unsequenced -Wno-unknown-warning-option"

# Manifest
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(DEVICE_PATH)/manifests/device_framework_matrix.xml \
    $(DEVICE_PATH)/manifests/lineage_device_framework_matrix.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifests/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/manifests/compatibility_matrix.xml
ODM_MANIFEST_SKUS := nfc
ODM_MANIFEST_NFC_FILES := $(DEVICE_PATH)/manifests/manifest_nfc.xml

# Media
TARGET_DISABLED_UBWC := true

# Allow LZ4 compression
BOARD_RAMDISK_USE_LZ4 := true

# Partitions
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    odm \
    product \
    system \
    system_ext \
    vendor

BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9126801408 # ( BOARD_SUPER_PARTITION_SIZE - 4MB )
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114898743296

BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE := 30720000
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 838860800
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1258291200
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 838860800
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 30720000

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_METADATA_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := sm6150

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
TARGET_SEPOLICY_DIR := msmsteppe
-include device/qcom/sepolicy_vndr/SEPolicy.mk

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2022-07-01

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_VBMETA_SYSTEM := system system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/xiaomi/sweet/BoardConfigVendor.mk
