# cuda-tutorial

## NVIDIA Container Toolkit

### コンテナから nvidia-smi コマンドが利用できることを確認

```sh
cd docs/cuda/cuda-tutorial

docker-compose up
```

次のような表示が出れば成功。

```console
Attaching to cuda-tutorials-test-1
cuda-tutorials-test-1  | Sat Oct 15 23:59:51 2022
cuda-tutorials-test-1  | +-----------------------------------------------------------------------------+
cuda-tutorials-test-1  | | NVIDIA-SMI 520.56.05    Driver Version: 522.25       CUDA Version: 11.8     |
cuda-tutorials-test-1  | |-------------------------------+----------------------+----------------------+
cuda-tutorials-test-1  | | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
cuda-tutorials-test-1  | | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
cuda-tutorials-test-1  | |                               |                      |               MIG M. |
cuda-tutorials-test-1  | |===============================+======================+======================|
cuda-tutorials-test-1  | |   0  NVIDIA GeForce ...  On   | 00000000:01:00.0  On |                  N/A |
cuda-tutorials-test-1  | | 44%   34C    P8    10W / 250W |   1246MiB /  8192MiB |      0%      Default |
cuda-tutorials-test-1  | |                               |                      |                  N/A |
cuda-tutorials-test-1  | +-------------------------------+----------------------+----------------------+
cuda-tutorials-test-1  |
cuda-tutorials-test-1  | +-----------------------------------------------------------------------------+
cuda-tutorials-test-1  | | Processes:                                                                  |
cuda-tutorials-test-1  | |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
cuda-tutorials-test-1  | |        ID   ID                                                   Usage      |
cuda-tutorials-test-1  | |=============================================================================|
cuda-tutorials-test-1  | |  No running processes found                                                 |
cuda-tutorials-test-1  | +-----------------------------------------------------------------------------+
cuda-tutorials-test-1 exited with code 0
```
