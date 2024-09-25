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
BZh91AY&SY��.  �߀ �}���?!�����P@3 ���d�#CS	��L�e<M	��i�3Df�i�M���&M)��P��A�@   IC@S��OFH 2�4�hɉ�	���0 �`�0Ú2b`b0#L1&L1~�7����_aK�KP�k~|���|'�k�sJşk��/^��`8Ar������g��X؀�lX��D��������[L�6�e^��k�u���[��i����*a������<4ړ����w$YC�+u�˯�_�E;]k|��Z^��T,Q:6ZZ�R��ij��O#¹�EC�d�G��c��oc:Z0c*�1M�F�Tg�rY�i�ի�Y���B&\�)Ԭk�cG��HZI`�S��������w̽0'�r7����e�Y��"cQ^M��<�����N��Rv�:�h�2`��ur\E�u�}��3�*�Ztܓ�Sb�Ąȉ|<M�q%�P�/M�����m�w��	���-�M<uy8�=��1�g�=@�8`��Yxq���ĲP���z6��+bE1�#�fC fa��C-u�3|�r$�=��WZ��Y�M	1Mf��I���c��i�t粚h�mx��M�px<
1�d��n��[�]�>��y��]���jj#T�Ж�φe�˦�6m�;}u f�L��ǀT���l��t%1j��ٻ��a^�hz���֑pf��~�
�|Σ#=��;D�q��9��K� 7x�Xϯ)RQ�gfюMwe\ץ�i^ξ���{��G��,��y�<v�3pwwt�5��a��Pd��Nk����آ⤫c��y�,2j�z�EĥUu�w{���bM�G��$�ns����]�my�˂;wpI��0��hj2kǍ�;�z���9��ˤ�ϙ��H����vu�9��;,L�3Q�0'���8�j���=\!*��A���.jBȔ���lc�ᐌ��t%.&E�w����˺dd#3-���ȁƁ�=ˡ#[�M#�g�!CY��jI)����=Y �۹�`���:��8�l'%�ȣ��Y&|�ǡ�;hb,��h�G����츱h8��b�1�30�婟'���1<�"��Sy�1j�*q��{`f��q�����S�^1�;ա�� k�gHB�T�Ҥ�Ԓ����U 
Ku¦:)TN�lunW(W��Э`/�4�I&&T&����14©��*���Ā<E��OFRg֏��� ��t��MHm�%��r'>o�+�(G���"�(Hq�� 