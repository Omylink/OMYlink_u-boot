cmd_/build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset/.install := perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/linux/netfilter/ipset /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset mips ip_set.h ip_set_bitmap.h ip_set_hash.h ip_set_list.h; perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/linux/netfilter/ipset /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset mips ; perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/generated/linux/netfilter/ipset /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset/$$F; done; touch /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/netfilter/ipset/.install