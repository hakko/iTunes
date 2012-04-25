FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"List MIAs" for iTunes
written by Doug Adams
dougadams@mac.com

v2.1 feb 17 12
- maintenance update
- minor UI fixes

v2.0 nov 6 11
- written as a Cocoa-AppleScript applet for OS X 10.6 or 10.7 only
- improves progress indicator
- no longer lists playlists

v1.2 sept 8 03
- make text file routine removes same-named text file

v1.1 aug 29 03
- now lists missing tracks followed by list of playlists they're supposed to be in

v1.0 dec 17 02
- initial release


Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
dougscripts.com

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 		� 
 " L i s t   M I A s "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 2 . 1   f e b   1 7   1 2 
 -   m a i n t e n a n c e   u p d a t e 
 -   m i n o r   U I   f i x e s 
 
 v 2 . 0   n o v   6   1 1 
 -   w r i t t e n   a s   a   C o c o a - A p p l e S c r i p t   a p p l e t   f o r   O S   X   1 0 . 6   o r   1 0 . 7   o n l y 
 -   i m p r o v e s   p r o g r e s s   i n d i c a t o r 
 -   n o   l o n g e r   l i s t s   p l a y l i s t s 
 
 v 1 . 2   s e p t   8   0 3 
 -   m a k e   t e x t   f i l e   r o u t i n e   r e m o v e s   s a m e - n a m e d   t e x t   f i l e 
 
 v 1 . 1   a u g   2 9   0 3 
 -   n o w   l i s t s   m i s s i n g   t r a c k s   f o l l o w e d   b y   l i s t   o f   p l a y l i s t s   t h e y ' r e   s u p p o s e d   t o   b e   i n 
 
 v 1 . 0   d e c   1 7   0 2 
 -   i n i t i a l   r e l e a s e 
 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 d o u g s c r i p t s . c o m 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 l     ��������  ��  ��        l     ��  ��    ? 9 some of the UI routines used in this script are based on     �   r   s o m e   o f   t h e   U I   r o u t i n e s   u s e d   i n   t h i s   s c r i p t   a r e   b a s e d   o n      l     ��  ��    0 * examples provided by macosxautomation.com     �   T   e x a m p l e s   p r o v i d e d   b y   m a c o s x a u t o m a t i o n . c o m      l     ��������  ��  ��        j     �� �� $0 nssortdescriptor NSSortDescriptor  4     �� 
�� 
pcls  m       �     N S S o r t D e s c r i p t o r      j    ��  �� 0 nsarray NSArray   4    �� !
�� 
pcls ! m   	 
 " " � # #  N S A r r a y   $ % $ j    �� &��  0 nsmutablearray NSMutableArray & 4    �� '
�� 
pcls ' m     ( ( � ) )  N S M u t a b l e A r r a y %  * + * j    �� ,�� *0 nsmutabledictionary NSMutableDictionary , 4    �� -
�� 
pcls - m     . . � / / & N S M u t a b l e D i c t i o n a r y +  0 1 0 j    "�� 2�� 0 nsstring NSString 2 4    !�� 3
�� 
pcls 3 m     4 4 � 5 5  N S S t r i n g 1  6 7 6 j   # )�� 8�� 0 nsthread NSThread 8 4   # (�� 9
�� 
pcls 9 m   % & : : � ; ;  N S T h r e a d 7  < = < j   * 0�� >��  0 progresswindow progressWindow > 4   * /�� ?
�� 
pcls ? m   , - @ @ � A A  p r o g r e s s W i n d o w =  B C B j   1 3�� D�� $0 myprogresswindow myProgressWindow D m   1 2��
�� 
msng C  E F E j   4 8�� G�� 0 mytitle myTitle G m   4 7 H H � I I  L i s t   M I A s F  J K J l     ��������  ��  ��   K  L M L j   9 <�� N�� 0 textfilepath textFilePath N J   9 ;����   M  O P O j   = @�� Q�� 0 listedtracks listedTracks Q J   = ?����   P  R S R j   A D�� T�� 0 tracklisting trackListing T J   A C����   S  U V U j   E H�� W�� 0 totaltracks totalTracks W J   E G����   V  X Y X j   I L�� Z�� 0 mainlibrary mainLibrary Z J   I K����   Y  [ \ [ l     ��������  ��  ��   \  ] ^ ] i   M P _ ` _ I     ������
�� .aevtoappnull  �   � ****��  ��   ` k    x a a  b c b Z     % d e���� d l     f���� f =     g h g I     �������� 0 
accesshook 
accessHook��  ��   h m    ��
�� boovfals��  ��   e Q   
 ! i j k i O    l m l I   ������
