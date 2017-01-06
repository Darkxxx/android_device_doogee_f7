# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/fmr/mt6631_fm_cust.cfg:system/etc/fmr/mt6631_fm_cust.cfg \
	$(LOCAL_PATH)/prebuilt/FM/lib/libfmcust.so:system/lib/libfmcust.so \
	$(LOCAL_PATH)/prebuilt/FM/lib64/libfmcust.so:system/lib64/libfmcust.so \
	$(LOCAL_PATH)/prebuilt/FM/lib/libmtkplayer.so:system/lib/libmtkplayer.so \
	$(LOCAL_PATH)/prebuilt/FM/lib64/libmtkplayer.so:system/lib64/libmtkplayer.so

