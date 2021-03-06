FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc \
    bison \
    ca-certificates \
    curl \
    flex \
    gcc \
    git \
    make \
    libssl-dev \
    libc6-dev \
    libncurses5-dev zip \
 && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/kdrag0n/proton-clang.git /toolchain --depth=1

ENV PATH /toolchain/bin:$PATH
ENV ARCH arm64
ENV CROSS_COMPILE aarch64-linux-gnu-
ENV CROSS_COMPILE_ARM32 arm-linux-gnueabi-
ENV KBUILD_BUILD_HOST github.com
