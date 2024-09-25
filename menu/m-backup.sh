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
BZh91AY&SY��� d��� ����������pF@�  `	���=ts����
T��G��d�zd���&@� �jQ�  8 ��4  h�      ���D�=G��  ��A��    44�8 ��4  h�      (DД���=OI�OQ��42z�z�S����=G� 4mG���4�AI�L�)�B2�F4F�i��6�h�FA��A� � N�sߊ�fF���I�18!L!w#�Ԣ1�-���_z̾���O�"�($�C�VF�
��!`J��2(7�M����X[��������KȊ���&�Xȳ0-�M�k4X���EM��q�<F����L��;�9w���!uJ|�	�s48H]"�-���,BAa�~�mB�M��?��W$|����QC�	��HF�����~�O��hA���i@�yQȭSI!:��0#���"��-�7Cy�����ot'9	�!�`5�Q�$AiG���[��|�UJeqV<[Vw����A'�y������-t���@�y{���Z)�A>є�i�X��FY!�f�cKZ&`*l���q���in�eB��]�[eN�z/�ѦG]��.����}z�6�I;G�����ҵ#ɞ�}#Q��w_w*_$�%����y�� G�t���3S��G��i�W�A�@��$C#Μ>�I ,������R&�ɡ�P��B2�!�&6[�nވ�9ġ��>6D���`�Bݑ5BE�6��d��_��S�2A6�}����i�ȈSd�B3�Qb�9��λ������APqhk�9��A���i�%�<pG�ȓ�P� ���i W�4�s e�_;"W�JsSr��]�8������O(�������)��"��� u�&��O'��t-����=�V������H��]`0����q��aU�$\���n�jz�}խ.�ֵ��rc���$�)N�tF�p�Q�0�)���ҩ!��x��*U���uL��qZZo�3�:��~qc�����^T	��Y�T�x6���3� m�>B�DlP,��ˡ��2f��!=b�B�rz]�i7r�������H��0�=Z�� t�$H؞��(�3L�C�A��L���Y��	��O ����i@h�Q�^ qKC�M�*�����KQ�V��)CH1�(�W����k����	��}�>X��᱑��f�S�n-
�~�c��m���
�(!v�m~GI;T�K
:�BiwUݭp7aOZ�%~����rY4�D���Q�~z�i�pg�&�l����!!u��@����Or�}.vrv�A���tZRM�Rv�]�G� s#���5��V����8�Ij$+"Ef<o���M; �i�FgaN�5ޯϠ�(�J:�g%�'b�(�� ��ը&E��Ա��o"o������K���üB���Qބ �d9ko,���P-0�P��a�d�1��@�cy��c�k�f`	d
%�J�Ye9B���;±��Z�M6����e=��C�B`\�;�@ou	X[W�[�D�X�Q1/��:�7U4�7�Ð�T��ҽ�o ����K�Q����O+a��s�^E0eDCjr�z����o{�f=q��t��8��Mlhe1��YRV��N�+N^��#�ږ�)݄Hܢ�e�}��z�$<\�C�4U�-G^S��b�>�����@ݎd2y�����!����rP�Ԋq����W�P6�/p%�xLZM]
 @�P'!@�:��ΌL� �K>��W�r�ԅ�.uԣ�m.��X�MU�6:�o����<�(�*��53�m���@$F�CBX#�(Bx���4�}��k�YC!q�\59��u�8/#A� �$R7uZ^S8��{B�G�/(k؉�f�I�2��qm�0{aڜ\��0/��u�lCp��,��F��޴��"��KL���[hhL�ZXU..)�0����%\��������5���`a�@7qH �f�|�*p�d.L��:*a��* ��z'}>Y*:��܂��T�""�O��"x��"�A����!Q3�K*��[��(��p
�X0�#��"؉�]��BCH^^\