#!/bin/sh

BOARD_DIR="$(dirname $0)"

install -m 0644 -D $BOARD_DIR/../../../../../uboot/debian_u-boot/u-boot.img $BINARIES_DIR/u-boot.img
install -m 0644 -D $BOARD_DIR/../../../../../linux/linux/arch/arm/boot/zImage $BINARIES_DIR/zImage
install -m 0644 -D $BOARD_DIR/../../../../../linux/linux/arch/arm/boot/dts/rockchip/rk3288-tinker.dtb $BINARIES_DIR/rk3288-tinker.dtb
install -m 0644 -D $BOARD_DIR/../../../../../linux/hw_intf.conf $BINARIES_DIR/hw_intf.conf
install -m 0644 -D $BOARD_DIR/rk3288.conf $BINARIES_DIR/extlinux/extlinux.conf
