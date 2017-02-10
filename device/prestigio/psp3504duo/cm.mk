CM_DEVICE := psp3504duo
PRODUCT_RELEASE_NAME := psp3504duo
TARGET_OTA_ASSERT_DEVICE := psp3504duo

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/prestigio/psp3504duo/psp3504duo.mk)
$(call inherit-product-if-exists, vendor/prestigio/psp3504duo/psp3504-vendor.mk)
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280


PRODUCT_NAME := cm_psp3504duo
PRODUCT_DEVICE := psp3504duo
PRODUCT_BRAND := Prestigio
PRODUCT_MODEL := psp3504duo
PRODUCT_MANUFACTURER := Prestigio

PRODUCT_GMS_CLIENTID_BASE := android-mediatek
