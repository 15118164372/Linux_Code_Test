#! /bin/bash

# shell script -- test11.sh
# �����ʹ��
# Spring 2015-04-22

array_var1=(1 2 3 4 5 6)
echo $array_var1 #1
echo ${array_var1[*]} #��ӡ����ֵ

array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"
array_var[4]="test5"
echo ${array_var[0]} #��ӡ���ض�����������Ԫ������
index=3
echo ${array_var[$index]} #��ӡ���ض�����������Ԫ������

# ���嵥��ʽ��ӡ�������е�����ֵ
echo ${array_var[*]}
echo ${array_var[@]} #��һ�ַ�ʽ

echo ${#array_var[*]} #��ӡ���鳤��

# ʹ�õ�����������佫һ����������Ϊ��������
declare -A fruits_value
# ������Ƕ����--ֵ�б���ʹ�ö���������--ֵ���и�ֵ
fruits_value=([apple]='100 dollars' [orange]='150 dollars')
echo "Apple costs ${fruits_value[apple]}"

# �г���������
echo ${!fruits_value[*]}
echo ${!fruits_value[@]} #��һ�ַ���