�� .aevtquitnull��� ��� null��  ��   m  f     j R      �� n��
�� .ascrerr ****      � **** n o      ���� 0 m  ��   k k    ! o o  p q p l   �� r s��   r  log m    s � t t 
 l o g   m q  u�� u L    !����  ��  ��  ��   c  v w v l  & &��������  ��  ��   w  x y x n  & + z { z I   ' +�������� 0 performinit performInit��  ��   {  f   & ' y  | } | l  , ,��������  ��  ��   }  ~  ~ O  , @ � � � I   4 ?�� ����� Z0 +readyprogresswindowwithminimum_withmaximum_ +readyProgressWindowWithMinimum_withMaximum_ �  � � � m   5 6����   �  ��� � o   6 ;���� 0 totaltracks totalTracks��  ��   � o   , 1���� $0 myprogresswindow myProgressWindow   � � � O  A R � � � I   K Q�� ����� "0 setstringvalue_ setStringValue_ �  ��� � m   L M � � � � � $ E x a m i n i n g   l i b r a r y &��  ��   � n  A H � � � o   F H����  0 progressstatus progressStatus � o   A F���� $0 myprogresswindow myProgressWindow �  � � � l  S S��������  ��  ��   �  � � � Y   S � ��� � ��� � k   a � � �  � � � O  a o � � � I   i n�������� 0 doeventfetch doEventFetch��  ��   � o   a f���� $0 myprogresswindow myProgressWindow �  � � � Z   p � � ��� � � =  p { � � � c   p y � � � l  p w ����� � n  p w � � � o   u w���� 0 
