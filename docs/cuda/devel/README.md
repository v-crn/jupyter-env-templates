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
devel-test-devel-1  | Sun Oct 16 02:42:27 2022
devel-test-devel-1  | +-----------------------------------------------------------------------------+
devel-test-devel-1  | | NVIDIA-SMI 520.56.05    Driver Version: 522.25       CUDA Version: 11.8     |
devel-test-devel-1  | |-------------------------------+----------------------+----------------------+
devel-test-devel-1  | | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
devel-test-devel-1  | | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
devel-test-devel-1  | |                               |                      |               MIG M. |
devel-test-devel-1  | |===============================+======================+======================|
devel-test-devel-1  | |   0  NVIDIA GeForce ...  On   | 00000000:01:00.0  On |                  N/A |
devel-test-devel-1  | | 43%   28C    P8    11W / 250W |   1185MiB /  8192MiB |      0%      Default |
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
devel-test-devel-1  | NV_CUDA_COMPAT_PACKAGE=cuda-compat-11-8
devel-test-devel-1  | NV_LIBCUBLAS_VERSION=11.11.3.6-1
devel-test-devel-1  | NV_NVPROF_DEV_PACKAGE=cuda-nvprof-11-8=11.8.87-1
devel-test-devel-1  | NV_LIBCUBLAS_DEV_VERSION=11.11.3.6-1
devel-test-devel-1  | NV_LIBNPP_PACKAGE=libnpp-11-8=11.8.0.86-1
devel-test-devel-1  | NV_NVPROF_VERSION=11.8.87-1
devel-test-devel-1  | NV_LIBCUBLAS_PACKAGE_NAME=libcublas-11-8
devel-test-devel-1  | NVIDIA_REQUIRE_CUDA=cuda>=11.8 brand=tesla,driver>=450,driver<451 brand=tesla,driver>=470,driver<471 brand=unknown,driver>=470,driver<471 brand=nvidia,driver>=470,driver<471 brand=nvidiartx,driver>=470,driver<471 brand=quadrortx,driver>=470,driver<471 brand=unknown,driver>=510,driver<511 brand=nvidia,driver>=510,driver<511 brand=nvidiartx,driver>=510,driver<511 brand=quadrortx,driver>=510,driver<511 brand=unknown,driver>=515,driver<516 brand=nvidia,driver>=515,driver<516 brand=nvidiartx,driver>=515,driver<516 brand=quadrortx,driver>=515,driver<516
devel-test-devel-1  | NVIDIA_DRIVER_CAPABILITIES=compute,utility
devel-test-devel-1  | NV_CUDA_LIB_VERSION=11.8.0-1
devel-test-devel-1  | NV_LIBCUSPARSE_VERSION=11.7.5.86-1
devel-test-devel-1  | NV_NVML_DEV_VERSION=11.8.86-1
devel-test-devel-1  | NV_LIBNPP_DEV_PACKAGE=libnpp-dev-11-8=11.8.0.86-1
devel-test-devel-1  | NV_CUDA_CUDART_VERSION=11.8.89-1
devel-test-devel-1  | NVARCH=x86_64
devel-test-devel-1  | NV_LIBCUBLAS_PACKAGE=libcublas-11-8=11.11.3.6-1
devel-test-devel-1  | NV_LIBCUBLAS_DEV_PACKAGE_NAME=libcublas-dev-11-8
devel-test-devel-1  | NV_LIBCUSPARSE_DEV_VERSION=11.7.5.86-1
devel-test-devel-1  | NV_CUDA_CUDART_DEV_VERSION=11.8.89-1
devel-test-devel-1  | NV_LIBCUBLAS_DEV_PACKAGE=libcublas-dev-11-8=11.11.3.6-1
devel-test-devel-1  | NV_NVTX_VERSION=11.8.86-1
devel-test-devel-1  | NV_LIBNPP_VERSION=11.8.0.86-1
devel-test-devel-1  | NVIDIA_VISIBLE_DEVICES=0
devel-test-devel-1  | NV_LIBNPP_DEV_VERSION=11.8.0.86-1
devel-test-devel-1 exited with code 0
```
