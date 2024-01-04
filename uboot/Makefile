export ARCH=arm
export CROSS_COMPILE=/usr/local/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-

u-boot: builduboot postbuilduboot

clean:
	cd debian_u-boot; \
	make ARCH=arm clean

builduboot:
	cd debian_u-boot; \
	make ARCH=arm clean; \
	make ARCH=arm tinker-rk3288_defconfig; \
	make ARCH=arm all

postbuilduboot:
	cd debian_u-boot; \
	./tools/mkimage -n rk3288 -T rksd -d ./spl/u-boot-spl-dtb.bin u-boot.img; \
	cat ./u-boot.bin >> u-boot.img
