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
BZh91AY&SY�]� ��P���������� ���@  @ �^�**I"��$�����D��	"QQ�i�������44�2  a1���M4����F@ & 48i��CCC#@2 ��h� ���M4�hhhdh@M  0���MT�i�����D�#MOjLM���	�z  R�@L�MM�z�������f�<�~� z��=F�p�}L��Ei�2%l�R�щ���LM����ќ��������M웦̟��-�g��|�&��}��l��Ng&,d�f����\f�Xy�L��phͳ+$p��y��iW&L7�bdõ����Tk�G�����[�ro��u��NW�f�r9�1V�X��a�|Sr��b��U�u�����a���qf�FV�~DatR����.��f�gp�s7#)�����+|ɒ����a��/V��V��z��S:u�)\�\�y?�ص�/��y����Oִ'j����x�p,FUd�E֚Ӝn��!���a`�1�ŝ1b�1YXY�u>�����VP�_����F#�g�b1����l�.Z�F�}����\��7���Wb�K�m��l�e�/|{o�}��_�<�uӻ7?E�s5�^��ц�^w�Y]��4au͙Լ]O��̝sf�+�eʞ��#�4��?5UpV)�.�l��r���M������W��������s*��2��|������>�Ȱ��3�=j�W�^��z������ս�U�O��>W�:����W���t��<3b`|��eR͆)��[����V���g+;�݊_(��%��V�b1+��=s5eSJaݙ,�5hU�0W��&��d�0��L,YXE�8�؆K;�J2������r���m��]��_U�d����i:��C5}uK��[�^Փ��zj�����e{�Xf�>�iO+�d����}�p��t�X�G�L�^�T�~�,���N7��b�#����e]�縭vE���Ži�M����uz�ɖ{Z���]\����qny[�rm��tuUk�V!�`�R���71�{Hę_`�	��u]K�qq��
���t
�l�#6�+��MX#;���7��j����3��_;��V�*�q|���<s������5�����xU�ٓZ��:gj��/�a�4�V=M��x�FJ��}����~I��~6s5a�w\Z,0�D�k2a��a[�E=�}�+����L���#�R�G�w�x-Q�k\�k�};��������>�����䜎�
h�5]o��U���_L��6|��G�n��b�˹|��kλm���q�b>��b1��6�s���-�4ǘ#J�4�i#�tz����8�t�z\F�ש^�Y+%}�x�hѣ%g7�3
�
��r�nw��6G޿�m��%��Jk��?e�(�,%?�1�8��{��_��՛�\�y��[M� ���K��Lդ�U�l�C*�"��VK����.�2�&��x��E,XZ-�Qw�cyr��><�4hN�d�fM���\U�>�+�\�eoL�Q���4�Q�(�'�:�Li�XZc+b�'8�ee�qU�b110��;��LU��e0�
°�zذ��L���+{����gz�ɪ?��+�#��O�b��|j�W�V%|�K�qb|w6q���20��r����_�}(�L��=)��+�K
��d���Q;�.�;}^�!uGW;Q�B1�����(�Bl�ab�=1��\Ⱦ%��#�K+�d�a���e9^��'+�V̑u��ܙ߭�N
�l�N&�tj���/��[T��ߙ<5f�[��l��';9�zl����IĹ�,?�vP�^5�O�ž1s�MW��Z�1�K���Y��4a��>g�S�/�����O9]��}�pqv9�.CM�lYK���]6�fQ�U��OrĬu̩O�ĮG��o�Jr�Bh�Lz%�;��j�k��L2V�f�e+��sS�X���y���浗�0WE�O�a��1VVQ��W�3V�In���{N;�{r8ʷSV��u���*��jl��T���3V�g#�a��j��j�U�VXa�%a���G��z�,./D<#��=e�n�f��b>I4�R8�U��R1o�R�rK0�U�Rs�g3��՜����m�ar�P���Y��ҏ�h��Tî^w4�MK�}w�����y#X�.Q�i���-�:|�eTͲX`V$Պdɐd�}E��<�\=6]�k(�l��&vqޏB[ֵܯ�I��M�-)�s�Եoob�L*�v�d��J��o�.ž0?��s,�+"�����Yɢ<��\�p�]�MDf��{�Z�ȷ��?E���{�y��b�s�����U��X�2bŉ�3K���]i<ft:�C	�\KfIm.b�*�H���[o
8F�X��:E�b�[�C�Zo�,�q�+�6/R�s��:�f�͘��Ƭ0,0�L%]��g�b��s�,>Ss)�!dͫB��!�<-��uL��S(��^�t}�%�[.۩,�W)\�MC�jh�VZ1+Fs*k+�n�2Kc��8�#�%Y^B�\�����{#h[/A��F��&�ʼv��]�nG���p�uG(go�,�K}����bj6G#�K��N�z��ܗ�L�At����pX�.��O�=�g4O����j�Q�0vId��j͈1+�t��'�V
9e+/eX��x�ύ�W��?�+�V$�o���?\~�D�q�c�#�i��c��"�(Hx.��