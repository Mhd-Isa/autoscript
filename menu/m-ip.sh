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
BZh91AY&SYFW� }���� ����������p F ��� � @ `�z����7wa޻�m�퇭%�;Z�U�T��^IL�Ѩ�M0@3S&���!��A��#&�@d�I�MOI�I������hS�bm@ ��      h  �� h �   I� *fD�&ڄz��L�#CM2�=A���M  E"&I�S�S�)���f�i<�	�4f��h��A��E ��ddSѡ�S4��'�dS&�6��L@4�� 4��?>���I��������~y�����.�A�����IB]�<�PX��lbL060�f�\t��睡w�6p��\j��4g�}w���lp��TzD�YA��UtKY�����ܩ�v=}���},�L��$��(��U0�շp�dA���z�^d;�YS��������e�)
*�ou�=\�����p4m��`S�ch�Pp���ni	�N��PD����Y�0��N�5��tA(�]�m�t^�ya��Fיv�l].`��n�z^\�^a7JЊ0DD%#0�V��U���S7a�'���=ő|�W�,ퟂ�� �7� �M�L�M�D!�s\&6�ACթ�U	L��4�s0jl����G��5wmB�_g�G0M�� ��j��R�*4�:K�hN���R}4Gt5�7)ɫ>6ĘŌ�E�µr`�/
�ԋɋ`*E�YL�8�r	Ί���h�0�$�Kc�"�5E%�ǞE��m���N������F��pI:Vl�����Fujaf�/op�֤5�;�}��9n�lo�����g�6S������<�^GRs�l��4�;�ڊǋϜr�ҫ.EK0�(�p����P��-r��@2������4��`�1�J��I��T���q �:��#�p]5����J^�FjH@�h��遣�h���AX��$­#��ŉ&���&XHH��,���D��b��3�E�J�&��U&b��.�T�����,�t�T��{�jQ��!bjs����x����o`B��+� VV.��J"H�����`J� ����I�L��!���${Gn����p�ٳ��x����5�LM0���R_tFd<(MK�8ąT�S�meU�s$�3������2�?)<����>"��rV����2	���,$��6#�[�M��j��3x���>3B�� ubc܂�u#IB�`���H��D��q�u��Nٻ.�Ue̜��r��A�`�>�1(-����D�tݘO��&s�����7茲����3�ǘ��i	Hᔢ�WXYE�Bl �h	��{i-�2����zNmz��k+r���p�V�Qwe}Y%��"��I;�|���5n!�v�����r�	Lk�"�4�A<�)xa�O�G��bv	iⅹ�}Nt�jC��dء��ˉ�B׶I���k�5��8I)�K��I�'�xw��y�,��:>��۳�����@�������n��D����#�U������A���m����tgk��������A_)��ƓoS,r7��k���[|�dľe��	a�	6�8�K�6<&�D�nP�7�lg����!ɻ�8.ѿ�[o�ybG2� 8��I�@�P/�)��a�"�0�V��K[�T����uu�b�|k@'hU��3�xK�+V'��dLO�W4��V��&f�Q&�,�L*r1!u�"�{-|n���A0���~1I!�-�<�T��w8Ľ�p������!�,W��vN�	,b"')D�&�$L���v�����C���6Ǎ�@��DA�ux=W`zq�&J����$�Iw��r�	������8�����ٞ(��0���t�T邏Fk,�(�ZN2 �!|hh=�+�pi��D��3����f��-#��JZ��a��s<�4��dN� ��5�J?0�F���K�� �l#C9��	`����!y��l���M���W����A-dw�Y�z�$#J�-Qy1Z��z���Y� 0°�3��
W�,�(JעĜ�)$�f| C]U\F �ή�!�" �1H�#	I��(3 ��L��Aŷ���n˓� n>��N|�fs'`
#z0X�qp�;��Ja�#�����Cx��z-�a���vA(A��R�h
�rb�@�4���*�,�5�ߚGh�7Xp���l{f��N�/[�;�WF��1��D�&UH@B�Ά!��A������UTrQ����Z�宰ql�z�\A����\�f�)K�Z��x ��}�a�'	F	L�!"r� ^�t:���S�Ō�@�����2��0=hw/;�l��w��I��@9�\cA�>)�@r��b��fG�QY r_���C`�p��o�q� ,Tz����X����Bs RP��&�X[-"�0�ųd����:dМ�jm;���ŏ��VCK������Za�����l�1���8X2�d0�����/�h�D-�k�9Qn=�Q x�U�H�8^4o�:�@o���eY#��;����N�h--乛�����{��$�:�A�.X9�L-��C�I���bڤ �$T��	׶�t'
�Z{%8�K@[� �U,���9�mx�ڨ�b�lƾ�\`u���o��.�ٜs�0���mp{?	PZp����2Hز�8@��)3}Ӫ	 ���p��Ӝ�4;��)�q�Ͱ���gp���-��`��M@H�I*w��
$6�`���	K�*�i�42bVﱑ��@^Zv3�Ŝf�0X�HY˻�H;}�x���7�gB��2۳$��-�@��ԁ��P���o:p�C���z��x��MT\f��Ju��6�](�'#�/�z�T���3��V�|���2��Y�sHk<i	q(N�8ok%@���e�`0:�{g"{9H�(���� �` /��"��@�� �G�~��5�V�O/�@�D@��0�����)��2