#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY#W�y  �_�<�}���?�߮?���  �� 0 @=�ܴ��$�����d �  4��M@2=OP������6I�h�b dL� 6�� `�BOT�@ � Ѡ  �� 2�(�e�4  �z   � T�D�a�&�;.�ۯ�AB!%g���G��cu�MN�Z]�*��)m��%�7N�|dj$�w,v�qٸ�ɞ����/g�̡󥤦E�S�sM	�勺����B5����HTQ��"A!��F�\�#@�6m)Ȏ�"�1D�w�F ��x��'�fȚ��ޒYcf�Y�	a���$�R�r�S[\N�a�;[ے�z ��lH����!To����ͯAZ���0< R�Х�} �+"KD�Ol9��2B�� �`�F v$�dA�]m ���q�dX�7�$��N$8\�b��O|���@�a����M­X����Tɡ�$Q�U'*R��Wg��E�6�IVz"ly�{��:�T
zQ&D�aP��
wi�-Gt�W��᣶hȃ�(V�H+J ���Q	�RL�,%=%T����H����"�]^ו���Wg0�+S"?@ � Y aE��$���O�w$S�	5x