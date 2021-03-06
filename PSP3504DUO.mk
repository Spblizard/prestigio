$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/Prestigio/PSP3504DUO

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6582

PRODUCT_PACKAGES += \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.mt6582

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

#PRODUCT_PROPERTY_OVERRIDES += \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.release=A3557_DA35571_PRESTIGIO-PSP3504_L111 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.gemini_support=true \
	mediatek.wlan.chip=CONSYS_MT6582 \
	mediatek.wlan.module.postfix=_consys_mt6582 \
	ril.radiooff.poweroffMD=0 \
	ro.mediatek.version.branch=L0.MP2 \
	ro.mediatek.version.sdk=4 \
	ro.setupwizard.mode=OPTIONAL \
	ro.com.google.gmsversion=5.0.2_r3 \
	ro.com.google.clientidbase=android-prestigio \
	ro.com.google.clientidbase.ms=android-prestigio \
	ro.com.google.clientidbase.yt=android-prestigio \
	ro.com.google.clientidbase.am=android-prestigio \
	ro.com.google.clientidbase.gmm=android-prestigio \
	ro.mtk_gemini_support=1 \
	ro.mtk_audio_profiles=1 \
	ro.mtk_audenh_support=1 \
	ro.mtk_besloudness_support=1 \
	ro.mtk_gemini_enhancement=1 \
	ro.mtk_wapi_support=1 \
	ro.mtk_bt_support=1 \
	ro.mtk_wappush_support=1 \
	ro.mtk_agps_app=1 \
	ro.mtk_voice_ui_support=1 \
	ro.mtk_voice_unlock_support=1 \
	ro.mtk_matv_analog_support=1 \
	ro.mtk_wlan_support=1 \
	ro.mtk_ipo_support=1 \
	ro.mtk_gps_support=1 \
	ro.mtk_omacp_support=1 \
	ro.mtk_search_db_support=1 \
	ro.mtk_dialer_search_support=1 \
	ro.mtk_dhcpv6c_wifi=1 \
	ro.have_aacencode_feature=1 \
	ro.mtk_phone_voice_recording=1 \
	ro.mtk_fd_support=1 \
	ro.mtk_oma_drm_support=1 \
	ro.mtk_cta_drm_support=1 \
	ro.mtk_widevine_drm_support=1 \
	ro.mtk_eap_sim_aka=1 \
	ro.mtk_fm_recording_support=1 \
	ro.mtk_audio_ape_support=1 \
	ro.mtk_flv_playback_support=1 \
	ro.mtk_fd_force_rel_support=1 \
	ro.mtk_wmv_playback_support=1 \
	ro.mtk_send_rr_support=1 \
	ro.mtk_rat_wcdma_preferred=1 \
	ro.mtk_emmc_support=1 \
	ro.mtk_tetheringipv6_support=1 \
	ro.mtk_shared_sdcard=1 \
	ro.mtk_2sdcard_swap=1 \
	ro.mtk_enable_md1=1 \
	ro.mtk_flight_mode_power_off_md=1 \
	ro.mtk_wfd_support=1 \
	ro.mtk_wfd_sink_support=1 \
	ro.mtk_wfd_sink_uibc_support=1 \
	ro.mtk_sim_hot_swap=1 \
	ro.mtk_thumbnail_play_support=1 \
	ro.mtk_bip_scws=1 \
	ro.mtk_cmcc_ft_precheck_support=1 \
	ro.mtk_multisim_ringtone=1 \
	ro.mtk_perfservice_support=1 \
	ro.mtk_cta_set=1 \
	ro.mtk_mobile_management=1 \
	ro.mtk_antibricking_level=2 \
	ro.mtk_cam_mav_support=1 \
	ro.mtk_live_photo_support=1 \
	ro.mtk_motion_track_support=1 \
	ro.mtk_passpoint_r1_support=1 \
	ro.mtk_privacy_protection_lock=1 \
	ro.mtk_bg_power_saving_support=1 \
	ro.mtk_bg_power_saving_ui=1 \
	ro.lovelyfonts_support=1 \
	ro.have_aee_feature=1 \
	ro.sim_me_lock_mode=0 \
	ro.mtk_voice_extension_support=1 \
	wfd.dummy.enable=1 \
	qemu.hw.mainkeys=1 \ 
	ro.led_indicator_enabled=1 \
	ro.shutdown_anim_enabled=1 \
	sys.ipod_3rd_dur=5 \ 
	ro.mms_encryption_support=1 \
	ro.float_dialer_support=1 \
	ro.dewav_cts_support=1 \
	ro.factory_auto_reset=1 \
	ro.cast_screen_support=1 \
	persist.sys.dalvik.vm.lib.2=libart.so \
	dalvik.vm.isa.arm.features=div \
	net.bt.name=Android

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.zygote=zygote32 \
    persist.sys.usb.config=mtp

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_LOCALES := en_US ru_RU

PRODUCT_NAME := full_PSP3504DUO
PRODUCT_DEVICE := PSP3504DUO
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
