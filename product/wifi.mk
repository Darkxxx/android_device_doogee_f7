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
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/doogee/f7/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/doogee/f7/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/doogee/f7/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml
