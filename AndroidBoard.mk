KERNEL_DEFCONFIG := rk30_chirimen_defconfig

-include kernel/AndroidKernel.mk

$(INSTALLED_KERNEL_TARGET): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

-include u-boot/AndroidBootloader.mk
