CM_DEVICE := PSP3504DUO
PRODUCT_RELEASE_NAME := PSP3504DUO
TARGET_OTA_ASSERT_DEVICE := PSP3504DUO

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/themes_common.mk)

$(call inherit-product, device/Prestigio/PSP3504DUO/full_PSP3504DUO.mk)

PRODUCT_MODEL := PSP3504DUO
PRODUCT_BRAND := Prestigio
PRODUCT_NAME := cm_PSP3504DUO
PRODUCT_DEVICE := PSP3504DUO
PRODUCT_MANUFACTURER := Prestigio
