# Inline kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/lge/bullhead
TARGET_KERNEL_CONFIG := omni_bullhead_defconfig

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Use device's audio_effects.conf
TARGET_USE_DEVICE_AUDIO_EFFECTS_CONF := true

# Ignore vendor audio_effects.conf
TARGET_IGNORE_VENDOR_AUDIO_EFFECTS_CONF := true

# Enable vendor image symlink
BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# Keymaster - Wait for qseecom to load
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_RECOVERY_QCOM_RTC_FIX := true
