#!/bin/sh
# new image size
# block size -> 64k
bs=65536
#ls -l flash_dump
# -rw-rw-r-- 1 makefu makefu 4194304 Mar 21 10:28 flash_dump
if [ -z $1 ] || [ -z $2 ] || [ ! -s $1 ] || [ ! -s $2 ]; then
    echo "usage: build_mfg old_image sysupgrade_image target"
    exit 1
fi
flash_size=$(ls -l $1 | cut -d\  -f 8)
#             4194304 / 65536
num_blocks=$(( $flash_size / $bs ))
# 64 blocks, 64kilobyte each
dd if=flash_dump of=data.bin bs=$bs count=1 skip=1
dd if=flash_dump of=art.bin bs=$bs count=1 skip=$(($num_blocks - 1))

#After that you can cat together your new image:

sysupgrade_size=$(ls -l $2 | cut -d\  -f 8)
echo $sysupgrade_size
# 8M Flash
new_image_size=8388608
# truncate --size $[new_image_size-3*bs] whitespace.bin
#tr '\000' '\377' < /dev/zero | dd of=whitespace.bin bs=$(($new_image_size - $sysupgrade_size - 3 * $bs)) count=2k

# build pepe2k bootloader at first: see https://github.com/pepe2k/u-boot_mod
if [ -z $3 ]; then
    target="wr703_mfg_$(date "+%Y%m%d%H%M%S").bin"
else
    target=$3
fi
cat uboot_for_tp-link_tl-wr703n.bin \
    data.bin \
    $2 \
    whitespace.bin \
    art.bin > $target
