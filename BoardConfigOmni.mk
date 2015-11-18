# Inline kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/lge/bullhead
TARGET_KERNEL_CONFIG := bullhead_defconfig

# Do not include DSPManager
TARGET_NO_DSPMANAGER := true

# Enable vendor image symlink
BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# Keymaster - Wait for qseecom to load
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
