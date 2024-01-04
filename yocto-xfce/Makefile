apply_patches:
	cd poky/build; \
	\rm -rf ../meta-rockchip/recipes-multimedia/rockchip-rkaiq; \
	cp -rf ../../patches/resize-helper ../meta-rockchip/recipes-bsp/; \
	\rm -f ../meta-rockchip/recipes-kernel/linux/*.bb; \
	cp ../../patches/xfce-desktop-image.bb ../meta/recipes-graphics/images/; \
	rm -f ../meta-rockchip/recipes-kernel/cypress-backports/brcmfmac.bb; \
	\rm -rf ../meta-rockchip/recipes-graphics/; \
	cp -r ../../patches/recipes-graphics ../meta-rockchip/; \
	cp ../../patches/tinker-rk3288.conf ../meta-rockchip/conf/machine/; \
	cp ../../patches/tinker-img.bbclass ../meta-rockchip/classes/; \
	cp ../../patches/tcmode-default.inc ../meta/conf/distro/include/; \
	cp ../../patches/bblayers.conf ./conf/; \
	cp ../../patches/local.conf ./conf/
