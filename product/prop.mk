# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0 \
    camera.disable_zsl_mode=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=512m \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=64m \
    ro.dalvik.vm.native.bridge=0 \
    persist.service.acm.enable=0 \
    ro.config.low_ram=false \
    persist.sys.usb.config=mtp

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    security.perf_harden=0

PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.root=1 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.root_access=1 \
    ro.product.locale=tr-TR
