FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
? Veritrope.com
Chrome URLs List to OmniFocus
VERSION 1.1
June 15, 2014

// UPDATE NOTICES
    ** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
    If this AppleScript was useful to you, please take a second to show your love here: 
    http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
    http://veritrope.com/code/chrome-tab-list-to-omnifocus/

    BASED ON THIS SAFARI/EVERNOTE SCRIPT:
    http://veritrope.com/code/export-all-safari-tabs-to-evernote/

    �AND THIS SAFARI/OMNIFOCUS SCRIPT:
    http://veritrope.com/code/safari-tab-list-to-omnifocus/

    WITH GREAT THANKS TO BRETT TERPSTRA, ZETTT, AND GORDON!

// REQUIREMENTS
    More details on the script information page.

// CHANGELOG
    1.10    FIX FOR DATE STAMP + CHANGE IN OF'S APPLESCRIPT, ADDED NOTIFICATION CENTER, REMOVED LOGGING, ADDED COMMENTS
    1.00    INITIAL RELEASE

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

     � 	 		� 
%�   V e r i t r o p e . c o m 
 C h r o m e   U R L s   L i s t   t o   O m n i F o c u s 
 V E R S I O N   1 . 1 
 J u n e   1 5 ,   2 0 1 4 
 
 / /   U P D A T E   N O T I C E S 
         * *   F o l l o w   @ V e r i t r o p e   o n   T w i t t e r ,   F a c e b o o k ,   G o o g l e   P l u s ,   a n d   A D N   f o r   U p d a t e   N o t i c e s !   * * 
 
 / /   S U P P O R T   V E R I T R O P E ! 
         I f   t h i s   A p p l e S c r i p t   w a s   u s e f u l   t o   y o u ,   p l e a s e   t a k e   a   s e c o n d   t o   s h o w   y o u r   l o v e   h e r e :   
         h t t p : / / v e r i t r o p e . c o m / s u p p o r t 
 
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E 
         h t t p : / / v e r i t r o p e . c o m / c o d e / c h r o m e - t a b - l i s t - t o - o m n i f o c u s / 
 
         B A S E D   O N   T H I S   S A F A R I / E V E R N O T E   S C R I P T : 
         h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - s a f a r i - t a b s - t o - e v e r n o t e / 
 
         & A N D   T H I S   S A F A R I / O M N I F O C U S   S C R I P T : 
         h t t p : / / v e r i t r o p e . c o m / c o d e / s a f a r i - t a b - l i s t - t o - o m n i f o c u s / 
 
         W I T H   G R E A T   T H A N K S   T O   B R E T T   T E R P S T R A ,   Z E T T T ,   A N D   G O R D O N ! 
 
 / /   R E Q U I R E M E N T S 
         M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e . 
 
 / /   C H A N G E L O G 
         1 . 1 0         F I X   F O R   D A T E   S T A M P   +   C H A N G E   I N   O F ' S   A P P L E S C R I P T ,   A D D E D   N O T I F I C A T I O N   C E N T E R ,   R E M O V E D   L O G G I N G ,   A D D E D   C O M M E N T S 
         1 . 0 0         I N I T I A L   R E L E A S E 
 
 / /   T E R M S   O F   U S E : 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .   
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
   
  
 l     ��������  ��  ��        l      ��  ��    � � 
======================================
// OTHER PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
     �      
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��     RESET     �   
 R E S E T      l     ����  r         J     ����    o      ���� 0 urllist urlList��  ��        l    ����  r       !   m    ����   ! o      ���� 0 
currenttab 
currentTab��  ��     " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & g a 
======================================
// MAIN PROGRAM 
======================================
    ' � ( ( �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 %  ) * ) l     �� + ,��   +  SET DATE STAMP    , � - -  S E T   D A T E   S T A M P *  . / . l  	  0���� 0 r   	  1 2 1 l  	  3���� 3 c   	  4 5 4 l  	  6���� 6 l  	  7���� 7 I  	 ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   5 m    ��
