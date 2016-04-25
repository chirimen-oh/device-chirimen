$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/chirimen/BoardConfig.mk
$(call inherit-product, device/rockchip/rksdk/device.mk)
PRODUCT_BRAND := CHIRIMEN
PRODUCT_DEVICE := CHIRIMEN
PRODUCT_NAME := CHIRIMEN
PRODUCT_MANUFACTURER := CHIRIMEN Open Hardware
PRODUCT_MODEL := CHIRIMEN

# Get the long list of APNs
PRODUCT_COPY_FILES += device/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += device/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.version = 1.0.0 \
    ro.rk.small_screen = true \
    ro.product.ota.host = www.rockchip.com:2300

PRODUCT_PACKAGES += \
    i2cdetect \
    i2cdump \
    i2cget \
    i2cset
