cmd_/build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd/.install := perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/linux/nfsd /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd mips debug.h export.h nfsfh.h stats.h; perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/linux/nfsd /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd mips ; perl scripts/headers_install.pl /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-3.3.8/include/generated/linux/nfsd /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd mips ; for F in ; do echo "\#include <asm-generic/$$F>" > /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd/$$F; done; touch /build/ar71xx/generic/build_dir/toolchain-mips_r2_gcc-4.6-linaro_uClibc-0.9.33.2/linux-dev//include/linux/nfsd/.install