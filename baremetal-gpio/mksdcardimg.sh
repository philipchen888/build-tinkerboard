#!/bin/sh
BOOT=./sdcard.img
\rm ${BOOT}
dd if=/dev/zero of=${BOOT} bs=1M count=0 seek=32
parted -s ${BOOT} mklabel gpt
parted -s ${BOOT} unit s mkpart loader1 64 127
parted -s ${BOOT} unit s mkpart loader2 128 32767
ROOT_UUID="B921B045-1DF0-41C3-AF44-4C6F280D3FAE"
gdisk ${BOOT} <<EOF
x
c
2
${ROOT_UUID}
w
y
EOF
dd if=./ddrboot.img of=${BOOT} seek=64 conv=notrunc,fsync
dd if=./test.bin of=${BOOT} seek=128 conv=notrunc,fsync