shouldstop 
shouldStop � o   p u���� $0 myprogresswindow myProgressWindow��  ��   � m   w x��
�� 
bool � m   y z��
�� boovtrue � k   ~ � � �  � � � O  ~ � � � � I   � ��������� *0 closeprogresswindow closeProgressWindow��  ��   � o   ~ ����� $0 myprogresswindow myProgressWindow �  ��� � O  � � � � � I  � �������
�� .aevtquitnull��� ��� null��  ��   �  f   � ���  ��   � O  � � � � � I   � ��� ����� p0 6incrementprogresswindowwithcounter_itemname_itemcount_ 6incrementProgressWindowWithCounter_itemName_itemCount_ �  � � � o   � ����� 0 t   �  � � � n  � � � � � I   � ��� ����� &0 stringwithstring_ stringWithString_ �  ��� � n  � � � � � I   � ��� �����  0 getnameoftrack getNameOfTrack �  ��� � o   � ����� 0 t  ��  ��   �  f   � ���  ��   � o   � ����� 0 nsstring NSString �  ��� � o   � ����� 0 totaltracks totalTracks��  ��   � o   � ����� $0 myprogresswindow myProgressWindow �  ��� � n  � � � � � I   � ��� �����  0 checktrackitem checkTrackItem �  ��� � o   � ����� 0 t  ��  ��   �  f   � ���  �� 0 t   � m   V W����  � o   W \���� 0 totaltracks totalTracks��   �  � � � l  � ���~�}�  �~  �}   �  � � � Z   �m � ��| � � ?   � � � � � o   � ��{�{ 0 listedtracks listedTracks � m   � ��z�z   � k   � � �  � � � l  � ��y � ��y   �  log "trackListing:"    � � � � & l o g   " t r a c k L i s t i n g : " �  � � � l  � ��x � ��x   �  log trackListing    � � � �   l o g   t r a c k L i s t i n g �  � � � l  � ��w�v�u�w  �v  �u   �  � � � n  � � � � � I   � ��t ��s�t .0 sortusingdescriptors_ sortUsingDescriptors_ �  ��r � n  � � � � � I   � ��q ��p�q $0 arraywithobject_ arrayWithObject_ �  ��o � n  � � � � � I   � ��n ��m�n D0  sortdescriptorwithkey_ascending_  sortDescriptorWithKey_ascending_ �  � � � m   � � � � � � �  a r t �  ��l � m   � ��k
�k boovtrue�l  �m   � o   � ��j�j $0 nssortdescriptor NSSortDescriptor�o  �p   � o   � ��i�i 0 nsarray NSArray�r  �s   � o   � ��h�h 0 tracklisting trackListing �  � � � l  � ��g�f�e�g  �f  �e   �  � � � I   � ��d�c�b�d &0 prepindeterminate prepIndeterminate�c  �b   �  � � � l  � ��a�`�_�a  �`  �_   �  � � � X   �� ��^ � � k  � � �  � � � r  Q � � � c  M � � � l I ��]�\ � b  I �  � b  E b  ; b  7 b  - b  )	
	 b   l �[�Z c   l �Y�X n  o  �W�W 0 art   o  �V�V 0 arow aRow�Y  �X   m  �U
�U 
ctxt�[  �Z   m   �    -  
 l (�T�S c  ( l $�R�Q n $ o   $�P�P 0 alb   o   �O�O 0 arow aRow�R  �Q   m  $'�N
�N 
ctxt�T  �S   m  ), �    -   l -6�M�L c  -6 l -2 �K�J  n -2!"! o  .2�I�I 0 nom  " o  -.�H�H 0 arow aRow�K  �J   m  25�G
�G 
ctxt�M  �L   m  7:## �$$    ( l ;D%�F�E% c  ;D&'& l ;@(�D�C( n ;@)*) o  <@�B�B 0 kin  * o  ;<�A�A 0 arow aRow�D  �C  ' m  @C�@
�@ 
ctxt�F  �E    m  EH++ �,,  )�]  �\   � m  IL�?
�? 
ctxt � o      �>�> 0 mess   � -�=- Q  R�./�<. I U��;0�:
�; .sysoexecTEXT���     TEXT0 b  U~121 b  Ul343 b  Uh565 b  Ud787 b  U`9:9 m  UX;; �<< 
 e c h o  : n  X_=>= 1  [_�9
�9 
strq> o  X[�8�8 0 mess  8 1  `c�7
�7 
spac6 m  dg?? �@@  > >4 1  hk�6
�6 
spac2 n  l}ABA 1  y}�5
�5 
strqB n  lyCDC 1  uy�4
�4 
psxpD l luE�3�2E c  luFGF o  lq�1�1 0 textfilepath textFilePathG m  qt�0
�0 
ctxt�3  �2  �:  / R      �/�.�-
�/ .ascrerr ****      � ****�.  �-  �<  �=  �^ 0 arow aRow � o   ��,�, 0 tracklisting trackListing � HIH l ���+�*�)�+  �*  �)  I JKJ O ��LML I  ���(N�'�(  0 stopanimation_ stopAnimation_N O�&O  f  ���&  �'  M n ��PQP o  ���%�% .0 thisprogressindicator thisProgressIndicatorQ o  ���$�$ $0 myprogresswindow myProgressWindowK RSR I ���#T�"
�# .sysodelanull��� ��� nmbrT m  ��UU ?�      �"  S VWV l ���!� ��!  �   �  W XYX O ��Z[Z I  ������ *0 closeprogresswindow closeProgressWindow�  �  [ o  ���� $0 myprogresswindow myProgressWindowY \]\ l ������  �  �  ] ^_^ r  ��`a` m  ��bb �cc    w a sa o      �� 0 ps  _ ded Z ��fg��f > ��hih o  ���� 0 listedtracks listedTracksi m  ���� g r  ��jkj m  ��ll �mm  s   w e r ek o      �� 0 ps  �  �  e non I �����
� .miscactvnull��� ��� null�  �  o p�p r  �qrq n  �sts 1  �
� 
bhitt l �u��u I ��
vw
�
 .sysodlogaskr        TEXTv b  ��xyx b  ��z{z b  ��|}| b  ��~~ b  ����� m  ���� ���  F i n i s h e d .� o  ���	
�	 
ret  o  ���� 0 listedtracks listedTracks} m  ���� ���    t r a c k{ o  ���� 0 ps  y m  ���� ���    f o u n d .w ���
� 
btns� J  ��� ��� m  ���� ���  T h a n k s�  � ���
� 
dflt� m  �� � ���
� 
appr� o  �� 0 mytitle myTitle� � ���
�  
disp� m  ���� ��  �  �  r o      ���� 0 quitoptions quitOptions�  �|   � k  "m�� ��� l ""��������  ��  ��  � ��� O "0��� I  */�������� *0 closeprogresswindow closeProgressWindow��  ��  � o  "'���� $0 myprogresswindow myProgressWindow� ��� I 16������
�� .miscactvnull��� ��� null��  ��  � ���� Z 7m������� = 7d��� n  7b��� 1  ^b��
�� 
gavu� l 7^������ I 7^����
�� .sysodlogaskr        TEXT� m  7:�� ��� * N o   d e a d   t r a c k s   f o u n d .� ����
�� 
btns� J  =B�� ���� m  =@�� ���  T h a n k s��  � ����
�� 
dflt� m  EF���� � ����
�� 
disp� m  IJ���� � ����
�� 
appr� o  MR���� 0 mytitle myTitle� �����
�� 
givu� m  UX���� ��  ��  ��  � m  bc��
�� boovtrue� L  gi����  ��  ��  ��   � ��� l nn��������  ��  ��  � ���� O nx��� I rw������
�� .aevtquitnull��� ��� null��  ��  �  f  no��   ^ ��� l     ��������  ��  ��  � ��� i   Q T��� I      �������  0 getnameoftrack getNameOfTrack� ���� o      ���� 0 i  ��  ��  � O    ��� L    �� l   ������ c    ��� l   ������ e    �� n    ��� 1    ��
�� 
pnam� n    ��� 4    ���
�� 
cFlT� o    ���� 0 i  � o    ���� 0 mainlibrary mainLibrary��  ��  � m    ��
�� 
ctxt��  ��  � 5     �����
�� 
capp� m    �� ���   c o m . a p p l e . i T u n e s
�� kfrmID  � ��� l     ��������  ��  ��  � ��� i  U X��� I      �������� &0 prepindeterminate prepIndeterminate��  ��  � k     h�� ��� O    ��� I   
 ������� "0 setstringvalue_ setStringValue_� ���� m    �� ��� ( P r e p a r i n g   t e x t   d a t a &��  ��  � n    ��� o    ����  0 progressstatus progressStatus� o     ���� $0 myprogresswindow myProgressWindow� ��� O   #��� I    "������� "0 setstringvalue_ setStringValue_� ���� m    �� ���  ��  ��  � n   ��� o    ���� $0 progressnextitem progressNextItem� o    ���� $0 myprogresswindow myProgressWindow� ��� O  $ 5��� I   . 4������� 0 
setstring_ 
setString_� ���� m   / 0�� ���  ��  ��  � n  $ +��� o   ) +���� "0 progresscounter progressCounter� o   $ )���� $0 myprogresswindow myProgressWindow� ��� I  6 ;�����
�� .sysodelanull��� ��� nmbr� m   6 7�� ?���������  � ��� O   < b��� k   F a��    I   F L������ 0 setminvalue_ setMinValue_ �� m   G H����  ��  ��    I   M S������ 0 setmaxvalue_ setMaxValue_ �� m   N O����  ��  ��   	 I   T Z��
���� &0 setindeterminate_ setIndeterminate_
 �� m   U V��
