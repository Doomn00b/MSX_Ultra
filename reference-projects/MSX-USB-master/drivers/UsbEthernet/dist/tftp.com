	� >N͞0�	� Áo� � 
x�8>�2!�G� ��� ""���x� �	� Á>""���"�O|��y8>�2�2�x�� >�2�2������( 	= ���@2C��>���T��D��>	 ��>��{�&�D�2H�c� :N�/��:O� �s��KN>͞�V:N� �g( �r(G>�2x�p(�s�K:��2:��2>N͞Y	� ��!N >��G�!�� ;>��>����!8 (x� �"��S��!�>$��	� �	� å����!yx��6 :�6 �6$q	� ���h	� �a:���>N͞�VN�	
�(	{͢�ax2!N":NG�N>͞�0x2N!N͉"�}! "*���*��!� ���! 	�����	� ���r!  "ͼ��ڹ* �] 	ͬ�d�* �] b:g:o�[�] Q*|�(*�](	� �d�! "*#"|2}2:G! ��
####������/�b�/�d�>N͞�V! "!N���!N��!� ���! 	"!N":NG�N>͞�0x2N!N͉�(͢�a"�[ͺ	�(	�͢�a�[�	
�(	{͢�ax2�}�K���	� ���r!  "ͼ����C* �] 	ͬ�d�* �] p:g:o�[�] ^�S* ��R|�( :G��(�(͢�d�! "*|2}2 ���*�]�j	� �d��b�j�d:��a~	� >�2:P� �p !E ")	� ͆!  "�"�ͼ��a��8�* �](~ �] �S	� ͐�	�  ��!N�	�(>_�C_͐�	� �4�	
�(��(�{͢�	� �4x2�r!  ">�2��Ès	� ͐�	� ͺ	�� �	
�{(���(��͢�	� �4x2�r!  "�2��!"��������	� &	� �a>	� �aͰ:B�&@�$ :C�=:�  c� �d � ��͢�a���_� ��7�G:� �7�x��:� O !� 	6 �������!  �g!� ~�(� #(��#~�(� #(���|=ݽ02!� ~� #(��|�(	~� # �� +~� (�(#��}�7������
8
�d8��8,�0�w �#�0�
�
0��q �#��6 1�d�#�
0��6 0�#��6 2����b?�|��}��� {ɸ��$ ��Unknown$0�����>2�2�:�(G> ��2���������������2�H>/<	8��B2�:��(:��(
:��0ȯ2�:<2:���>$�����  ~��#����!��E 6 ���������>���a��{���������2��6�������> w ���ѯ#~�:�Y+~��@###+�2��z:���3>�2��z�3~#�*ʢ�.ʫ�����:���~#����.�>?�Ñ:����x�+ʢ#> ��>2�� �~����@>:#~#� ���>.��>.~#�+~#� �	��.�		��ѷ�RE�3O:�y	�������������'�� ����O� �	:�2�	�2��!������>�7�'���~�w��� 	��� �	�
 ��:�	�w����������� ������!�@��O� �´	����� ���������:���	������������'���� ѷ��	� ������������ D� ��
E� �����:��|
:	�>�������!H�& ~��4
�>�u
���% 6 �����'�� ���u
>�w��w�w!�w"�w#�w$>��w�:	<2	G���������կC� �
:	<2	����:���
x�>�x�>��������!H& ��R�~�>��
#��� ����
:	=2	��w������������E� ���
:	=2	�����:��>'2��&>H2��k:��>&2��&>I2��kx�>�x�>���������!H& ��R�~��>�e�� ��:�O� �����������^:�O� �ѷ��R|�> �ʅ>��� :� #~#�:> �++���[ � G:� 	� �	� ��	� :�  � �Nf� N͐��C�C��!�:G>����!$:G>���7��!��~ ������ "��S��"�͛����[��]� �*��] �*�E �] �"�������[��]���r����>��*�[���]7?��S:
=2
7?�>�2
:<2�(
�K��7?��-	� 7� 	� :�!N��6  �6-�6 �6$N	�  � ͐�	� ɯ2:��(�	� ��[�:�!N͆N	� � ��CTimeout G:� T
N�f� �>�C! "g. "�����������:��G͓
�2�>�2
> 2�!E "�Û��ͳ!E  >��x2���ͳ* >��x2����K>	���� �}��6 .�#|��6 .�#{��6 .�#z���w �> &@�$ �> �=�                         ���   x5TFTP Client/Server for the TCP/IP UNAPI 1.1
Oduvaldo (ducasp@gmail.com) 07/2019
Based on TFTP 1.0 by Konamiman

$Usage:

* To send a file:
  TFTP <host name> S[END]|P[UT] <local filename> [<transfer filename>]
  Default for <transfer filename> is <local filename> without the drive/path

* To receive a file:
  TFTP <host name> R[CV]|G[ET] <remote filename> [<local filename>]
  Default for <local filename> is <remote filename> without the path
  (only if <remote filename> has a valid MSX-DOS path, and only in DOS 2)

* To run in server mode:
  TFTP /S|/SP

  /S uses a random number as the local TID (standard behavior)
  /SP uses 69 (the default TFTP server port) as the local TID
  (/SP is necessary when the client is the standard tftp.exe of MS Windows)
$*** Invalid parameter
$*** Missing parameter(s)
$Resolving host name... $
ERROR       OK:                 

$No network connection$No DNS servers available$This TCP/IP UNAPI implementation does not support name resolution.
An IP address must be specified instead.$ Query format error$Server failure$Name error (this host name does not exist)$Query type not implemented by the server$Query refused by the server$Server(s) not responding to queries$Total operation timeout expired$Internet connection lost$Dead-end reply (not containing answers nor redirections)$Truncated reply$ *** Error when opening file$*** Error when creating file$*** Error when reading from file$*** Error when writing to file$
*** Error$
*** Error received: $(No message included) 
*** Timeout - Transmission aborted
$Disk error File not found or invalid path >>> Now running in server mode. Press any key to exit.
$
Receiving (KBytes): $
Sending (KBytes): $Read request sent...$Write request sent...$

Transfer complete.
$
* Waiting for incoming connection...

$Received read request for file $Received write request for file $Error returned: $OCTET TCP/IP *** No TCP/IP UNAPI implementation found.
$*** This TCP/IP UNAPI implementation does not support UDP connections
$*** No free UDP connections available
$