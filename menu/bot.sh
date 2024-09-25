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
BZh91AY&SYT7k  Z�@ |���?��n?��j    @�m�pp���dh� P  z��M�MF�d�   � 4�)�M����h����i�4� �DS�Jy54�M��6��4���z�1�~����$�[f��(��l��*�E��l�R:h	�0\Ȁ �)C�>��<L��)��6��wrX�0����*Ay3jq,��Pb���>��\�K�M^�#LtIM3GM4�N�y�$���#��� �� 4 �pF����XU�X� ��LGG�!�	o8�y�;�\��U 	\SA;�O���J H���[Bq��C������ɱ�[�e�l�J(���(�!��U[^�d�e���2�ѐJ��{*:�v����Tb�8���Z0Z�h�F�M7���\魝ܿ��q��p�{��If�U��Zqwy�S�m��oýUf�3�U��d9�y1���G��F�!���H�
���`