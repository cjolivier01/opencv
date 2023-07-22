#!/bin/bash
set -e

mkdir -p ./build
cd build

if [ "${CONDA_DEFAULT_ENV}" != "HockeyMOM" ]; then
  conda activate HockeyMOM
fi

C_COMPILER="${CONDA_PREFIX}/bin/gcc"
CXX_COMPILER="${CONDA_PREFIX}/bin/g++"

# C_COMPILER="${CONDA_PREFIX}/bin/clang"
# CXX_COMPILER="${CONDA_PREFIX}/bin/clang"

#NVCC_PREPEND_FLAGS='-ccbin /home/colivier/.conda/envs/HockeyMOM/bin/g++'

#  -D CMAKE_CUDA_HOST_COMPILER=/home/colivier/.conda/envs/HockeyMOM/bin/g++

#  -D CMAKE_CXX_FLAGS="-fmax-errors=5" \

#  -D CUDA_NVCC_FLAGS='-ccbin ${CXX_COMPILER} -Xcompiler ,\"-std=c++14\"' \

cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_CXX_STANDARD=14 \
  -D CUDA_NVCC_FLAGS='-Xcompiler ,\"-std=c++14\"' \
  -D CMAKE_C_COMPILER="${C_COMPILER}" \
  -D CMAKE_CXX_COMPILER="${CXX_COMPILER}" \
  -D CMAKE_INSTALL_PREFIX=${CONDA_PREFIX} \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D INSTALL_C_EXAMPLES=OFF \
  -D EIGEN3_INCLUDE_PATH=/usr/include/eigen3 \
  -D OPENCV_ENABLE_NONFREE=ON \
  -D WITH_CUDA=ON \
  -D WITH_CUDNN=ON \
  -D OPENCV_DNN_CUDA=ON \
  -D ENABLE_FAST_MATH=1 \
  -D CUDA_FAST_MATH=1 \
  -D CUDA_ARCH_BIN=7.5 \
  -D WITH_CUBLAS=1 \
  -D OPENCV_EXTRA_MODULES_PATH=~/src/opencv_contrib/modules \
  -D HAVE_opencv_python3=ON \
  -D BUILD_EXAMPLES=OFF ..
