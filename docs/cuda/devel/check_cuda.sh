echo "Check nvidia-smi (CUDA Toolkit)\n"
nvidia-smi
echo
echo "Check nvcc (cuDNN)\n"
nvcc -V
echo
echo "Check env variables\n"
env | grep NV
