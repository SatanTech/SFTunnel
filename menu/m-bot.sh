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
BZh91AY&SY�bP �_�m}����������PD@  `���R�Z4l�J�  )E  @�&D��42bi���� 44h�F�OP  �1@d ���d  hhhh��� � �  "��j�MDh���P4hM@  hhhh��� � �  $H��M4L�44z�H�h��G���=����&C������n�[��Z`
������p4�*����(�C�OE�PXbA�1�%hࢺB��ь�~_�Q<)1>���$ZY�Su�!"�\�2����;A����TՅk�I��.�kX���\/����ߢ/�%�8�P5a��~�e5R�\����=w4$$\��c��J`����d$����C�J�H�0=h��7���d�8�)�1%R31B���%N$W`�H�$Kp���J���{��!K��t��v����ώ:P��-��]ǰ�P�V
�r�~���s����%��a��x��wX��++�(�*|��$�!&j��ܢ߷V�|����|���ydjy
F�	�p|����d����R�0��":!U�-�>%��e��j9��5����TwU^8�A�-$N^��]�b��H<�ddY�=���©�:g(�ؙT|�5u$��'D|VW.
���%M�5��>��K�)q�p�H���α_R�S-�M塥���a�i'J��b��Њ�HiB�6|����TK�q7}�1��Y 4�i|�H�s�<��+��~��IG��ɷ�gYZ�3���v�	�0cC[֏�\㬮��F��ނ�:ؑ{w�I��F�H�4�L�����	�l/����hA ����k�o(�K���0>휎\3
Rf!	J��!-���X�ڈ!"��/P5�
x��:�ٟ���j����Q��*�����N���oՁP��������g�ہ�Si!�4�=�%�ZO�g/������B���It�l�N�!�!Vi��&9�˩c'7���V�\_�8=�����8�7�c��aa��M����A�:(m���-��uS�y������$�V����.+���4�P�m��ӬK�1	yY˖��Rf6�*�䗟&�Oa��C�|҂NQWeku����hH�h��P!-8K}EȠ�n��mW�@m/.h��t.B��`%�9�<L)}�?�.�y�cxt�LB�c�'}bτ�G �#�A� �[��O@x�BV�R;XwٴQ�|�Q�*o��	95A�I��&U��g��"��V�«X�K�փB]"L�DC�!��~%�|�\�&O�4OD���m&�Ch�<����HÝe��_w��E�0!3�=z�=7��~��DD�7ݔ��y��������|z��~W�H��W\�Y��6�H^f/�3�ds���Ở�H`��C�$2��N�����*��U�sw�
�T�L�l���ģH$O��H�=����W��#GN��G�@��s�o8#���ʂ�����W.��tO#���k�����[ն��Z7-��d0�~L��b`�D������C���,�W�k-'|O�e	��4
��Nd��,tI���8I]�~o̩.��(�T|��+�M+�R��H���j�7J6� �$d�S�uK�d���^����/q�T�"�E���H�@}`V-�	{&V�w�G0�\B��~F��g��"��9UkXԥإ@$�9�74H����C"tH dl*�.���P�rN�pF�vK�F(�Eh�g��L���@g�yE�ފ �\����r�^}J33l�X�ki$ҘZ|`�]�KS)�9u7���Nv�4I��f��[�)�
�Jڴ܄�&e
(۹	-��P+e��'�Z��;�C)"�A}����0BiO��ѩ �����4��8<�ee����ݞj�-(�R1H�%��A�`)�U)m0��pT ��`����+}��U�!1���)�/BY��R���m��[J_�oH�H+_��8�U���i"�PH 9�G
z�i�Hv4���w�dpA\�I��Vs�6�9��R�2��
b�Z{c�O����q7^�F[]a�z�4���r��1%�u� a1�4CD"��@��5&I&���έ]A�Q�� ��%��KS`�Ib��`9A2wyL0^#�re�26]{A�^�)i�d��D�H�X�U����lKt@�4cKvh`:�ցI�j�Y�RAH�4#�r��Y >g
͈K���*�q)�&���eƣ�aQ, �3=�K��}2�V�)Jl�n(I0)-� Xvq��s��b�"=C�T�F/a��-hKV�3�iD��ɦf�B�T�E��		����8B��L	�A	�!&�2qBt	Z�Aa�SP�~┷�$VUv��ST ��(&B3I*@.�J��EA>���P�N��G�@0ƻ����=o)���V�4��7�u4+y�.�ǰ��lH����qp$���M3`Hе%���5蚸`�\����s�h?GR��:���\ô�J�kH��KYJ�����Z�"!�8(�2��w(��Aze�V�b����d�T�L�!` k4�VJ�%���.�b�Z������ ��*C�X�Ai�`Md��^ Ќ���jI,�.�.7��mӔ"�%�\��$"�ص�)��$AX���C	��h�˵/	Q!z��5@����	H�4�&�$A��$2jrqNJs�3|��]��((��
��h
�wSj/�*)��11�4�ST�e�z
�)�s�4�Ɖ��X�
�x��B�$k�f��p4`K~�e�$�����8��5���]�h��bn�R,�6��/�i܄�9�X�]D�㥃4��nE矢�8�
%oo$w���v�q ��b�x�( ��:F���L�\��f������͡&u�(��k(	'�]B.@v!T���-ÒG��8�i�G��!�cl2%���G�����PD�	���m
!A�J�@��)
B��w$S�	!� 