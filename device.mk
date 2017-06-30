# Copyright 2017 The Android Open Source Project
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


# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/PDesire/tetra/overlay

LOCAL_PATH := device/PDesire/tetra

# etc/permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
        frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# HALs
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/hals,system/lib)

# Proprietary etc/permissions
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/permissions/clockwork-system.xml:system/etc/permissions/clockwork-system.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/com.google.android.wearable.xml:system/etc/permissions/com.google.android.wearable.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/com.sonymobile.watch.xml:system/etc/permissions/com.sonymobile.watch.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/gps.xml:system/etc/permissions/gps.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml

# Proprietary etc/wifi
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
        $(LOCAL_PATH)/proprietary/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
        $(LOCAL_PATH)/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        $(LOCAL_PATH)/proprietary/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Proprietary etc
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
        $(LOCAL_PATH)/proprietary/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
        $(LOCAL_PATH)/proprietary/etc/gps/gps.conf:system/etc/gps/gps.conf \
        $(LOCAL_PATH)/proprietary/etc/asound.conf:system/etc/asound.conf \
        $(LOCAL_PATH)/proprietary/etc/debug_menu.json:system/etc/debug_menu.json \
        $(LOCAL_PATH)/proprietary/etc/install-recovery.sh:system/etc/install-recovery.sh \
        $(LOCAL_PATH)/proprietary/etc/resolv.conf:system/etc/resolv.conf \
        $(LOCAL_PATH)/proprietary/etc/sensors.conf:system/etc/sensors.conf \
        $(LOCAL_PATH)/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
        $(LOCAL_PATH)/proprietary/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
        $(LOCAL_PATH)/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml \
         $(LOCAL_PATH)/proprietary/etc/audio_policy.conf:system/etc/audio_policy.conf

# Proprietary system/fonts
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)//proprietary/fonts,system/fonts)

# Proprietary system/sony
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_01.png:system/sony/chargemon/data/charging_animation_01.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_02.png:system/sony/chargemon/data/charging_animation_02.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_03.png:system/sony/chargemon/data/charging_animation_03.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_04.png:system/sony/chargemon/data/charging_animation_04.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_05.png:system/sony/chargemon/data/charging_animation_05.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_06.png:system/sony/chargemon/data/charging_animation_06.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_07.png:system/sony/chargemon/data/charging_animation_07.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_01.png:system/sony/chargemon/data/non-charging_animation_01.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_02.png:system/sony/chargemon/data/non-charging_animation_02.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_03.png:system/sony/chargemon/data/non-charging_animation_03.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_04.png:system/sony/chargemon/data/non-charging_animation_04.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_05.png:system/sony/chargemon/data/non-charging_animation_05.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_06.png:system/sony/chargemon/data/non-charging_animation_06.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_07.png:system/sony/chargemon/data/non-charging_animation_07.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/0.png:system/sony/chargemon/data/watchface_0/0.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/1.png:system/sony/chargemon/data/watchface_0/1.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/2.png:system/sony/chargemon/data/watchface_0/2.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/3.png:system/sony/chargemon/data/watchface_0/3.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/4.png:system/sony/chargemon/data/watchface_0/4.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/5.png:system/sony/chargemon/data/watchface_0/5.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/6.png:system/sony/chargemon/data/watchface_0/6.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/7.png:system/sony/chargemon/data/watchface_0/7.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/8.png:system/sony/chargemon/data/watchface_0/8.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/9.png:system/sony/chargemon/data/watchface_0/9.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/colon.png:system/sony/chargemon/data/watchface_0/colon.png

# Proprietary system/usr
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/usr/idc/synaptics_dsx.idc:system/usr/idc/synaptics_dsx.idc \
        $(LOCAL_PATH)/proprietary/usr/keylayout/bcmpmu_on.kcm:system/usr/keylayout/bcmpmu_on.kcm \
        $(LOCAL_PATH)/proprietary/usr/keylayout/bcmpmu_on.kl:system/usr/keylayout/bcmpmu_on.kl \
        $(LOCAL_PATH)/proprietary/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

# Proprietary vendor
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/vendor/firmware/BCM43341B0_002.001.014.0122.0181.hcd:system/vendor/firmware/BCM43341B0_002.001.014.0122.0181.hcd \
        $(LOCAL_PATH)/proprietary/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin

# Proprietary system/bin
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/bin/chargemon:system/bin/chargemon \
        $(LOCAL_PATH)/proprietary/bin/find-device:system/bin/find-device \
        $(LOCAL_PATH)/proprietary/bin/install-recovery.sh:system/bin/install-recovery.sh \
        $(LOCAL_PATH)/proprietary/bin/key_sleep_vibrate_service:system/bin/key_sleep_vibrate_service \
        $(LOCAL_PATH)/proprietary/bin/T2tNdefWrite:system/bin/T2tNdefWrite \
        $(LOCAL_PATH)/proprietary/bin/taimport:system/bin/taimport
#        $(LOCAL_PATH)/proprietary/bin/setup_fs:system/bin/setup_fs \

# Proprietart system/xbin
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/xbin/misctatest:system/xbin/misctatest \
        $(LOCAL_PATH)/proprietary/xbin/tatest:system/xbin/tatest \
         $(LOCAL_PATH)/proprietary/xbin/memtrack:system/xbin/memtrack \
         $(LOCAL_PATH)/proprietary/bin/memtrack:system/bin/memtrack

# NFC Packages
PRODUCT_PACKAGES += \
        nfc_nci.bcm2079x.default \
        NfcNci \
        NfcSettings \
        Tag \
        com.android.nfc_extras

# NFC Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        $(LOCAL_PATH)/nfc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf
        
PRODUCT_COPY_FILES +=  device/google/clockwork/bootanimations/square_320/bootanimation.zip:system/media/bootanimation.zip

# BT address
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/etc/bluetooth_bdaddr

# Wi-Fi interface name
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Extra packages
PRODUCT_PACKAGES += \
        nullwebview \
        setup_fs 

# Ramdisk packages
PRODUCT_PACKAGES += \
        fstab.tetra \
        fstab.swap.tetra \
        init.tetra.rc \
        init.common.rc \
        init.tetra.usb.rc \
        init.tetra.debug.rc \
        init.common.debug.rc \
        init.common.usb.rc \
        init.debug.sonyextras.rc \
        init.recovery.tetra.rc \
        ueventd.tetra.rc \
        tad_static \
        wait4tad_static 

PRODUCT_PROPERTY_OVERRIDES += \
    PRODUCT_NAME=tetra 
    
    

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.adb.notify=0 \
    bluetooth.force_pm_timer=2000 \
    persist.sys.media.use-awesome=true \
    log.tag.AmbientService=DEBUG \
    ro.adb.secure=1

PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product-if-exists, device/google/clockwork/build/clockwork_google.mk)
