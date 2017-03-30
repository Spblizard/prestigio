$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/Prestigio/PSP3504DUO/PSP3504DUO.mk)
$(call inherit-product, device/Prestigio/PSP3504DUO/vendor_psp3504duo.mk)

PRODUCT_NAME := full_PSP3504DUO
PRODUCT_DEVICE := PSP3504DUO
PRODUCT_BRAND := Prestigio
PRODUCT_MODEL := PSP3504DUO
PRODUCT_MANUFACTURER := Prestigio