�� 
TEXT��  ��   2 l      8���� 8 o      ���� 0 	datestamp 	dateStamp��  ��  ��  ��   /  9 : 9 l    ;���� ; r     < = < b     > ? > m     @ @ � A A : U R L   L i s t   f r o m   C h r o m e   T a b s   o n   ? l    B���� B o    ���� 0 	datestamp 	dateStamp��  ��   = o      ���� 0 	notetitle 	noteTitle��  ��   :  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G ( "PROCESSING FRONTMOST CHROME WINDOW    H � I I D P R O C E S S I N G   F R O N T M O S T   C H R O M E   W I N D O W F  J K J l   � L���� L O    � M N M k    � O O  P Q P l   ��������  ��  ��   Q  R S R r    # T U T l   ! V���� V 4   !�� W
�� 
cwin W m     ���� ��  ��   U o      ���� 0 chromewindow chromeWindow S  X Y X r   $ - Z [ Z l  $ + \���� \ I  $ +�� ]��
�� .corecnte****       **** ] l  $ ' ^���� ^ n   $ ' _ ` _ 2  % '��
�� 
CrTb ` o   $ %���� 0 chromewindow chromeWindow��  ��  ��  ��  ��   [ o      ���� 0 tabcount tabCount Y  a b a r   . 1 c d c m   . /����   d o      ���� 0 successcount successCount b  e f e l  2 2��������  ��  ��   f  g�� g Q   2 � h i�� h X   5 � j�� k j k   G � l l  m n m r   G L o p o [   G J q r q o   G H���� 0 
currenttab 
currentTab r m   H I����  p o      ���� 0 
currenttab 
currentTab n  s t s l  M M��������  ��  ��   t  u v u l  M M�� w x��   w  GET TAB INFO    x � y y  G E T   T A B   I N F O v  z { z r   M V | } | l  M R ~���� ~ n   M R  �  1   N R��
�� 
pnam � o   M N���� 0 t  ��  ��   } o      ���� 0 tabtitle tabTitle {  � � � r   W ` � � � l  W \ ����� � n   W \ � � � 1   X \��
�� 
URL  � o   W X���� 0 t  ��  ��   � o      ���� 0 taburl tabURL �  � � � l  a a��������  ��  ��   �  � � � Z   a � � ��� � � >  a d � � � o   a b���� 0 
currenttab 
currentTab � o   b c���� 0 tabcount tabCount � r   g ~ � � � l  g z ����� � b   g z � � � b   g v � � � b   g r � � � b   g n � � � o   g j���� 0 tabtitle tabTitle � o   j m��
�� 
ret  � o   n q���� 0 taburl tabURL � o   r u��
�� 
ret  � o   v y��
�� 
ret ��  ��   � o      ���� 0 tabinfo tabInfo��   � k   � � � �  � � � l  � ��� � ���   � - ' don't output double return on last tab    � � � � N   d o n ' t   o u t p u t   d o u b l e   r e t u r n   o n   l a s t   t a b �  ��� � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � o   � ����� 0 tabtitle tabTitle � o   � ���
�� 
ret  � o   � ����� 0 taburl tabURL��  ��   � o      ���� 0 tabinfo tabInfo��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  ADD TO LIST    � � � �  A D D   T O   L I S T �  � � � s   � � � � � o   � ����� 0 tabinfo tabInfo � l      ����� � n       � � �  ;   � � � o   � ����� 0 urllist urlList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  INCREMENT SUCCESS COUNT    � � � � . I N C R E M E N T   S U C C E S S   C O U N T �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ��� 0 successcount successCount � m   � ��~�~ ��  ��   � o      �}�} 0 successcount successCount �  ��| � l  � ��{�z�y�{  �z  �y  �|  �� 0 t   k l  8 ; ��x�w � n   8 ; � � � 2  9 ;�v
�v 
CrTb � o   8 9�u�u 0 chromewindow chromeWindow�x  �w   i R      �t�s�r
�t .ascrerr ****      � ****�s  �r  ��  ��   N m     � ��                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   K  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n � ��n   � " MAKE INBOX ITEM IN OMNIFOCUS    � � � � 8 M A K E   I N B O X   I T E M   I N   O M N I F O C U S �  � � � l  � � ��m�l � O   � � � � � I  � ��k�j �
�k .corecrel****      � null�j   � �i � �
�i 
kocl � m   � ��h
�h 
FCit � �g ��f
�g 
prdt � K   � � � � �e � �
�e 
pnam � l  � � ��d�c � o   � ��b�b 0 	notetitle 	noteTitle�d  �c   � �a ��`
�a 
FCno � c   � � � � � o   � ��_�_ 0 urllist urlList � m   � ��^
�^ 
ctxt�`  �f   � n   � � � � � 4  � ��] �
�] 
docu � m   � ��\�\  � m   � � � ��                                                                                  OFOC  alis    .  Macintosh HD                   BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �m  �l   �  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � l     �X � ��X   �  NOTIFY RESULTS    � � � �  N O T I F Y   R E S U L T S �  � � � l  � � ��W�V � n  � � � � � I   � ��U ��T�U *0 notification_center notification_Center �  � � � o   � ��S�S 0 successcount successCount �  ��R � o   � ��Q�Q 0 tabcount tabCount�R  �T   �  f   � ��W  �V   �  � � � l     �P�O�N�P  �O  �N   �  � � � l      �M � ��M   � q k 
======================================
// NOTIFICATION SUBROUTINE
======================================
    � � � � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   N O T I F I C A T I O N   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     �L�K�J�L  �K  �J   �  �  � l     �I�I    NOTIFICATION CENTER    � & N O T I F I C A T I O N   C E N T E R   i      I      �H�G�H *0 notification_center notification_Center 	
	 o      �F�F 0 successcount successCount
 �E o      �D�D 0 itemnum itemNum�E  �G   k     o  r      c      l    �C�B o     �A�A 0 successcount successCount�C  �B   m    �@
�@ 
nmbr o      �?�? 0 plural_test Plural_Test  l   �>�=�<�>  �=  �<    Z    c�; =   	 o    �:�: 0 plural_test Plural_Test m    �9�9�� k      I   �8 !
�8 .sysonotfnull��� ��� TEXT  m    "" �## " N o   T a b s   E x p o r t e d !! �7$%
�7 
appr$ m    && �'' : S e n d   C h r o m e   T a b s   t o   O m n i F o c u s% �6(�5
�6 
subt( m    )) �** %�   V e r i t r o p e . c o m�5   +�4+ l   �3�2�1�3  �2  �1  �4   ,-, =   ./. o    �0�0 0 plural_test Plural_Test/ m    �/�/  - 010 k     +22 343 I    )�.56
�. .sysonotfnull��� ��� TEXT5 m     !77 �88 " N o   T a b s   E x p o r t e d !6 �-9:
�- 
appr9 m   " #;; �<< : S e n d   C h r o m e   T a b s   t o   O m n i F o c u s: �,=�+
�, 
subt= m   $ %>> �?? %�   V e r i t r o p e . c o m�+  4 @�*@ l  * *�)�(�'�)  �(  �'  �*  1 ABA =  . 1CDC o   . /�&�& 0 plural_test Plural_TestD m   / 0�%�% B EFE k   4 CGG HIH I  4 A�$JK
�$ .sysonotfnull��� ��� TEXTJ b   4 9LML b   4 7NON m   4 5PP �QQ , S u c c e s s f u l l y   E x p o r t e d  O o   5 6�#�# 0 itemnum itemNumM l 	 7 8R�"�!R m   7 8SS �TT "   T a b   t o   O m n i F o c u s�"  �!  K � UV
�  
apprU m   : ;WW �XX : S e n d   C h r o m e   T a b s   t o   O m n i F o c u sV �Y�
� 
subtY m   < =ZZ �[[ %�   V e r i t r o p e . c o m�  I \�\ l  B B����  �  �  �  F ]^] ?  F I_`_ o   F G�� 0 plural_test Plural_Test` m   G H�� ^ a�a I  L _�bc
� .sysonotfnull��� ��� TEXTb b   L Sded b   L Ofgf m   L Mhh �ii , S u c c e s s f u l l y   E x p o r t e d  g o   M N�� 0 itemnum itemNume l 	 O Rj��j m   O Rkk �ll $   T a b s   t o   O m n i F o c u s�  �  c �mn
� 
apprm m   T Woo �pp : S e n d   C h r o m e   T a b s   t o   O m n i F o c u sn �q�
� 
subtq m   X [rr �ss %�   V e r i t r o p e . c o m�  �  �;   tut l  d d����  �  �  u vwv r   d ixyx m   d gzz �{{  0y o      �� 0 itemnum itemNumw |�| I  j o�
}�	
�
 .sysodelanull��� ��� nmbr} m   j k�� �	  �   ~�~ l     ����  �  �  �       ���������� ������������   ���������������������������������� *0 notification_center notification_Center
�� .aevtoappnull  �   � ****�� 0 urllist urlList�� 0 
currenttab 
currentTab�� 0 	datestamp 	dateStamp�� 0 	notetitle 	noteTitle�� 0 chromewindow chromeWindow�� 0 tabcount tabCount�� 0 successcount successCount�� 0 tabtitle tabTitle�� 0 taburl tabURL�� 0 tabinfo tabInfo��  ��  ��  ��  � ������������ *0 notification_center notification_Center�� ����� �  ������ 0 successcount successCount�� 0 itemnum itemNum��  � �������� 0 successcount successCount�� 0 itemnum itemNum�� 0 plural_test Plural_Test� ��"��&��)����7;>PSWZhkorz��
�� 
nmbr
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj � �����������
�� .aevtoappnull  �   � ****� k     ���  ��  ��  .��  9��  J��  ���  �����  ��  ��  � ���� 0 t  � !���������� @�� ��������������������������������� ������������������� 0 urllist urlList�� 0 
currenttab 
currentTab
�� .misccurdldt    ��� null
�� 
TEXT�� 0 	datestamp 	dateStamp�� 0 	notetitle 	noteTitle
�� 
cwin�� 0 chromewindow chromeWindow
�� 
CrTb
�� .corecnte****       ****�� 0 tabcount tabCount�� 0 successcount successCount
�� 
kocl
�� 
cobj
�� 
pnam�� 0 tabtitle tabTitle
�� 
URL �� 0 taburl tabURL
�� 
ret �� 0 tabinfo tabInfo��  ��  
�� 
docu
�� 
FCit
�� 
prdt
�� 
FCno
�� 
ctxt�� 
�� .corecrel****      � null�� *0 notification_center notification_Center�� �jvE�OjE�O*j �&E�O��%E�O� �*�k/E�O��-j E�OjE�O t n��-[��l kh  �kE�O�a ,E` O�a ,E` O�� _ _ %_ %_ %_ %E` Y _ _ %_ %E` O_ �6GO�kE�OP[OY��W X  hUOa a k/  *�a a a �a �a &a a  UO)��l+  � ����� �  �������������������������������� ��� � P r e i s e   -   B e r g s t a t i o n  h t t p s : / / b e r g s t a t i o n . n r w / i n f o s - z u r - b e r g s t a t i o n / p r e i s e /��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � � ��� D S a t u r d a y ,   9 .   J u n e   2 0 1 8   a t   2 1 : 1 2 : 5 4� ��� ~ U R L   L i s t   f r o m   C h r o m e   T a b s   o n   S a t u r d a y ,   9 .   J u n e   2 0 1 8   a t   2 1 : 1 2 : 5 4� ��  �������
�� 
cwin���
�� kfrmID  � �  � ��� ( P r e i s e   -   B e r g s t a t i o n� ��� j h t t p s : / / b e r g s t a t i o n . n r w / i n f o s - z u r - b e r g s t a t i o n / p r e i s e /��  ��  ��  ��   ascr  ��ޭ