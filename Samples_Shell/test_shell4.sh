#! /bin/bash

# shell script -- test10.sh
# �ļ���������ʹ��
# Spring 2015-04-22

# ���ַ���ͨ����ȡ�ļ��ķ�ʽ��������ı��洢���ļ�/home/spring/temp.txt��
# �ڰ�echo��������д���ļ�֮ǰ��temp.txt�е��������Ȼᱻ���
echo "This is a sample text 1" > /home/spring/temp.txt

# ���ַ����Ὣ�ı�׷�ӵ�Ŀ���ļ���
echo "This is a sample text 2" >> /home/spring/temp.txt

# �ض���ű��ڲ����ı���
cat <<EOF > /home/spring/log.txt
LOG FILE HEADER
This is a test log file
Function: System statistics
EOF