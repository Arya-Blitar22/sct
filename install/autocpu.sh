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
BZh91AY&SY��  �_� ~���?ǜ�����@��`�$�Ѣ�{SL��42zM��@ �4hJjx�ȏM@���������&L�20�&�db``H��L
xCQ��!�i�h�4=G�5��9����o���4��C|�~�5/V�^6h����199p܄���	oi��'+��IږJ���W��W)����"Eĥ���[�c�GB�uDQ�2�&j ����)��R���D��!YP�C��)�@�{U|g]�,�8��r�Uj��0�}�>{c���u��Re�\�$Ü���#i]���@����)f$Kz�x�hm��e9܄�*��5��ty4�Ɖ�'2�M���)[Y����ᓖ�-�G��E�k�rB$�z�Ӗ��j:u;��X,��O>��]��a涣l���u�G��1P�DK�؄8FAذ.�8).D����rS��-}s7ZL�׳�$֠�&�-�S��K��©�2���Z�~���\�*~���Gf0+�D�ҩ�G��K��f���a"�&��f��4��L6�L��\�p�%��m�^ѕʅ'��\����^	P6��H��<���B���b}ej)#�eP�05�I(��9Tf�z���t��+!�W���6O8RbMF9�SĜ�I��P����]®E~��z@32мc�2�л�AjrU��A��L��B��4X��N,�t�ҕTMR�Kp��h��]�%�-�a�M��.�c("��
��"!W[4o��R�8�>��+̿�ܑN$��� 