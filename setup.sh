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
BZh91AY&SYvPĢ $_�������������0�F� �  `�} �g]���;��{w]���M�row���=��Ru-vnw�ܴ�= V�K�:���Dh �jR�oBI&������B=S�=S��jI� ƚM��'��!�@ $��4�0!54���(�G��S�@  4�h4    4   �@ 4  �   $Ԥ�<����=@ @A�     ��D�M2L�i�̈��4�yM��h򘇚SM���OSG���OP= "P��Dɐ"bf��Q�O%?J=�M=#���d�=OD� �!�3�]J[���ٲ9���{G�����DG���#@0��V�r�B�2��#����TS[M���}��'�*��e�5�:�9Y_F�k��2#4�o��b9���϶�W��·Ż8��w�SG �aG{�j"�߆��f�p��Bu|�p;z5��u��.��7a�&,�~H�M��	J{����/#)���'���h�ٝϞ��[�c3330bs0���M��OJ�H��@�Jfĭ�9���N��i�Z�+x㟁3M7�{�����	�"���y�7��ՕF��hH|w��-�]$ò�k�wJJזwW��*�����0w�X���%���5���sA\"v^��� Wx��W��y�+B���F�䀆{�*N�z�TtCvJ�ц�9��)����l�H4i���6ܣpBq���NR<��]�3	��%9(�H�=��-��+r�H,B D"�q���
�!B�l�#*>Uvv�Bozq`�~w��qY�t5���d��䔷�o���9��������I�Nd��e
D�'y�#�:������ye�Qk +����ܗM�A���gLNË��LTu�M�|@b"HN��� ��
�C�䨽!&�$H�"I��jQ,2�'-[2�V-Z�RJ!Q��e�$�қ~��$��7%�$H�Y�˅T�������K��B�"@C<�Q�[\��㚫5b�����"�ct��TG/��Q"ڱ��IOrY�d�p��ibx���lC��:&�v�0�[Կ�@,�[�m�~��J�����xg�i�
B*���7T�;�ڗ�1�/SF71%�j\1��M�ew4�b������Ӛ[/-�}�sy�!��(1^�7t���:n:@�&1�԰2B��)n��q7�m��\�9��������]AX]c��'� � �0)tL�^~"�h^��s>$ـ��!�}��NDRH��Z��.?_���/������ѽ�q����{K�Z3	�Հ�-�Q=������8�|��'	��춺���
%*� ��'{m�1N�	yQ�ߥ�綍���2�e�3�q!�0>���o�֤��*��?*�v�9�=5�J6H�z)ށ"+�Θ�ɣe��05;}�jf=s�p���z��x��G���s�~0�%�!b�I����I�{���D) ���aޗ}�IH�p=�����y�����y�`�����֧+�1)��0L6F�$bB� �eVS!f5ROZKYcUQ��J�Ja[��$S�}p�
q�8�6��O��LD.�S:�b�P>����F�쮕)�o��\�ۉLüI� uI���<�C!F$yw��b�_��ٹ�I��4�>&H�Y���#��$	��d��0���9l��{6mQE�v�n��y��)�8���%��ΟҤ�>�M������7�+�J�]5nw�B����:d��%_}*����yĢ�̩�$�4GK��!e��C��9l��
���P*j�D��-�
��΅����=�hgS��*��4/�����l�_Z����k�+(k�!��l�3ڬ9�m�2h©B2��W]u¹V����꣸,Sf*$�P(1*Ȗ�\� RQ�u�R�Q�/������)���'�BM���&Q�,�Ko��tP�&�x0`��P��N��-�jqs&6�k��Ő�%U��2����L�d�A諁jX���J�Z�`�~��|Xac|�ipֵ�D5�I`0K��l>�qe�0�d6`�I���=(!Hv~�!0��X�+�e Xr����yT� _�U�o�oh�m��	EM${�e}��K�6z,4e5��!�C�0F��#iY�Yp]�ݼn@U7"�w��Q+�3��|R�N]JĀ��p�L�'I	J�`��d���mN��QM�pJ%2�7c�mD�t�6�T��}l��b�>�Z�׶�#���9����hY�'�am�.5)Y��4oY*ƃP�w���q�y�fT�.<g%
�r H?_�j������8$#D��\����D�& R�����d~>&AZ�-Z�010%�qA"�ǃR���g���Il����lQ��2���'Vr�šډ��/ĕ�a�t�hA����t<����z�P܀�v�/�z������ ����(
?�`�Q��b�"mXqԃ���-�cˌ1��X.��3���G�%��x'���Z�
o�j������U�)�w���~݋�E�mJ����=^S!07n�"Ɯ�2�
%�$�O��}Ɉ�N�u��04S\#	�8����xӸn�[��k�O	�AiR��t�2*`�O!rt�eٻ��cb��ָB�U�R��P5i�8$!A�Ģff3�t����4թ�]K�wH"�ҝ'oʥ��d�5$i��͕����g�ʧA�C���w���RֶT����=�t�5Sv��M���
��!��l
��Df�=�i�n,/J��4ʔ�܈��[�%���[]΃�*$Y��j� FJB�)G��y�gY^kI���}���BjB4#��o� ��j�]7��j��J��.Y�'è�"��~*u�Ȧ�6��x�i��/��=!�pR#�u��ۏ�Έ�����z��F�q��ק�v���:�z#���Z`ڦ���_�|�նWdW/T��X2��7��jT�d�ד�f�U>��ͮ�pk�Mj҉��-"�l�=�����P��Y�A�Bx����a[��q�\�+D:���z����`�]nL�\[��(��&E�'. D��;5 ��!Z�Bf�4�(f+�!T"h3�0���~�Yy��@�G�M�����V��_��Y|	p$Lx����rɒ! 2!�# K�E�D���%�d��*V24*�2���&g�Q��5���~��h?�(S&	l栅��=Z�9��ʴ��_���T����`�ouT�3A�y�7p[��jr��ւo��O�]�B��͸^����HW�����n2����g���RHu���=��PD�{w/����F	�-��)��V���b��ܭ�@&ˤ�K��b�Ɣ0s-�����3 �B��$�b�� �h���g	P1�@\�q����@eTZ���x ��x����hk�g�i�^��&�ع�Q�����mdQs�gѡ���/����#�WX����r�x\�শ��2;��BBFLV�! i9���R.J���+*8Y������OE$��4�]$�P�h�w!B�(�i�;(��� ��yb���\\��Xdc~v�����]JP�('���;dz,P-J��ī��: @�q9�(J�sGX�T���fRp:(�*V�J��F�����z�	A�OĻ�Fmb���y5y��hH=����Rz���Ʀ�l��h��kCQ��x�5�6 `&�9V �^~�{�=dD$� �a�q%1�ɏ�r�̽�'��j\�o�Ӧr�'�sP�2b[N�h�2(\9��
��B�{А�+R*fʫ,B���<�"�'��6.���Y��ɱ ��YL#���Gø@�x^[��� T��P����x��$�a6խ$�ݩ$�C9�{	AȔ"����񾚀�5�ͨ4��9�\�zpGP�n)b��I����$%��^�&��Odw��.
�h�q�d5;��0�'3!4 m�~��ed��d���zn|
�[^���(f@�4���^!�)��Cj�C."dg��lʊIMT*C��Q0�K2� �e����]R:=�PM=D�uH@�@�K*�XP��l���,�`F�MS�B�y���n�	�WR�Y���5,;q5 ��%i.��镽RPo�+E�B
�џC0́%e=!��{������6�������&���J��;�I�S�RQ�{�J���!����!�V�|�/D{"�u�~��x�4�I'tYT�RT�j�C�خ��;�[�)�`��w���X�)J PY�)�%B0d�{��5Q"UaD�]���0��W@��X���R_���r�
|�j�&�#��,�q�4jf��z�ލ
"U.ȴU�1F]b�j� �� �F١A� ��0[��b��'04j(w�W��JSp	����0pMۡ����ТՀ�XAaBB���@�@?J��̘;�D�5��4�v�p�/��.���M���~�Gy�b�\N蚶!1$�kd�;"R�8�~;Gu^�`uw�D�BIK���%y^L|\�%~xu�9:;�����6�	 ĉ�����Gc���P�@,B0�\;@OX���I�cBazd�:It�f�.3Y�(�&$��uURI$�v^"tta��r6-�!q�2EtV�Y7���A5	���&��1q��q�|��P04�l�F�l��ɟ��L�m�->zJIIMQ7b�ʎ[@=���|g:P���kA���ă��@}V�����PS�P�P��A�m�`ŋ�O��!�&f�%4�M� ��
�/@�u� e��^8����ĦNG޿�k���u�`1�}B�z�`�B��h�9B��~�����3��RL���gj�TpƄ3A�@�8Hf�[Z��U(��:�Z'k'N��H-�,6�%�&�q-��W������r�h=�G�v���G����8t�ӑ�+�f(��>R�Sa���!V�.�$ӕ�������X�p�C#�����%���sKѬJ��!r-�u�����.>[C �G�K���] k���X� އ�u�B�:�Ź�<������b#Q�$�H��W��>9oo;|�q��ݹ�<������rxm�B�N���;ԅ�$ThR d�x�c8���{�>`bM��~��zC H��m��5~�Xv=GC��0]
G��D�B�a���>� ?�"?���8�� ^����*X�  rDA����.�p� 졉D