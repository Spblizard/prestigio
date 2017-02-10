$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/prestigio/psp3504duo

PRODUCT_CHARACTERISTICS := default

PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	Torch
PRODUCT_PACKAGES += \
	libxlog
PRODUCT_PACKAGES += \
	lights.mt6582

#Audio
PRODUCT_PACKAGES += \
	audio.primary.mt6582 \
	audio.a2dp.default \
	audio.r_submix.default \
	audio.usb.default \
	audio_policy.default 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

#Camera
PRODUCT_PACKAGE += \
	Snap

#Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor

#GSM
PRODUCT_PACKAGES += \
	gsm0710muxd

#Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6582:root/fstab.mt6582 \
    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/init.mt6582.rc:root/init.mt6582.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/init.ssd_nomuser.rc:root/init.ssd_nomuser.rc \
    $(LOCAL_PATH)/rootdir/init.xlog.rc:root/init.xlog.rc \
    $(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/rootdir/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    $(LOCAL_PATH)/rootdir/init.fuse.rc:root/init.fuse.rc \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/init.charging.rc:root/init.charging.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/sbin/busybox:root/sbin/busybox 
PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

#Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	$(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	$(LOCAL_PATH)/configs/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/permissions/media_codecs.xml \
	$(LOCAL_PATH)/configs/platform.xml:system/etc/permissions/platform.xml \
	$(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	$(LOCAL_PATH)/configs/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	$(LOCAL_PATH)/configs/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
	$(LOCAL_PATH)/configs/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

#Keylayout overrides
PRODUCT_COPY_FILES_OVERRIDES += \
	system/usr/keylayout/Generic.kl


PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

#Wifi
PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
	$(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
	$(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

#GPS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
#USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory#USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory#USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory#USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml 

#USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES  += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    ro.debuggable=1 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.zygote=zygote32

#telephony
PRODUCT_PACKAGES += \
CMSettingsProvider
# Set default player to AwesomePlayer
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.media.use-awesome=true


$(call inherit-product, build/target/product/full.mk)

# Remove unwanted packages
PRODUCT_PACKAGES_OVERRIDES += \
    audio.primary.goldfish \
    camera.goldfish.jpeg \
    camera.goldfish \
    fingerprint.goldfish \
    fingerprint.ranchu \
    gps.goldfish \
    lights.goldfish \
    power.goldfish \
    sensors.goldfish \
    sensors.ranchu \
    vibrator.goldfish

# Remove unwanted files
PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/fstab.ranchu \
    root/init.goldfish.rc \
    root/init.ranchu.rc \
    root/ueventd.goldfish.rc \
    root/ueventd.ranchu.rc \
    recovery/root/fstab.goldfish \
    recovery/root/fstab.ranchu \
    recovery/root/ueventd.goldfish.rc \
    recovery/root/ueventd.ranchu.rc

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_LOCALES := en_US ru_RU
PRODUCT_NAME := full_psp3504duo
PRODUCT_DEVICE := psp3504duo
