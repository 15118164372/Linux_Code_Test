#!/bin/bash 

#set -e #Exit immediately if a command exits with a non-zero status

PROJ_ROOT=$PWD
BUILD_ROOT=$PROJ_ROOT
echo "build root: $BUILD_ROOT"

if [ "$1" == "--no-test" ]; then
	NO_TEST=1
else
	NO_TEST=0
fi

echo "no test: $NO_TEST"

#mkdir��-pѡ������һ�δ������ε�Ŀ¼��������һ��ֻ����������Ŀ¼
mkdir -p $BUILD_ROOT/build
cd $BUILD_ROOT/build
cmake -DCMAKE_CXX_FLAGS=-g -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX:PATH=$BUILD_ROOT/install $PROJ_ROOT
make -j4 #���д���,cpu����
make install > /home/spring/math_oper1.txt

mkdir -p $BUILD_ROOT/api/build
cd $BUILD_ROOT/api/build
cmake -DCMAKE_BUILD_TYPE=Release -DNO_TESTBENCH=$NO_TEST \
	-DSDK_INSTALL_PATH=$BUILD_ROOT/install \
	-DCMAKE_INSTALL_PREFIX:PATH=$PROJ_ROOT/api_install $PROJ_ROOT/api
make -j4
make install > /home/spring/math_oper2.txt