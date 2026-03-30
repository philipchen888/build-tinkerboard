export ARCH=arm64
export OUT=$(PWD)/out
export CROSS_COMPILE=/usr/local/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export BL31=$(PWD)/rkbin/bin/rk35/rk3568_bl31_v1.44.elf

u-boot: cleanuboot builduboot postbuilduboot

cleanuboot:
	\rm -f $(OUT)/idbloader.img
	\rm -f $(OUT)/trust.img
	\rm -f $(OUT)/uboot.img

builduboot:
	\rm -rf out; mkdir out;
	cd u-boot; \
	make clean; \
	make ARCH=arm64 tinker_board_3_defconfig; \
	make all

postbuilduboot:
	cd u-boot; \
	../rkbin/tools/loaderimage --pack --uboot ./u-boot-dtb.bin uboot.img 0x200000 --size 2048 1; \
	./tools/mkimage -n rk3568 -T rksd -d ../rkbin/bin/rk35/rk3566_ddr_1056MHz_v1.23.bin idbloader.img; \
	cat ../rkbin/bin/rk35/rk356x_spl_v1.14.bin >> idbloader.img; \
	cp idbloader.img ${OUT}/; \
	../rkbin/tools/trust_merger --size 1024 2 ../trust.ini; \
	cp uboot.img ${OUT}/; \
	cp trust.img ${OUT}/; \
	../firmwareMerger -P ../spi.ini ${OUT}; \
	mv ${OUT}/Firmware.img ${OUT}/uboot-trust-spi.img
