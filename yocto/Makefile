apply_patches:
	cd poky/build; \
	cp -r ../../patches/recipes-graphics ../meta-radxa/; \
	cp -r ../../patches/images ../meta-radxa/recipes-core/; \
	cp -r ../../patches/packagegroups ../meta-radxa/recipes-core/; \
	cp ../../patches/tinker-rk3288.conf ../meta-radxa/conf/machine/; \
	cp ../../patches/tinker-img.bbclass ../meta-radxa/classes/; \
	cp ../../patches/tcmode-default.inc ../meta/conf/distro/include/; \
	cp ../../patches/bblayers.conf ./conf/; \
	cp ../../patches/local.conf ./conf/
