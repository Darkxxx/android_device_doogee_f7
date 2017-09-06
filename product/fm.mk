# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

PRODUCT_COPY_FILES += \
        device/doogee/f7/configs/fmr/mt6631_fm_cust.cfg:system/etc/fmr/mt6631_fm_cust.cfg \
	device/doogee/f7/prebuilt/FM/lib/libfmcust.so:system/lib/libfmcust.so \
	device/doogee/f7/prebuilt/FM/lib64/libfmcust.so:system/lib64/libfmcust.so \
	device/doogee/f7/prebuilt/FM/lib/libmtkplayer.so:system/lib/libmtkplayer.so \
	device/doogee/f7/prebuilt/FM/lib64/libmtkplayer.so:system/lib64/libmtkplayer.so

