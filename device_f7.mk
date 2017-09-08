#
# Copyright (C) 2017 The lineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from doogee f7 device
PRODUCT_MAKEFILES := \
    device/doogee/f7/device_f7.mk

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += device/doogee/f7/overlay

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/doogee/f7/f7-vendor.mk)

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Charger
PRODUCT_PACKAGES += \
    charger \
    cm_charger_res_images \
    charger_res_images

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libaudiopolicymanagerdefault \
    libtinycompress \
    libtinyxml

# Audio Param
PRODUCT_COPY_FILES += \
    device/doogee/f7/audio_param/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml \
    device/doogee/f7/audio_param/PlaybackACF_AudioParam.xml:system/etc/audio_param/PlaybackACF_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackACF_ParamUnitDesc.xml:system/etc/audio_param/PlaybackACF_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/PlaybackDRC_AudioParam.xml:system/etc/audio_param/PlaybackDRC_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackDRC_ParamUnitDesc.xml:system/etc/audio_param/PlaybackDRC_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/PlaybackHCF_AudioParam.xml:system/etc/audio_param/PlaybackHCF_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackHCF_ParamUnitDesc.xml:system/etc/audio_param/PlaybackHCF_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/PlaybackVolAna_AudioParam.xml:system/etc/audio_param/PlaybackVolAna_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackVolAna_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolAna_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/PlaybackVolDigi_AudioParam.xml:system/etc/audio_param/PlaybackVolDigi_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackVolDigi_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolDigi_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/PlaybackVolUI_AudioParam.xml:system/etc/audio_param/PlaybackVolUI_AudioParam.xml \
    device/doogee/f7/audio_param/PlaybackVolUI_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/Playback_AudioParam.xml:system/etc/audio_param/Playback_AudioParam.xml \
    device/doogee/f7/audio_param/Playback_ParamTreeView.xml:system/etc/audio_param/Playback_ParamTreeView.xml \
    device/doogee/f7/audio_param/Playback_ParamUnitDesc.xml:system/etc/audio_param/Playback_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/RecordDMNR_AudioParam.xml:system/etc/audio_param/RecordDMNR_AudioParam.xml \
    device/doogee/f7/audio_param/RecordDMNR_ParamUnitDesc.xml:system/etc/audio_param/RecordDMNR_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/RecordFIR_AudioParam.xml:system/etc/audio_param/RecordFIR_AudioParam.xml \
    device/doogee/f7/audio_param/RecordFIR_ParamUnitDesc.xml:system/etc/audio_param/RecordFIR_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/RecordUI_AudioParam.xml:system/etc/audio_param/RecordUI_AudioParam.xml \
    device/doogee/f7/audio_param/RecordUI_ParamUnitDesc.xml:system/etc/audio_param/RecordUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/RecordVolUI_AudioParam.xml:system/etc/audio_param/RecordVolUI_AudioParam.xml \
    device/doogee/f7/audio_param/RecordVolUI_ParamUnitDesc.xml:system/etc/audio_param/RecordVolUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/RecordVol_AudioParam.xml:system/etc/audio_param/RecordVol_AudioParam.xml \
    device/doogee/f7/audio_param/RecordVol_ParamUnitDesc.xml:system/etc/audio_param/RecordVol_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/Record_AudioParam.xml:system/etc/audio_param/Record_AudioParam.xml \
    device/doogee/f7/audio_param/Record_ParamTreeView.xml:system/etc/audio_param/Record_ParamTreeView.xml \
    device/doogee/f7/audio_param/Record_ParamUnitDesc.xml:system/etc/audio_param/Record_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechDMNR_AudioParam.xml:system/etc/audio_param/SpeechDMNR_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechDMNR_ParamUnitDesc.xml:system/etc/audio_param/SpeechDMNR_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechGeneral_AudioParam.xml:system/etc/audio_param/SpeechGeneral_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechGeneral_ParamUnitDesc.xml:system/etc/audio_param/SpeechGeneral_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechMagiClarity_AudioParam.xml:system/etc/audio_param/SpeechMagiClarity_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechMagiClarity_ParamUnitDesc.xml:system/etc/audio_param/SpeechMagiClarity_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechUI_AudioParam.xml:system/etc/audio_param/SpeechUI_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechUI_ParamUnitDesc.xml:system/etc/audio_param/SpeechUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechVolUI_AudioParam.xml:system/etc/audio_param/SpeechVolUI_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechVolUI_ParamUnitDesc.xml:system/etc/audio_param/SpeechVolUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/SpeechVol_AudioParam.xml:system/etc/audio_param/SpeechVol_AudioParam.xml \
    device/doogee/f7/audio_param/SpeechVol_ParamUnitDesc.xml:system/etc/audio_param/SpeechVol_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/Speech_AudioParam.xml:system/etc/audio_param/Speech_AudioParam.xml \
    device/doogee/f7/audio_param/Speech_ParamTreeView.xml:system/etc/audio_param/Speech_ParamTreeView.xml \
    device/doogee/f7/audio_param/Speech_ParamUnitDesc.xml:system/etc/audio_param/Speech_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIPDMNR_AudioParam.xml:system/etc/audio_param/VoIPDMNR_AudioParam.xml \
    device/doogee/f7/audio_param/VoIPDMNR_ParamUnitDesc.xml:system/etc/audio_param/VoIPDMNR_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIPGeneral_AudioParam.xml:system/etc/audio_param/VoIPGeneral_AudioParam.xml \
    device/doogee/f7/audio_param/VoIPGeneral_ParamUnitDesc.xml:system/etc/audio_param/VoIPGeneral_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIPUI_AudioParam.xml:system/etc/audio_param/VoIPUI_AudioParam.xml \
    device/doogee/f7/audio_param/VoIPUI_ParamUnitDesc.xml:system/etc/audio_param/VoIPUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIPVolUI_AudioParam.xml:system/etc/audio_param/VoIPVolUI_AudioParam.xml \
    device/doogee/f7/audio_param/VoIPVolUI_ParamUnitDesc.xml:system/etc/audio_param/VoIPVolUI_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIPVol_AudioParam.xml:system/etc/audio_param/VoIPVol_AudioParam.xml \
    device/doogee/f7/audio_param/VoIPVol_ParamUnitDesc.xml:system/etc/audio_param/VoIPVol_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VoIP_AudioParam.xml:system/etc/audio_param/VoIP_AudioParam.xml \
    device/doogee/f7/audio_param/VoIP_ParamTreeView.xml:system/etc/audio_param/VoIP_ParamTreeView.xml \
    device/doogee/f7/audio_param/VoIP_ParamUnitDesc.xml:system/etc/audio_param/VoIP_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/VolumeGainMap_AudioParam.xml:system/etc/audio_param/VolumeGainMap_AudioParam.xml \
    device/doogee/f7/audio_param/VolumeGainMap_ParamUnitDesc.xml:system/etc/audio_param/VolumeGainMap_ParamUnitDesc.xml \
    device/doogee/f7/audio_param/Volume_AudioParam.xml:system/etc/audio_param/Volume_AudioParam.xml \
    device/doogee/f7/audio_param/Volume_ParamUnitDesc.xml:system/etc/audio_param/Volume_ParamUnitDesc.xml \
    device/doogee/f7/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/doogee/f7/audio/audio_device.xml:system/etc/audio_device.xml \
    device/doogee/f7/audio/audio_em.xml:system/etc/audio_em.xml
    
# Bluetooth
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    device/doogee/f7/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    device/doogee/f7/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    device/doogee/f7/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    device/doogee/f7/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc

# Browser
PRODUCT_PACKAGES += \
    Jelly

# Snap
PRODUCT_PACKAGES += \
    Snap

# Camera
PRODUCT_COPY_FILES += \
    device/doogee/f7/camera/camerasize.xml:system/etc/camerasize.xml \
    device/doogee/f7/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

# Dhcpcd
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf


# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# FM Radio
PRODUCT_PACKAGES += \
    device/doogee/f7/configs/fmr/mt6631_fm_cust.cfg:system/etc/fmr/mt6631_fm_cust.cfg \
    device/doogee/f7/prebuilt/FM/lib/libfmcust.so:system/lib/libfmcust.so \
    device/doogee/f7/prebuilt/FM/lib64/libfmcust.so:system/lib64/libfmcust.so \
    device/doogee/f7/prebuilt/FM/lib/libmtkplayer.so:system/lib/libmtkplayer.so \
    device/doogee/f7/prebuilt/FM/lib64/libmtkplayer.so:system/lib64/libmtkplayer.so

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs

# GPS
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/slp_conf:system/etc/slp_conf \
    device/doogee/f7/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Hardware-specific features
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/doogee/f7/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
     device/doogee/f7/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
     device/doogee/f7/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    device/doogee/f7/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/doogee/f7/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/doogee/f7/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/doogee/f7/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    device/doogee/f7/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    device/doogee/f7/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg

