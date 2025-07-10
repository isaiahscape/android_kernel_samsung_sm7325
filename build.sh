# clang downloaded from: https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86
# linux-x86 is inside toolchains folder

export PATH=~/toolchains/linux-x86/clang-r547379/bin:$PATH

make -j$(nproc --all) O=out ARCH=arm64 vendor/lahaina_QGKI.config \
  vendor/a52sxq_eur_open_defconfig \
  LLVM=1 \
  LLVM_IAS=1 \
  HOSTLD=ld.lld \
  CC=clang \
  CROSS_COMPILE=aarch64-linux-gnu- \
  CROSS_COMPILE_COMPAT=arm-linux-gnueabi-

make -j$(nproc --all) O=out ARCH=arm64 \
  LLVM=1 \
  LLVM_IAS=1 \
  HOSTLD=ld.lld \
  CC=clang \
  CROSS_COMPILE=aarch64-linux-gnu- \
  CROSS_COMPILE_COMPAT=arm-linux-gnueabi-
