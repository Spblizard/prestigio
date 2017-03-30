# Platform
TARGET_BOARD_PLATFORM := mt6582 
TARGET_BOARD_PLATFORM_GPU := mali-400
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := MediaTek

# Architecture
ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_TLS_REGISTER :=
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_LDPRELOAD := /system/lib/libxlog.so

BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_NO_BOOTLOADER := false
TARGET_BOOTLOADER_BOARD_NAME := mt6582

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100
TARGET_NO_KERNEL := true
#USES_UNCOMPRESSED_KERNEL :=
#TARGET_KERNEL_SOURCE :=
#TARGET_KERNEL_CONFIG :=

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Partitions
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p7
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p6
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw


BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2044723200
BOARD_CACHEIMAGE_PARTITION_SIZE := 3355

TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

TARGET_PREBUILT_KERNEL := device/Prestigio/PSP3504DUO/zImage

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWAR

# Hardware Rendering
BOARD_EGL_CFG := device/Prestigio/PSP3504DUO/egl.cfg
TARGET_GPU_PP_CORE := 2
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
BOARD_EGL_WORKAROUND_BUG_10194508 := true

TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/Prestigio/PSP3504DUO/bluetooth

# Wi-Fi
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
#WIFI_DRIVER_FW_PATH_PARAM :="/dev/wmtWifi"
#WIFI_DRIVER_FW_PATH_STA := STA
#WIFI_DRIVER_FW_PATH_AP := AP
#WIFI_DRIVER_FW_PATH_P2P := P2P


# Recovery
#BOARD_HAS_LARGE_FILESYSTEM :=
#BOARD_SUPPRESS_EMMC_WIPE :=
#BOARD_HAS_NO_MISC_PARTITION :=
#BOARD_HAS_NO_REAL_SDCARD :=
#BOARD_HAS_NO_SELECT_BUTTON :=
#TARGET_RECOVERY_PIXEL_FORMAT :=
#DEVICE_RESOLUTION :=
#HAVE_SELINUX :=
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
#TARGET_RECOVERY_FSTAB :=

# Audio configs
#BOARD_USES_GENERIC_AUDIO :=

# Telephony
#BOARD_USE_VETH :=
#BOARD_SPRD_RIL :=
#USE_BOOT_AT_DIAG :=

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Other
DISABLE_DEXPREOPT := true
WITH_DEXPREOPT := false
#DONT_DEXPREOPT_PREBUILTS :=

# selinux
BOARD_SEPOLICY_DIRS := \
	device/Prestigio/PSP3504DUO/sepolicy
BOARD_SEPOLICY_UNION := \
	device.te \
	app.te \
	netd.te \
	system.te \
	file_contexts

# Don't generate block based zips
#BLOCK_BASED_OTA :=

#USE_CAMERA_STUB :=
#BOARD_USE_LEGACY_TOUCHSCREEN :=
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# CMHW
#BOARD_HARDWARE_CLASS :=