# Ramdisk
PRODUCT_PACKAGES += \
    enableswap.sh \
    factory_init.project.rc \
    factory_init.rc \
    fstab.mt6797 \
    init.rc \
    init.aee.rc \
    init.modem.rc \
    init.mt6797.rc \
    init.mt6797.usb.rc \
    init.nvdata.rc \
    init.project.rc \
    init.recovery.mt6797.rc \
    init.xlog.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    ueventd.mt6797.rc

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=MT6797 \
    ro.telephony.ril.config=fakeiccid

# RIL Proprietary
PRODUCT_COPY_FILES += \
    device/doogee/f7/RIL/bin/gsm0710muxd:system/bin/gsm0710muxd \
    device/doogee/f7/RIL/bin/gsm0710muxdmd2:system/bin/gsm0710muxdmd2 \
    device/doogee/f7/RIL/bin/mtkrild:system/bin/mtkrild \
    device/doogee/f7/RIL/bin/mtkrildmd2:system/bin/mtkrildmd2 \
    device/doogee/f7/RIL/lib/libmal.so:system/lib/libmal.so \
    device/doogee/f7/RIL/lib/libmdfx.so:system/lib/libmdfx.so \
    device/doogee/f7/RIL/lib/librilmtk.so:system/lib/librilmtk.so \
    device/doogee/f7/RIL/lib/librilmtkmd2.so:system/lib/librilmtkmd2.so \
    device/doogee/f7/RIL/lib/mtk-ril.so:system/lib/mtk-ril.so \
    device/doogee/f7/RIL/lib/mtk-rilmd2.so:system/lib/mtk-rilmd2.so \
    device/doogee/f7/RIL/lib64/libmal.so:system/lib64/libmal.so \
    device/doogee/f7/RIL/lib64/libmdfx.so:system/lib64/libmdfx.so \
    device/doogee/f7/RIL/lib64/librilmtk.so:system/lib64/librilmtk.so \
    device/doogee/f7/RIL/lib64/librilmtkmd2.so:system/lib64/librilmtkmd2.so \
    device/doogee/f7/RIL/lib64/mtk-ril.so:system/lib64/mtk-ril.so \
    device/doogee/f7/RIL/lib64/mtk-rilmd2.so:system/lib64/mtk-rilmd2.so

# Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:system/etc/permissions/android.hardware.sensor.relative_humidity.xml

# Telecomm
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/ecc_list.xml:system/etc/ecc_list.xml \
    device/doogee/f7/configs/spn-conf.xml:system/etc/spn-conf.xml

# Thermal
PRODUCT_COPY_FILES += \
	device/doogee/f7/tp/etc/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
	device/doogee/f7/tp/etc/.tp/.thermal_policy_00:system/etc/.tp/.thermal_policy_00 \
	device/doogee/f7/tp/etc/.tp/.thermal_policy_01:system/etc/.tp/.thermal_policy_01 \
	device/doogee/f7/tp/etc/.tp/.thermal_policy_02:system/etc/.tp/.thermal_policy_02 \
	device/doogee/f7/tp/etc/.tp/.thermal_policy_03:system/etc/.tp/.thermal_policy_03 \
	device/doogee/f7/tp/etc/.tp/thermal.conf:system/etc/.tp/thermal.conf \
	device/doogee/f7/tp/etc/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
	device/doogee/f7/tp/bin/thermal:system/bin/thermal \
	device/doogee/f7/tp/bin/thermal_manager:system/bin/thermal_manager \
	device/doogee/f7/tp/bin/thermald:system/bin/thermald \
	device/doogee/f7/tp/bin/thermalloadalgod:system/bin/thermalloadalgod

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Dhcpv6
PRODUCT_COPY_FILES += \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6cPD.conf:system/etc/wide-dhcpv6/dhcp6cPD.conf \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6cPD.script:system/etc/wide-dhcpv6/dhcp6cPD.script \
    device/doogee/f7/configs/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    libwifi-hal-mt66xx \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    hostapd \
    hostapd_cli \
    wifi_hal \
    wpa_supplicant \
    wpa_supplicant.conf \
    device/doogee/f7/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/doogee/f7/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/doogee/f7/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Mtk audio
PRODUCT_COPY_FILES += \
     device/doogee/f7/prebuilt/audio/lib/hw/audio.primary.mt6797.so:system/lib/hw/audio.primary.mt6797.so \
     device/doogee/f7/prebuilt/audio/lib64/hw/audio.primary.mt6797.so:system/lib64/hw/audio.primary.mt6797.so
