# base

## 概要

- [nvidia/cuda:11.8.0-base-ubuntu20.04](https://hub.docker.com/layers/nvidia/cuda/11.8.0-base-ubuntu20.04/images/sha256-3ae1765f69e197009b583dbb548b321cc0cb2d0dbbfaf40fd5a35402b456d318?context=explore)
- COMPRESSED SIZE: 33.67 MB
- コンテナで nvidia-smi コマンドが使えるかどうか確認するのに使える

## 利用できるコマンド

- `nvidia-smi`

## 動作確認

```sh
docker-compose up
```

正常な実行結果の例:

```console
Attaching to base-test-devel-1
base-test-devel-1  | Check nvidia-smi (CUDA Toolkit)
base-test-devel-1  |
base-test-devel-1  | Sun Oct 16 03:44:34 2022
base-test-devel-1  | +-----------------------------------------------------------------------------+
base-test-devel-1  | | NVIDIA-SMI 520.56.05    Driver Version: 522.25       CUDA Version: 11.8     |
base-test-devel-1  | |-------------------------------+----------------------+----------------------+
base-test-devel-1  | | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
base-test-devel-1  | | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
base-test-devel-1  | |                               |                      |               MIG M. |
base-test-devel-1  | |===============================+======================+======================|
base-test-devel-1  | |   0  NVIDIA GeForce ...  On   | 00000000:01:00.0  On |                  N/A |
base-test-devel-1  | | 44%   28C    P8    12W / 250W |   1264MiB /  8192MiB |      0%      Default |
base-test-devel-1  | |                               |                      |                  N/A |
base-test-devel-1  | +-------------------------------+----------------------+----------------------+
base-test-devel-1  |
base-test-devel-1  | +-----------------------------------------------------------------------------+
base-test-devel-1  | | Processes:                                                                  |
base-test-devel-1  | |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
base-test-devel-1  | |        ID   ID                                                   Usage      |
base-test-devel-1  | |=============================================================================|
base-test-devel-1  | |  No running processes found                                                 |
base-test-devel-1  | +-----------------------------------------------------------------------------+
base-test-devel-1  |
base-test-devel-1  | Check nvcc (cuDNN)
base-test-devel-1  |
base-test-devel-1  |
base-test-devel-1  | Check env variables
base-test-devel-1  |
base-test-devel-1  | check_cuda.sh: 5: nvcc: not found
base-test-devel-1  | NV_CUDA_COMPAT_PACKAGE=cuda-compat-11-8
base-test-devel-1  | HOSTNAME=d3d17c0ceb3a
base-test-devel-1  | LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64
base-test-devel-1  | HOME=/root
base-test-devel-1  | CUDA_VERSION=11.8.0
base-test-devel-1  | NVIDIA_REQUIRE_CUDA=cuda>=11.8 brand=tesla,driver>=450,driver<451 brand=tesla,driver>=470,driver<471 brand=unknown,driver>=470,driver<471 brand=nvidia,driver>=470,driver<471 brand=nvidiartx,driver>=470,driver<471 brand=quadrortx,driver>=470,driver<471 brand=unknown,driver>=510,driver<511 brand=nvidia,driver>=510,driver<511 brand=nvidiartx,driver>=510,driver<511 brand=quadrortx,driver>=510,driver<511 brand=unknown,driver>=515,driver<516 brand=nvidia,driver>=515,driver<516 brand=nvidiartx,driver>=515,driver<516 brand=quadrortx,driver>=515,driver<516
base-test-devel-1  | NVIDIA_DRIVER_CAPABILITIES=compute,utility
base-test-devel-1  | NV_CUDA_CUDART_VERSION=11.8.89-1
base-test-devel-1  | PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
base-test-devel-1  | NVARCH=x86_64
base-test-devel-1  | PWD=/
base-test-devel-1  | NVIDIA_VISIBLE_DEVICES=0
base-test-devel-1  |
base-test-devel-1  | Installed package list
base-test-devel-1  |
base-test-devel-1  | ii  cuda-compat-11-8                520.61.05-1                  amd64        CUDA Compatibility Platform
base-test-devel-1  | ii  cuda-cudart-11-8                11.8.89-1                    amd64        CUDA Runtime native Libraries
base-test-devel-1  | ii  cuda-toolkit-11-8-config-common 11.8.89-1                    all          Common config package for CUDA Toolkit 11.8.
base-test-devel-1  | ii  cuda-toolkit-11-config-common   11.8.89-1                    all          Common config package for CUDA Toolkit 11.
base-test-devel-1  | ii  cuda-toolkit-config-common      11.8.89-1                    all          Common config package for CUDA Toolkit.
base-test-devel-1 exited with code 0
```
