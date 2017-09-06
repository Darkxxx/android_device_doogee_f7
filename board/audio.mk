# MTK audio
BOARD_USES_MTK_AUDIO := true

PRODUCT_COPY_FILES += \
        device/doogee/f7/prebuilt/audio/lib/hw/audio.primary.mt6797.so:system/lib/hw/audio.primary.mt6797.so \
	device/doogee/f7/prebuilt/audio/lib64/hw/audio.primary.mt6797.so:system/lib64/hw/audio.primary.mt6797.so
