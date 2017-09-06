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