�� boovtrue��  ��  	 �� I   [ a������ "0 startanimation_ startAnimation_ ��  f   \ ]��  ��  ��  � n  < C o   A C���� .0 thisprogressindicator thisProgressIndicator o   < A���� $0 myprogresswindow myProgressWindow� �� I  c h����
�� .sysodelanull��� ��� nmbr m   c d ?���������  ��  �  l     ��������  ��  ��    i   Y \ I      ������  0 checktrackitem checkTrackItem �� o      ���� 0 i  ��  ��   O     I Q    H  k    6!! "#" r    $%$ n    &'& 4    ��(
�� 
cFlT( o    ���� 0 i  ' o    ���� 0 mainlibrary mainLibrary% o      ���� 0 	thistrack 	thisTrack# )��) Z    6*+����* =   ,-, n   ./. 1    ��
�� 
pLoc/ o    ���� 0 	thistrack 	thisTrack- m    ��
�� 
msng+ k    200 121 n   $343 I    $��5���� 0 add_to_text  5 6��6 o     ���� 0 	thistrack 	thisTrack��  ��  4  f    2 7��7 r   % 2898 [   % ,:;: o   % *���� 0 listedtracks listedTracks; m   * +���� 9 o      ���� 0 listedtracks listedTracks��  ��  ��  ��   R      ��<�
�� .ascrerr ****      � ****< o      �~�~ 0 m  �    O  > H=>= I  B G�}�|�{
�} .ascrcmnt****      � ****�|  �{  >  f   > ? 5     �z?�y
�z 
capp? m    @@ �AA   c o m . a p p l e . i T u n e s
�y kfrmID   BCB l     �x�w�v�x  �w  �v  C DED i  ] `FGF I      �uH�t�u 0 add_to_text  H I�sI o      �r�r 0 t  �s  �t  G k     �JJ KLK O     IMNM O   HOPO r    GQRQ J    #SS TUT 1    �q
�q 
pnamU VWV 1    �p
�p 
pArtW XYX 1    �o
�o 
pAlbY Z[Z c    \]\ l   ^�n�m^ e    __ 1    �l
�l 
pDID�n  �m  ] m    �k
�k 
ctxt[ `�j` c    !aba l   c�i�hc e    dd 1    �g
�g 
pKnd�i  �h  b m     �f
�f 
ctxt�j  R J      ee fgf o      �e�e 0 nom  g hih o      �d�d 0 art  i jkj o      �c�c 0 alb  k lml o      �b�b 0 dbid  m n�an o      �`�` 0 kin  �a  P o    	�_�_ 0 t  N 5     �^o�]
�^ 
cappo m    pp �qq   c o m . a p p l e . i T u n e s
�] kfrmID  L rsr l  J J�\�[�Z�\  �[  �Z  s tut Z  J Wvw�Y�Xv =  J Mxyx o   J K�W�W 0 nom  y m   K Lzz �{{  w r   P S|}| m   P Q~~ �  [ S o n g   N a m e   n / a ]} o      �V�V 0 nom  �Y  �X  u ��� Z  X e���U�T� =  X [��� o   X Y�S�S 0 art  � m   Y Z�� ���  � r   ^ a��� m   ^ _�� ���  U n k n o w n   A r t i s t� o      �R�R 0 art  �U  �T  � ��� Z  f w���Q�P� =  f k��� o   f g�O�O 0 alb  � m   g j�� ���  � r   n s��� m   n q�� ���  U n k n o w n   A l b u m� o      �N�N 0 alb  �Q  �P  � ��� l  x x�M�L�K�M  �L  �K  � ��� O  x ���� r   � ���� n  � ���� n  � ���� I   � ��J�I�H�J 0 init  �I  �H  � I   � ��G�F�E�G 	0 alloc  �F  �E  �  g   � �� o      �D�D 0 	thistrack 	thisTrack� o   x }�C�C *0 nsmutabledictionary NSMutableDictionary� ��� O   � ���� k   � ��� ��� I   � ��B��A�B $0 setvalue_forkey_ setValue_forKey_� ��� o   � ��@�@ 0 nom  � ��?� m   � ��� ���  n o m�?  �A  � ��� I   � ��>��=�> $0 setvalue_forkey_ setValue_forKey_� ��� o   � ��<�< 0 art  � ��;� m   � ��� ���  a r t�;  �=  � ��� I   � ��:��9�: $0 setvalue_forkey_ setValue_forKey_� ��� o   � ��8�8 0 alb  � ��7� m   � ��� ���  a l b�7  �9  � ��� I   � ��6��5�6 $0 setvalue_forkey_ setValue_forKey_� ��� o   � ��4�4 0 dbid  � ��3� m   � ��� ���  d b i d�3  �5  � ��2� I   � ��1��0�1 $0 setvalue_forkey_ setValue_forKey_� ��� o   � ��/�/ 0 kin  � ��.� m   � ��� ���  k i n�.  �0  �2  � o   � ��-�- 0 	thistrack 	thisTrack� ��� n  � ���� I   � ��,��+�, 0 
addobject_ 
addObject_� ��*� o   � ��)�) 0 	thistrack 	thisTrack�*  �+  � o   � ��(�( 0 tracklisting trackListing� ��'� l  � ��&�%�$�&  �%  �$  �'  E ��� l     �#�"�!�#  �"  �!  � ��� i  a d��� I      � ���  0 performinit performInit�  �  � k     ��� ��� O    ��� r    ��� n   ��� n  	 ��� I    ���� &0 initwithcapacity_ initWithCapacity_� ��� m    ����  �  � I   	 ���� 	0 alloc  �  �  �  g    	� o      �� 0 tracklisting trackListing� o     ��  0 nsmutablearray NSMutableArray� ��� I    ���� 0 requestfile requestFile�  �  � ��� r     '��� m     !��  � o      �� 0 listedtracks listedTracks� ��� O  ( @��� r   0 ?��� n  0 9��� I   5 9���� 0 init  �  �  � I   0 5���
� 	0 alloc  �  �
  � o      �	�	 $0 myprogresswindow myProgressWindow� o   ( -��  0 progresswindow progressWindow� ��� r   A F��� n   A D��� 1   B D�
� 
pnam�  f   A B� o      �� 0 thisappname thisAppName� ��� O  G Y   I   O X��� �0 Icreateprogresswindowwithtitle_intialmessage_intialminimum_initialmaximum_ IcreateProgressWindowWithTitle_intialMessage_intialMinimum_initialMaximum_  o   P Q�� 0 thisappname thisAppName  m   Q R �  O n e   m o m e n t & 	
	 m   R S��  
 � m   S T� �   �  �   o   G L���� $0 myprogresswindow myProgressWindow�  O  Z i I   b h������ .0 sleepfortimeinterval_ sleepForTimeInterval_ �� m   c d���� ��  ��   o   Z _���� 0 nsthread NSThread �� O   j � k   r �  r   r | 4   r v��
�� 
cLiP m   t u����  o      ���� 0 mainlibrary mainLibrary �� r   } � I  } �����
�� .corecnte****       **** n   } �  2  � ���
�� 
cFlT  o   } ����� 0 mainlibrary mainLibrary��   o      ���� 0 totaltracks totalTracks��   5   j o��!��
�� 
capp! m   l m"" �##   c o m . a p p l e . i T u n e s
�� kfrmID  ��  � $%$ l     ��������  ��  ��  % &'& i  e h()( I      �������� 0 requestfile requestFile��  ��  ) k     �** +,+ r     -.- m     ��
�� 
msng. o      ���� 0 textfilepath textFilePath, /0/ Q    L1231 k    -44 565 r    787 l   9����9 I   ����:
�� .sysonwflfile    ��� null��  : ��;<
�� 
prmt; m    == �>> P E n t e r   a   n a m e   f o r   t h e   e x p o r t e d   M I A s   f i l e :< ��?��
�� 
dfnm? m    @@ �AA  L i s t M I A s��  ��  ��  8 o      ���� 0 textfilepath textFilePath6 B��B Z   -CD����C =   "EFE o     ���� 0 textfilepath textFilePathF m     !��
�� boovfalsD R   % )������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  2 R      ������
�� .ascrerr ****      � ****��  ��  3 Q   5 LGHIG O  8 BJKJ I  < A������
�� .aevtquitnull��� ��� null��  ��  K  f   8 9H R      ��L��
�� .ascrerr ****      � ****L o      ���� 0 m  ��  I L   J L����  0 MNM Z  M oOP����O H   M WQQ D   M VRSR c   M TTUT o   M R���� 0 textfilepath textFilePathU m   R S��
�� 
ctxtS m   T UVV �WW  . t x tP r   Z kXYX c   Z eZ[Z l  Z c\����\ b   Z c]^] l  Z a_����_ c   Z a`a` o   Z _���� 0 textfilepath textFilePatha m   _ `��
�� 
ctxt��  ��  ^ m   a bbb �cc  . t x t��  ��  [ m   c d��
�� 
ctxtY o      ���� 0 textfilepath textFilePath��  ��  N ded l  p p��fg��  f   if exists, delete   g �hh $   i f   e x i s t s ,   d e l e t ee i��i Q   p �jk��j I  s ���l��
�� .sysoexecTEXT���     TEXTl b   s �mnm m   s too �pp  r m  n n   t �qrq 1   } ���
�� 
strqr n   t }sts 1   { }��
�� 
psxpt l  t {u����u c   t {vwv o   t y���� 0 textfilepath textFilePathw m   y z��
�� 
ctxt��  ��  ��  k R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ' xyx l     ��������  ��  ��  y z{z i   i l|}| I      �������� 0 
accesshook 
accessHook��  ��  } k     �~~ � Z     $������� =    ��� n    ��� I    �������� *0 checkitunesisactive checkItunesIsActive��  ��  �  f     � m    ��
�� boovfals� k   
  �� ��� r   
 ��� l  
 ������ I  
 ����
�� .sysodlogaskr        TEXT� m   
 �� ��� , i T u n e s   i s   n o t   r u n n i n g .� ����
�� 
btns� J    �� ���� m    �� ���  O K��  � ����
�� 
dflt� m    ���� � ����
�� 
appr� m    �� ��� " C a n n o t   p r o c e e d . . .� ����
�� 
disp� m    ����  � �����
�� 
givu� m    ���� ��  ��  ��  � o      ���� 0 opt  � ���� L     �� m    ��
�� boovfals��  ��  ��  � ��� l  % %��������  ��  ��  � ��� Z   % I������� =  % ,��� n  % *��� I   & *�������� ,0 itunesisnotaccesible itunesIsNotAccesible��  ��  �  f   % &� m   * +��
�� boovtrue� k   / E�� ��� r   / B��� l  / @������ I  / @����
�� .sysodlogaskr        TEXT� m   / 0�� ��� j C l o s e   a n y   u t i l i t y   w i n d o w s   t h a t   m a y   b e   o p e n   i n   i T u n e s .� ����
�� 
btns� J   1 4�� ���� m   1 2�� ���  O K��  � ����
�� 
dflt� m   5 6���� � ����
�� 
appr� m   7 8�� ��� " C a n n o t   p r o c e e d . . .� ����
�� 
disp� m   9 :����  � �����
�� 
givu� m   ; <���� ��  ��  ��  � o      �� 0 opt  � ��~� L   C E�� m   C D�}
�} boovfals�~  ��  ��  � ��� l  J J�|�{�z�|  �{  �z  � ��� Z   J ����y�x� n  J O��� I   K O�w�v�u�w 0 isfullscreen isFullScreen�v  �u  �  f   J K� k   R ��� ��� I  R Y�t��s
�t .sysodelanull��� ��� nmbr� m   R U�� ?�      �s  � ��� r   Z |��� l  Z z��r�q� I  Z z�p��
�p .sysodisAaleR        TEXT� m   Z ]�� ��� < i T u n e s   i s   i n   f u l l   s c r e e n   m o d e .� �o��
�o 
mesS� m   ` c�� ��� T h i s   a p p l e t ' s   i n t e r f a c e   c a n n o t   b e   d i s p l a y e d   w i t h   i T u n e s   w h i l e   i n   f u l l   s c r e e n   m o d e . 
 	 	 
 Y o u   c a n   Q u i t   a n d   r e - l a u n c h   t h i s   a p p l e t   a f t e r   t a k i n g   i T u n e s   o u t   o f   f u l l   s c r e e n   m o d e . 
 
 O r   y o u   c a n   P r o c e e d   A n y w a y ,   b u t   i T u n e s   w i l l   n o t   b e   v i s i b l e   w h i l e   t h e   a p p l e t   i s   r u n n i n g .� �n��
�n 
btns� J   d l�� ��� m   d g�� ���  Q u i t� ��m� m   g j�� ���  P r o c e e d   A n y w a y�m  � �l��
�l 
dflt� m   m n�k�k � �j��
�j 
as A� m   q t�i
�i EAlTwarN� �h��g
�h 
givu� m   u v�f�f �g  �r  �q  � o      �e�e 0 opt  � ��d� Z   } ����c�b� =  } ���� n   } ���� 1   ~ ��a
�a 
bhit� o   } ~�`�` 0 opt  � m   � ��� ���  q u i t� k   � ��� ��� O  � ���� I  � ��_�^�]
�_ .miscactvnull��� ��� null�^  �]  � m   � ����                                                                                  hook  alis    6  Lion                       �CgOH+     �
iTunes.app                                                      b��3�        ����  	                Applications    �C��      �k�       �  Lion:Applications: iTunes.app    
 i T u n e s . a p p  
  L i o n  Applications/iTunes.app   / ��  � ��\� L   � �   m   � ��[
�[ boovfals�\  �c  �b  �d  �y  �x  �  l  � ��Z�Y�X�Z  �Y  �X   �W L   � � m   � ��V
�V boovtrue�W  {  l     �U�T�S�U  �T  �S    i  m p	
	 I      �R�Q�P�R *0 checkitunesisactive checkItunesIsActive�Q  �P  
 O     L     l   �O�N I   �M�L
�M .coredoexbool       obj  l   �K�J 6    3    �I
�I 
prcs =    1   	 �H
�H 
pnam m     �  i T u n e s�K  �J  �L  �O  �N   m     �                                                                                  sevs  alis    z  Lion                       �CgOH+     �System Events.app                                                ��         ����  	                CoreServices    �C��      � PB       �   �   �  5Lion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  L i o n  -System/Library/CoreServices/System Events.app   / ��    l     �G�F�E�G  �F  �E    i   q t I      �D�C�B�D ,0 itunesisnotaccesible itunesIsNotAccesible�C  �B   k     #   Q      !"#! t    $%$ O   &'& e    (( n    )*) 1    �A
�A 
pnam* 4    �@+
�@ 
cLiP+ m    �?�? ' 5    
�>,�=
�> 
capp, m    -- �..   c o m . a p p l e . i T u n e s
�= kfrmID  % m    �<�< " R      �;�:�9
�; .ascrerr ****      � ****�:  �9  # L     // m    �8
�8 boovtrue  0�70 L   ! #11 m   ! "�6
�6 boovfals�7   232 l     �5�4�3�5  �4  �3  3 454 i   u x676 I      �2�1�0�2 0 isfullscreen isFullScreen�1  �0  7 Q     %89:8 O    ;<; O    =>= l   ?@A? L    BB l   C�/�.C e    DD n    EFE 1    �-
�- 
valLF n    GHG 4    �,I
�, 
attrI m    JJ �KK  A X F u l l S c r e e nH 4    �+L
�+ 
cwinL m    �*�* �/  �.  @   or whatever   A �MM    o r   w h a t e v e r> 4    �)N
�) 
prcsN m   	 
OO �PP  i T u n e s< m    QQ�                                                                                  sevs  alis    z  Lion                       �CgOH+     �System Events.app                                                ��         ����  	                CoreServices    �C��      � PB       �   �   �  5Lion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  L i o n  -System/Library/CoreServices/System Events.app   / ��  9 R      �(�'�&
�( .ascrerr ****      � ****�'  �&  : L   # %RR m   # $�%
�% boovfals5 S�$S l     �#�"�!�#  �"  �!  �$       � TUVWXYZ[� H\]^_`abcdefghijk�   T ���������������������
�	���� $0 nssortdescriptor NSSortDescriptor� 0 nsarray NSArray�  0 nsmutablearray NSMutableArray� *0 nsmutabledictionary NSMutableDictionary� 0 nsstring NSString� 0 nsthread NSThread�  0 progresswindow progressWindow� $0 myprogresswindow myProgressWindow� 0 mytitle myTitle� 0 textfilepath textFilePath� 0 listedtracks listedTracks� 0 tracklisting trackListing� 0 totaltracks totalTracks� 0 mainlibrary mainLibrary
� .aevtoappnull  �   � ****�  0 getnameoftrack getNameOfTrack� &0 prepindeterminate prepIndeterminate�  0 checktrackitem checkTrackItem� 0 add_to_text  � 0 performinit performInit�
 0 requestfile requestFile�	 0 
accesshook 
accessHook� *0 checkitunesisactive checkItunesIsActive� ,0 itunesisnotaccesible itunesIsNotAccesible� 0 isfullscreen isFullScreenU ll ��m
� misccura
� 
pclsm �nn   N S S o r t D e s c r i p t o rV oo ��p
� misccura
� 
pclsp �qq  N S A r r a yW rr �� s
� misccura
�  
pclss �tt  N S M u t a b l e A r r a yX uu ����v
�� misccura
�� 
pclsv �ww & N S M u t a b l e D i c t i o n a r yY xx ����y
�� misccura
�� 
pclsy �zz  N S S t r i n gZ {{ ����|
�� misccura
�� 
pcls| �}}  N S T h r e a d[ ~~ ����
�� misccura
�� 
pcls ���  p r o g r e s s W i n d o w
� 
msng\ ������  ��  ] ������  ��  ^ ������  ��  _ ������  ��  ` ������  ��  a �� `��������
�� .aevtoappnull  �   � ****��  ��  � �������� 0 m  �� 0 t  �� 0 arow aRow� E�������������� ������������������� �����������������������#��+��;����?����������U��b��l������������������������������������ 0 
accesshook 
accessHook
�� .aevtquitnull��� ��� null�� 0 m  ��  �� 0 performinit performInit�� Z0 +readyprogresswindowwithminimum_withmaximum_ +readyProgressWindowWithMinimum_withMaximum_��  0 progressstatus progressStatus�� "0 setstringvalue_ setStringValue_�� 0 doeventfetch doEventFetch�� 0 
shouldstop 
shouldStop
�� 
bool�� *0 closeprogresswindow closeProgressWindow��  0 getnameoftrack getNameOfTrack�� &0 stringwithstring_ stringWithString_�� p0 6incrementprogresswindowwithcounter_itemname_itemcount_ 6incrementProgressWindowWithCounter_itemName_itemCount_��  0 checktrackitem checkTrackItem�� D0  sortdescriptorwithkey_ascending_  sortDescriptorWithKey_ascending_�� $0 arraywithobject_ arrayWithObject_�� .0 sortusingdescriptors_ sortUsingDescriptors_�� &0 prepindeterminate prepIndeterminate
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 art  
�� 
ctxt�� 0 alb  �� 0 nom  �� 0 kin  �� 0 mess  
�� 
strq
�� 
spac
�� 
psxp
�� .sysoexecTEXT���     TEXT��  �� .0 thisprogressindicator thisProgressIndicator��  0 stopanimation_ stopAnimation_
�� .sysodelanull��� ��� nmbr�� 0 ps  
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
�� 
dflt
�� 
appr
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 quitoptions quitOptions
�� 
givu�� �� 

�� 
gavu��y*j+  f   ) *j UW 	X  hY hO)j+ Ob   *jb  l+ UOb  �, *�k+ UO ukb  kh b   *j+ 	UOb  �,�&e  b   *j+ UO) *j UY %b   *�b  )�k+ k+ b  m+ UO)�k+ [OY��Ob  
jPb  b  b   a el+ k+ k+ O*j+ O �b  [a a l kh �a ,a &a %�a ,a &%a %�a ,a &%a %�a  ,a &%a !%a &E` "O 2a #_ "a $,%_ %%a &%_ %%b  	a &a ',a $,%j (W X ) h[OY��Ob  a *, *)k+ +UOa ,j -Ob   *j+ UOa .E` /Ob  
k a 0E` /Y hO*j 1Oa 2_ 3%b  
%a 4%_ /%a 5%a 6a 7kva 8ka 9b  a :ka ; <a =,E` >Y Mb   *j+ UO*j 1Oa ?a 6a @kva 8ka :ka 9b  a Aa Ba C <a D,e  hY hO) *j Ub �������������  0 getnameoftrack getNameOfTrack�� ����� �  ���� 0 i  ��  � ���� 0 i  � �����������
�� 
capp
�� kfrmID  
�� 
cFlT
�� 
pnam
�� 
ctxt�� )���0 b  �/�,E�&Uc ������������� &0 prepindeterminate prepIndeterminate��  ��  �  � ����������������������������  0 progressstatus progressStatus�� "0 setstringvalue_ setStringValue_�� $0 progressnextitem progressNextItem�� "0 progresscounter progressCounter�� 0 
setstring_ 
setString_
�� .sysodelanull��� ��� nmbr�� .0 thisprogressindicator thisProgressIndicator�� 0 setminvalue_ setMinValue_�� 0 setmaxvalue_ setMaxValue_�� &0 setindeterminate_ setIndeterminate_�� "0 startanimation_ startAnimation_�� ib  �, *�k+ UOb  �, *�k+ UOb  �, *�k+ UO�j 	Ob  �, *jk+ O*jk+ O*ek+ O*)k+ UO�j 	d ������������  0 checktrackitem checkTrackItem�� ����� �  ���� 0 i  ��  � �������� 0 i  �� 0 	thistrack 	thisTrack�� 0 m  � 
��@����������������
�� 
capp
�� kfrmID  
�� 
cFlT
�� 
pLoc
�� 
msng�� 0 add_to_text  �� 0 m  ��  
�� .ascrcmnt****      � ****�� J)���0 B 0b  �/E�O��,�  )�k+ Ob  
kEc  
Y hW X  ) *j 	UUe ��G���������� 0 add_to_text  �� ����� �  ���� 0 t  ��  � ��~�}�|�{�z�y� 0 t  �~ 0 nom  �} 0 art  �| 0 alb  �{ 0 dbid  �z 0 kin  �y 0 	thistrack 	thisTrack� �xp�w�v�u�t�s�r�q�p�o�nz~�����m�l��k�����j
�x 
capp
�w kfrmID  
�v 
pnam
�u 
pArt
�t 
pAlb
�s 
pDID
�r 
ctxt
�q 
pKnd�p 
�o 
cobj�n �m 	0 alloc  �l 0 init  �k $0 setvalue_forkey_ setValue_forKey_�j 0 
addobject_ 
addObject_�� �)���0 B� =*�,*�,*�,*�,E�&*�,E�&�vE[�k/E�Z[�l/E�Z[�m/E�Z[��/E�Z[��/E�ZUUO��  �E�Y hO��  �E�Y hO�a   
a E�Y hOb   *j+ j+ E�UO� 3*�a l+ O*�a l+ O*�a l+ O*�a l+ O*�a l+ UOb  �k+ OPf �i��h�g���f�i 0 performinit performInit�h  �g  � �e�e 0 thisappname thisAppName� �d�c�b�a�`�_�^�]�\�["�Z�Y�X�W�d 	0 alloc  �c��b &0 initwithcapacity_ initWithCapacity_�a 0 requestfile requestFile�` 0 init  
�_ 
pnam�^ �] �0 Icreateprogresswindowwithtitle_intialmessage_intialminimum_initialmaximum_ IcreateProgressWindowWithTitle_intialMessage_intialMinimum_initialMaximum_�\ .0 sleepfortimeinterval_ sleepForTimeInterval_
�[ 
capp
�Z kfrmID  
�Y 
cLiP
�X 
cFlT
�W .corecnte****       ****�f �b   *j+  �k+ Ec  UO*j+ OjEc  
Ob   *j+  j+ Ec  UO)�,E�Ob   *��jj�+ UOb   *kk+ 	UO)���0 *�k/Ec  Ob  �-j Ec  Ug �V)�U�T���S�V 0 requestfile requestFile�U  �T  � �R�R 0 m  � �Q�P=�O@�N�M�L�K�J�I�HVbo�G�F�E
�Q 
msng
�P 
prmt
�O 
dfnm�N 
�M .sysonwflfile    ��� null�L  �K  
�J .aevtquitnull��� ��� null�I 0 m  
�H 
ctxt
�G 
psxp
�F 
strq
�E .sysoexecTEXT���     TEXT�S ��Ec  	O '*����� Ec  	Ob  	f  	)jhY hW X   ) *j 	UW 	X 
 hOb  	�&� b  	�&�%�&Ec  	Y hO �b  	�&�,a ,%j W X  hh �D}�C�B���A�D 0 
accesshook 
accessHook�C  �B  � �@�@ 0 opt  � �?��>��=�<��;�:�9�8�7�6����5��4��3����2�1�0�/���.�? *0 checkitunesisactive checkItunesIsActive
�> 
btns
�= 
dflt
�< 
appr
�; 
disp
�: 
givu�9 �8 

�7 .sysodlogaskr        TEXT�6 ,0 itunesisnotaccesible itunesIsNotAccesible�5 0 isfullscreen isFullScreen
�4 .sysodelanull��� ��� nmbr
�3 
mesS
�2 
as A
�1 EAlTwarN
�0 .sysodisAaleR        TEXT
�/ 
bhit
�. .miscactvnull��� ��� null�A �)j+  f  ���kv�k���j��� E�OfY hO)j+ e  ���kv�k���j��� E�OfY hO)j+  Oa j Oa a a �a a lv�ka a ��� E�O�a ,a   a  *j UOfY hY hOei �-
�,�+���*�- *0 checkitunesisactive checkItunesIsActive�,  �+  �  � �)��(�'
�) 
prcs�  
�( 
pnam
�' .coredoexbool       obj �* � *�.�[�,\Z�81j Uj �&�%�$���#�& ,0 itunesisnotaccesible itunesIsNotAccesible�%  �$  �  � �"-�!� ���
�" 
capp
�! kfrmID  
�  
cLiP
� 
pnam�  �  �# $ kn)���0 	*�k/�,EUoW 	X  eOfk �7������ 0 isfullscreen isFullScreen�  �  �  � 	Q�O��J���
� 
prcs
� 
cwin
� 
attr
� 
valL�  �  � & � *��/ *�k/��/�,EUUW 	X  fascr  ��ޭ