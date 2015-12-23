# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x608

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Electronic Image Stabilization
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.eis.enable=1

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# TWRP
PRODUCT_COPY_FILES += \
    device/lge/bullhead/twrp.fstab:recovery/root/etc/twrp.fstab

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:6.0.1/MMB29K/2419427:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MMB29K 2419427 release-keys" \
    BUILD_ID=MMB29K
