CM_DEVICE := PSP3504DUO
PRODUCT_RELEASE_NAME := PSP3504DUO
TARGET_OTA_ASSERT_DEVICE := PSP3504DUO

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/prestigio/psp3504duo/psp3504duo.mk)
$(call inherit-product-if-exists, vendor/prestigio/psp3504duo/psp3504-vendor.mk)

PRODUCT_NAME := cm_psp3504duo
PRODUCT_DEVICE := psp3504duo
PRODUCT_BRAND := Prestigio
PRODUCT_MODEL := psp3504duo
PRODUCT_MANUFACTURER := Prestigio

PRODUCT_GMS_CLIENTID_BASE := android-mediatek
