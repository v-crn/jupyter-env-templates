# devel

## 概要

- [nvidia/cuda:11.8.0-devel-ubuntu20.04](https://hub.docker.com/layers/nvidia/cuda/11.8.0-devel-ubuntu20.04/images/sha256-b3f7d0516b345bbfb5a55bcd9b09db7a1e085a48362dc98c85c09df06de6e164?context=explore)
- COMPRESSED SIZE: 2.17 GB
  - base よりイメージサイズが結構大きい
- コンテナで nvidia-smi コマンドと nvcc コマンドが使えるかどうか確認するのに使える

## 利用できるコマンド

- `nvidia-smi`
- `cvnn`

## 動作確認

```sh
docker-compose up
```

正常な実行結果の例:

```console
Attaching to devel-test-devel-1
devel-test-devel-1  | Check nvidia-smi (CUDA Toolkit)
devel-test-devel-1  |
devel-test-devel-1  | Sun Oct 16 03:41:32 2022
devel-test-devel-1  | +-----------------------------------------------------------------------------+
devel-test-devel-1  | | NVIDIA-SMI 520.56.05    Driver Version: 522.25       CUDA Version: 11.8     |
devel-test-devel-1  | |-------------------------------+----------------------+----------------------+
devel-test-devel-1  | | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
devel-test-devel-1  | | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
devel-test-devel-1  | |                               |                      |               MIG M. |
devel-test-devel-1  | |===============================+======================+======================|
devel-test-devel-1  | |   0  NVIDIA GeForce ...  On   | 00000000:01:00.0  On |                  N/A |
devel-test-devel-1  | | 43%   28C    P8    12W / 250W |   1247MiB /  8192MiB |      0%      Default |
devel-test-devel-1  | |                               |                      |                  N/A |
devel-test-devel-1  | +-------------------------------+----------------------+----------------------+
devel-test-devel-1  |
devel-test-devel-1  | +-----------------------------------------------------------------------------+
devel-test-devel-1  | | Processes:                                                                  |
devel-test-devel-1  | |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
devel-test-devel-1  | |        ID   ID                                                   Usage      |
devel-test-devel-1  | |=============================================================================|
devel-test-devel-1  | |  No running processes found                                                 |
devel-test-devel-1  | +-----------------------------------------------------------------------------+
devel-test-devel-1  |
devel-test-devel-1  | Check nvcc (cuDNN)
devel-test-devel-1  |
devel-test-devel-1  | nvcc: NVIDIA (R) Cuda compiler driver
devel-test-devel-1  | Copyright (c) 2005-2022 NVIDIA Corporation
devel-test-devel-1  | Built on Wed_Sep_21_10:33:58_PDT_2022
devel-test-devel-1  | Cuda compilation tools, release 11.8, V11.8.89
devel-test-devel-1  | Build cuda_11.8.r11.8/compiler.31833905_0
devel-test-devel-1  |
devel-test-devel-1  | Check env variables
devel-test-devel-1  |
devel-test-devel-1  | LIBRARY_PATH=/usr/local/cuda/lib64/stubs
devel-test-devel-1  | NV_CUDA_COMPAT_PACKAGE=cuda-compat-11-8
devel-test-devel-1  | NV_LIBCUBLAS_VERSION=11.11.3.6-1
devel-test-devel-1  | NV_NVPROF_DEV_PACKAGE=cuda-nvprof-11-8=11.8.87-1
devel-test-devel-1  | HOSTNAME=433bda4502f9
devel-test-devel-1  | LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64
devel-test-devel-1  | HOME=/root
devel-test-devel-1  | NV_LIBCUBLAS_DEV_VERSION=11.11.3.6-1
devel-test-devel-1  | NV_LIBNPP_PACKAGE=libnpp-11-8=11.8.0.86-1
devel-test-devel-1  | CUDA_VERSION=11.8.0
devel-test-devel-1  | NV_NVPROF_VERSION=11.8.87-1
devel-test-devel-1  | NV_LIBCUBLAS_PACKAGE_NAME=libcublas-11-8
devel-test-devel-1  | NVIDIA_REQUIRE_CUDA=cuda>=11.8 brand=tesla,driver>=450,driver<451 brand=tesla,driver>=470,driver<471 brand=unknown,driver>=470,driver<471 brand=nvidia,driver>=470,driver<471 brand=nvidiartx,driver>=470,driver<471 brand=quadrortx,driver>=470,driver<471 brand=unknown,driver>=510,driver<511 brand=nvidia,driver>=510,driver<511 brand=nvidiartx,driver>=510,driver<511 brand=quadrortx,driver>=510,driver<511 brand=unknown,driver>=515,driver<516 brand=nvidia,driver>=515,driver<516 brand=nvidiartx,driver>=515,driver<516 brand=quadrortx,driver>=515,driver<516
devel-test-devel-1  | NVIDIA_DRIVER_CAPABILITIES=compute,utility
devel-test-devel-1  | NV_CUDA_LIB_VERSION=11.8.0-1
devel-test-devel-1  | NV_LIBCUSPARSE_VERSION=11.7.5.86-1
devel-test-devel-1  | NV_NVML_DEV_VERSION=11.8.86-1
devel-test-devel-1  | NV_LIBNPP_DEV_PACKAGE=libnpp-dev-11-8=11.8.0.86-1
devel-test-devel-1  | NV_CUDA_CUDART_VERSION=11.8.89-1
devel-test-devel-1  | PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
devel-test-devel-1  | NVARCH=x86_64
devel-test-devel-1  | NV_LIBCUBLAS_PACKAGE=libcublas-11-8=11.11.3.6-1
devel-test-devel-1  | NV_LIBCUBLAS_DEV_PACKAGE_NAME=libcublas-dev-11-8
devel-test-devel-1  | NV_LIBCUSPARSE_DEV_VERSION=11.7.5.86-1
devel-test-devel-1  | NV_CUDA_CUDART_DEV_VERSION=11.8.89-1
devel-test-devel-1  | NV_LIBCUBLAS_DEV_PACKAGE=libcublas-dev-11-8=11.11.3.6-1
devel-test-devel-1  | NV_NVTX_VERSION=11.8.86-1
devel-test-devel-1  | NV_LIBNPP_VERSION=11.8.0.86-1
devel-test-devel-1  | PWD=/
devel-test-devel-1  | NVIDIA_VISIBLE_DEVICES=0
devel-test-devel-1  | NV_LIBNPP_DEV_VERSION=11.8.0.86-1
devel-test-devel-1  |
devel-test-devel-1  | Installed package list
devel-test-devel-1  |
devel-test-devel-1  | ii  cuda-cccl-11-8                  11.8.89-1                    amd64        CUDA CCCL
devel-test-devel-1  | ii  cuda-command-line-tools-11-8    11.8.0-1                     amd64        CUDA command-line tools
devel-test-devel-1  | ii  cuda-compat-11-8                520.61.05-1                  amd64        CUDA Compatibility Platform
devel-test-devel-1  | ii  cuda-compiler-11-8              11.8.0-1                     amd64        CUDA compiler
devel-test-devel-1  | ii  cuda-cudart-11-8                11.8.89-1                    amd64        CUDA Runtime native Libraries
devel-test-devel-1  | ii  cuda-cudart-dev-11-8            11.8.89-1                    amd64        CUDA Runtime native dev links, headers
devel-test-devel-1  | ii  cuda-cuobjdump-11-8             11.8.86-1                    amd64        CUDA cuobjdump
devel-test-devel-1  | ii  cuda-cupti-11-8                 11.8.87-1                    amd64        CUDA profiling tools runtime libs.
devel-test-devel-1  | ii  cuda-cupti-dev-11-8             11.8.87-1                    amd64        CUDA profiling tools interface.
devel-test-devel-1  | ii  cuda-cuxxfilt-11-8              11.8.86-1                    amd64        CUDA cuxxfilt
devel-test-devel-1  | ii  cuda-driver-dev-11-8            11.8.89-1                    amd64        CUDA Driver native dev stub library
devel-test-devel-1  | ii  cuda-gdb-11-8                   11.8.86-1                    amd64        CUDA-GDB
devel-test-devel-1  | ii  cuda-libraries-11-8             11.8.0-1                     amd64        CUDA Libraries 11.8 meta-package
devel-test-devel-1  | ii  cuda-libraries-dev-11-8         11.8.0-1                     amd64        CUDA Libraries 11.8 development meta-package
devel-test-devel-1  | ii  cuda-memcheck-11-8              11.8.86-1                    amd64        CUDA-MEMCHECK
devel-test-devel-1  | ii  cuda-minimal-build-11-8         11.8.0-1                     amd64        Minimal CUDA 11.8 toolkit build packages.
devel-test-devel-1  | ii  cuda-nvcc-11-8                  11.8.89-1                    amd64        CUDA nvcc
devel-test-devel-1  | ii  cuda-nvdisasm-11-8              11.8.86-1                    amd64        CUDA disassembler
devel-test-devel-1  | ii  cuda-nvml-dev-11-8              11.8.86-1                    amd64        NVML native dev links, headers
devel-test-devel-1  | ii  cuda-nvprof-11-8                11.8.87-1                    amd64        CUDA Profiler tools
devel-test-devel-1  | ii  cuda-nvprune-11-8               11.8.86-1                    amd64        CUDA nvprune
devel-test-devel-1  | ii  cuda-nvrtc-11-8                 11.8.89-1                    amd64        NVRTC native runtime libraries
devel-test-devel-1  | ii  cuda-nvrtc-dev-11-8             11.8.89-1                    amd64        NVRTC native dev links, headers
devel-test-devel-1  | ii  cuda-nvtx-11-8                  11.8.86-1                    amd64        NVIDIA Tools Extension
devel-test-devel-1  | ii  cuda-profiler-api-11-8          11.8.86-1                    amd64        CUDA Profiler API
devel-test-devel-1  | ii  cuda-sanitizer-11-8             11.8.86-1                    amd64        CUDA Sanitizer
devel-test-devel-1  | ii  cuda-toolkit-11-8-config-common 11.8.89-1                    all          Common config package for CUDA Toolkit 11.8.
devel-test-devel-1  | ii  cuda-toolkit-11-config-common   11.8.89-1                    all          Common config package for CUDA Toolkit 11.
devel-test-devel-1  | ii  cuda-toolkit-config-common      11.8.89-1                    all          Common config package for CUDA Toolkit.
devel-test-devel-1  | ii  libcufile-11-8                  1.4.0.31-1                   amd64        Library for GPU Direct Storage with CUDA 11.8
devel-test-devel-1  | ii  libcusolver-11-8                11.4.1.48-1                  amd64        CUDA solver native runtime libraries
devel-test-devel-1  | ii  libcusolver-dev-11-8            11.4.1.48-1                  amd64        CUDA solver native dev links, headers
devel-test-devel-1 exited with code 0
```
