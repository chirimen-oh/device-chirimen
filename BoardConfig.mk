# config.mk
# 
# Product-specific compile-time definitions.
#

VENDOR_SOFTWARE_VERSION := RK3066_R-BOX_ANDROID4.4-SDK_V1.0.0_20140310
TARGET_BOARD_PLATFORM := rk3066
TARGET_BOARD_PLATFORM_GPU := mali400

#if board only 512M ddr, set true, esle false
BOARD_USE_LOW_MEM := false

# google apps
BUILD_WITH_GOOGLE_MARKET ?= false

# XXX
TARGET_PREBUILT_KERNEL := out/target/product/chirimen/obj/KERNEL/arch/arm/boot/Image

include device/rockchip/rksdk/BoardConfig.mk

