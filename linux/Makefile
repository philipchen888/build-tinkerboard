export OUT=$(PWD)/out
export BOOT=$(OUT)/boot.img
export ARCH=arm
export CROSS_COMPILE=/usr/local/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-

clean:
	cd linux; \
	sudo make mrproper

kernel: buildkernel postbuildkernel

buildkernel:
	cd linux; \
	sudo make mrproper; \
	make multi_v7_defconfig; \
	make all -j4; \
	sudo make ARCH=arm INSTALL_MOD_PATH=./tmp modules_install

postbuildkernel:
	cd linux; \
	\rm -f $(BOOT); \
	mkfs.vfat -n "boot" -S 512 -C ${BOOT} 102400; \
	mmd -i ${BOOT} ::/extlinux; \
	mcopy -i ${BOOT} -s ../rk3288.conf ::/extlinux/extlinux.conf; \
	mcopy -i ${BOOT} -s ../hw_intf.conf ::; \
	mcopy -i ${BOOT} -s ./arch/arm/boot/zImage ::; \
	mcopy -i ${BOOT} -s ./arch/arm/boot/dts/rockchip/rk3288-tinker.dtb ::
