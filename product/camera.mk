# Snap
PRODUCT_PACKAGES += \
    Snap

# Camera
PRODUCT_COPY_FILES += \
    device/doogee/f7/camera/camerasize.xml:system/etc/camerasize.xml \
    device/doogee/f7/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
