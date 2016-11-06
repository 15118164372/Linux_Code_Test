#! /bin/bash -xv

# shell script -- test12.sh
# ��ȡ���������ں���ʱ
# Spring 2015-04-22

date
date +%s

# ������ת���ɼ�Ԫʱ
date --date "Thu Nov 18 08:07:21 IST 2010" +%s

# ��֪���������������ڼ�
date --date "Jan 20 2001" +%A

# �ø�ʽ����� + ��Ϊdate����Ĳ��������԰������ѡ���ӡ����Ӧ��ʽ������
date "+%d %B %Y"

# �������ں�ʱ��
sudo date -s "21 June 2009 11:02:22" #��Ҫ��Ȩ��

# ����һ�����������ѵ�ʱ��
start=$(date +%s)
# ִ���������......
sleep 5

end=$(date +%s)
difference=$(( end - start ))
echo "Time taken to execute commands is $difference seconds"