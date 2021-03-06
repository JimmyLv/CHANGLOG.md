FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $ ==============================     � 	 	 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    ( " OmniFocus > Completed Task Report     �   D   O m n i F o c u s   >   C o m p l e t e d   T a s k   R e p o r t      l     ��  ��      Version 1.0.0     �      V e r s i o n   1 . 0 . 0      l     ��  ��    : 4 Written By: Ben Waldie <ben@automatedworkflows.com>     �   h   W r i t t e n   B y :   B e n   W a l d i e   < b e n @ a u t o m a t e d w o r k f l o w s . c o m >      l     ��  ��    ( " http://www.automatedworkflows.com     �   D   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m      l     ��������  ��  ��       !   l     �� " #��   " � � Description: This script retrieves a list of OmniFocus tasks completed today, yesterday, this week, last week, or this month. It then summarizes the tasks in a new Evernote note.    # � $ $f   D e s c r i p t i o n :   T h i s   s c r i p t   r e t r i e v e s   a   l i s t   o f   O m n i F o c u s   t a s k s   c o m p l e t e d   t o d a y ,   y e s t e r d a y ,   t h i s   w e e k ,   l a s t   w e e k ,   o r   t h i s   m o n t h .   I t   t h e n   s u m m a r i z e s   t h e   t a s k s   i n   a   n e w   E v e r n o t e   n o t e . !  % & % l     �� ' (��   '   Version History:    ( � ) ) "   V e r s i o n   H i s t o r y : &  * + * l     �� , -��   ,   1.0.0 - Initial release    - � . . 0   1 . 0 . 0   -   I n i t i a l   r e l e a s e +  / 0 / l     �� 1 2��   1 $ ==============================    2 � 3 3 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 &   Prepare a name for the new note    9 � : : @   P r e p a r e   a   n a m e   f o r   t h e   n e w   n o t e 7  ; < ; l     =���� = r      > ? > m      @ @ � A A $ O m n i F o c u s   R e p o r t :   ? o      ���� 0 thenotename theNoteName��  ��   <  B C B l    D���� D r     E F E I   	�� G��
�� .sysoexecTEXT���     TEXT G m     H H � I I  d a t e   + % U��   F o      ���� $0 thenowweeknumber theNowWeekNumber��  ��   C  J K J l    L���� L r     M N M m    ����   N o      ���� $0 thenumberoftasks theNumberOfTasks��  ��   K  O P O l     ��������  ��  ��   P  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U 7 1 Prompt the user to choose a scope for the report    V � W W b   P r o m p t   t h e   u s e r   t o   c h o o s e   a   s c o p e   f o r   t h e   r e p o r t T  X Y X l    Z���� Z I   ������
�� .miscactvnull��� ��� null��  ��  ��  ��   Y  [ \ [ l   5 ]���� ] r    5 ^ _ ^ I   1�� ` a
�� .gtqpchltns    @   @ ns   ` J     b b  c d c m     e e � f f 
 T o d a y d  g h g m     i i � j j  Y e s t e r d a y h  k l k m     m m � n n  T h i s   W e e k l  o p o m     q q � r r  L a s t   W e e k p  s�� s m     t t � u u  T h i s   M o n t h��   a �� v w
�� 
inSL v J    ! x x  y�� y m     z z � { {  Y e s t e r d a y��   w �� | }
�� 
prmp | m   " % ~ ~ �   , G e n e r a t e   a   r e p o r t   f o r : } �� ���
�� 
appr � m   ( + � � � � � > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t��   _ o      ����  0 thereportscope theReportScope��  ��   \  � � � l  6 D ����� � Z  6 D � ����� � =   6 ; � � � o   6 9����  0 thereportscope theReportScope � m   9 :��
�� boovfals � L   > @����  ��  ��  ��  ��   �  � � � l  E Q ����� � r   E Q � � � n   E M � � � 4   H M�� �
�� 
cobj � m   K L����  � o   E H����  0 thereportscope theReportScope � o      ����  0 thereportscope theReportScope��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � K E Calculate the task start and end dates, based on the specified scope    � � � � �   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s ,   b a s e d   o n   t h e   s p e c i f i e d   s c o p e �  � � � l  R [ ����� � r   R [ � � � I  R W������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 thestartdate theStartDate��  ��   �  � � � l  \ e ����� � r   \ e � � � m   \ ]����   � n       � � � 1   ` d��
�� 
hour � o   ] `���� 0 thestartdate theStartDate��  ��   �  � � � l  f o ����� � r   f o � � � m   f g����   � n       � � � 1   j n��
�� 
min  � o   g j���� 0 thestartdate theStartDate��  ��   �  � � � l  p y ����� � r   p y � � � m   p q����   � n       � � � m   t x��
�� 
scnd � o   q t���� 0 thestartdate theStartDate��  ��   �  � � � l  z � ����� � r   z � � � � [   z � � � � [   z � � � � [   z � � � � o   z }���� 0 thestartdate theStartDate � l  } � ����� � ]   } � � � � m   } �����  � 1   � ���
�� 
hour��  ��   � l  � � ����� � ]   � � � � � m   � ����� ; � 1   � ���
�� 
min ��  ��   � m   � ����� ; � o      ���� 0 
theenddate 
theEndDate��  ��   �  � � � l     ��������  ��  ��   �  � � � l  �g ����� � Z   �g � � ��� � =   � � � � � o   � �����  0 thereportscope theReportScope � m   � � � � � � � 
 T o d a y � r   � � � � � n   � � � � � 1   � ���
�� 
dstr � o   � ����� 0 thestartdate theStartDate � o      ���� 0 thedaterange theDateRange �  � � � =   � � � � � o   � �����  0 thereportscope theReportScope � m   � � � � � � �  Y e s t e r d a y �  � � � k   � � � �  � � � r   � � � � � \   � � � � � o   � ����� 0 thestartdate theStartDate � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 thestartdate theStartDate �  � � � r   � � � � � \   � � � � � o   � ����� 0 
theenddate 
theEndDate � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 
theenddate 
theEndDate �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
dstr � o   � ����� 0 thestartdate theStartDate � o      ���� 0 thedaterange theDateRange��   �  � � � =   � � � � � o   � �����  0 thereportscope theReportScope � m   � � � � � � �  T h i s   W e e k �  � � � k   �U � �  � � � W   � � � � r   �	 �  � \   � o   � ����� 0 thestartdate theStartDate ]   � m   � ����  1   �
� 
days  o      �~�~ 0 thestartdate theStartDate � =   � � l  � ��}�| n   � �	 m   � ��{
�{ 
wkdy	 o   � ��z�z 0 thestartdate theStartDate�}  �|   m   � ��y
�y 
mon  � 

 W  1 r  , [  ( o  "�x�x 0 
theenddate 
theEndDate ]  "' m  "#�w�w  1  #&�v
�v 
days o      �u�u 0 
theenddate 
theEndDate =   l �t�s n   m  �r
�r 
wkdy o  �q�q 0 
theenddate 
theEndDate�t  �s   m  �p
�p 
sun  �o r  2U b  2Q b  2I b  2E !  b  2="#" b  29$%$ m  25&& �'' {,% [  58()( o  56�n�n $0 thenowweeknumber theNowWeekNumber) m  67�m�m # m  9<** �++ Th :  ! l =D,�l�k, n  =D-.- 1  @D�j
�j 
dstr. o  =@�i�i 0 thestartdate theStartDate�l  �k   m  EH// �00    ~   l IP1�h�g1 n  IP232 1  LP�f
�f 
dstr3 o  IL�e�e 0 
theenddate 
theEndDate�h  �g   o      �d�d 0 thedaterange theDateRange�o   � 454 =  X_676 o  X[�c�c  0 thereportscope theReportScope7 m  [^88 �99  L a s t   W e e k5 :;: k  b�<< =>= r  bq?@? \  bmABA o  be�b�b 0 thestartdate theStartDateB ]  elCDC m  eh�a�a D 1  hk�`
�` 
days@ o      �_�_ 0 thestartdate theStartDate> EFE r  r�GHG \  r}IJI o  ru�^�^ 0 
theenddate 
theEndDateJ ]  u|KLK m  ux�]�] L 1  x{�\
�\ 
daysH o      �[�[ 0 
theenddate 
theEndDateF MNM W  ��OPO r  ��QRQ \  ��STS o  ���Z�Z 0 thestartdate theStartDateT ]  ��UVU m  ���Y�Y V 1  ���X
�X 
daysR o      �W�W 0 thestartdate theStartDateP =  ��WXW l ��Y�V�UY n  ��Z[Z m  ���T
�T 
wkdy[ o  ���S�S 0 thestartdate theStartDate�V  �U  X m  ���R
�R 
mon N \]\ W  ��^_^ r  ��`a` [  ��bcb o  ���Q�Q 0 
theenddate 
theEndDatec ]  ��ded m  ���P�P e 1  ���O
�O 
daysa o      �N�N 0 
theenddate 
theEndDate_ =  ��fgf l ��h�M�Lh n  ��iji m  ���K
�K 
wkdyj o  ���J�J 0 
theenddate 
theEndDate�M  �L  g m  ���I
�I 
sun ] k�Hk r  ��lml b  ��non b  ��pqp b  ��rsr b  ��tut b  ��vwv m  ��xx �yy {,w o  ���G�G $0 thenowweeknumber theNowWeekNumberu m  ��zz �{{ Th :  s l ��|�F�E| n  ��}~} 1  ���D
�D 
dstr~ o  ���C�C 0 thestartdate theStartDate�F  �E  q m  �� ���    ~  o l ����B�A� n  ����� 1  ���@
�@ 
dstr� o  ���?�? 0 
theenddate 
theEndDate�B  �A  m o      �>�> 0 thedaterange theDateRange�H  ; ��� =  ����� o  ���=�=  0 thereportscope theReportScope� m  ���� ���  T h i s   M o n t h� ��<� k  �c�� ��� W  ���� r  ��� \  ��� o  �;�; 0 thestartdate theStartDate� ]  ��� m  �:�: � 1  �9
�9 
days� o      �8�8 0 thestartdate theStartDate� =  ���� l ���7�6� n  ���� 1  ��5
�5 
day � o  ���4�4 0 thestartdate theStartDate�7  �6  � m  �3�3 � ��� W  =��� r  +8��� [  +4��� o  +.�2�2 0 
theenddate 
theEndDate� ]  .3��� m  ./�1�1 � 1  /2�0
�0 
days� o      �/�/ 0 
theenddate 
theEndDate� > *��� l "��.�-� n  "��� m  "�,
�, 
mnth� o  �+�+ 0 
theenddate 
theEndDate�.  �-  � l ")��*�)� n  ")��� m  %)�(
�( 
mnth� o  "%�'�' 0 thestartdate theStartDate�*  �)  � ��� r  >K��� \  >G��� o  >A�&�& 0 
theenddate 
theEndDate� ]  AF��� m  AB�%�% � 1  BE�$
�$ 
days� o      �#�# 0 
theenddate 
theEndDate� ��"� r  Lc��� b  L_��� b  LW��� l LS��!� � n  LS��� 1  OS�
� 
dstr� o  LO�� 0 thestartdate theStartDate�!  �   � m  SV�� ���    ~  � l W^���� n  W^��� 1  Z^�
� 
dstr� o  WZ�� 0 
theenddate 
theEndDate�  �  � o      �� 0 thedaterange theDateRange�"  �<  ��  ��  ��   � ��� l     ����  �  �  � ��� l     ����  � - ' Begin preparing the task list as HTML.   � ��� N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .� ��� l hw���� r  hw��� b  hs��� b  ho��� m  hk�� ��� p < h t m l > < b o d y > < h 1 > O m n i F o c u s   C o m p l e t e d   T a s k s < / h 1 > < b r > < b >   >  � o  kn�� 0 thedaterange theDateRange� m  or�� ���   < / b > < b r > < h r > < b r >� o      �� &0 theprogressdetail theProgressDetail�  �  � ��� l     ����  �  �  � ��� l     ����  � F @ Retrieve a list of projects modified within the specified scope   � ��� �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� l x}���� r  x}��� m  xy�

�
 boovfals� o      �	�	 .0 modifiedtasksdetected modifiedTasksDetected�  �  � ��� l ~����� O  ~���� O  ����� k  ���� ��� r  ����� 6����� 2  ���
� 
FCfx� F  ����� ? ����� n ����� 1  ���
� 
FCDm�  g  ��� o  ���� 0 thestartdate theStartDate� A ����� 1  ���
� 
FCDm� o  ���� 0 
theenddate 
theEndDate� o      �� *0 themodifiedprojects theModifiedProjects� ��� l ��� �����   ��  ��  � ��� l ��������  � ) # Loop through any detected projects   � �   F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� �� Y  ������ k  ��  r  ��	 n  ��

 4  ����
�� 
cobj 1  ����
�� 
OSav o  ������ *0 themodifiedprojects theModifiedProjects	 o      ���� &0 thecurrentproject theCurrentProject  l ����������  ��  ��    l ������   E ? Retrieve any project tasks modified within the specified scope    � ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e  r  � l ����� 6� n  �� 2  ����
�� 
FCft o  ������ &0 thecurrentproject theCurrentProject F  � F  �  F  ��!"! =  ��#$# n ��%&% 1  ����
�� 
FCcd&  g  ��$ m  ����
�� boovtrue" ? ��'(' 1  ����
�� 
FCDm( o  ������ 0 thestartdate theStartDate  A �)*) 1  ����
�� 
FCDm* o  ����� 0 
theenddate 
theEndDate =  +,+ 1  	��
�� 
FC#t, m  
����  ��  ��   o      ���� &0 thecompletedtasks theCompletedTasks -.- l ��������  ��  ��  . /0/ l ��12��  1 &   Loop through any detected tasks   2 �33 @   L o o p   t h r o u g h   a n y   d e t e c t e d   t a s k s0 4��4 Z  �56����5 > 787 o  ���� &0 thecompletedtasks theCompletedTasks8 J  ����  6 k  �99 :;: r  "<=< m  ��
�� boovtrue= o      ���� .0 modifiedtasksdetected modifiedTasksDetected; >?> l ##��������  ��  ��  ? @A@ l ##��BC��  B / ) Append the project name to the task list   C �DD R   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   t a s k   l i s tA EFE r  #NGHG b  #JIJI b  #FKLK b  #BMNM b  #>OPO b  #6QRQ b  #2STS b  #*UVU o  #&���� &0 theprogressdetail theProgressDetailV m  &)WW �XX  < h 2 >   # #  T n  *1YZY 1  -1��
�� 
pnamZ o  *-���� &0 thecurrentproject theCurrentProjectR m  25[[ �\\    (P n  6=]^] 1  9=��
�� 
leng^ o  69���� &0 thecompletedtasks theCompletedTasksN m  >A__ �``  ) < / h 2 >L o  BE��
�� 
ret J m  FIaa �bb  < b r > < u l >H o      ���� &0 theprogressdetail theProgressDetailF cdc r  OZefe [  OXghg o  OP���� $0 thenumberoftasks theNumberOfTasksh l PWi����i n  PWjkj 1  SW��
�� 
lengk o  PS���� &0 thecompletedtasks theCompletedTasks��  ��  f o      ���� $0 thenumberoftasks theNumberOfTasksd lml Y  [�n��op��n k  l�qq rsr r  lytut n  luvwv 4  ou��x
�� 
cobjx 1  rt��
�� 
OSbvw o  lo���� &0 thecompletedtasks theCompletedTasksu o      ����  0 thecurrenttask theCurrentTasks yzy l zz��������  ��  ��  z {|{ l zz��}~��  } / ) Append the tasks's name to the task list   ~ � R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s t| ���� r  z���� b  z���� b  z���� b  z���� b  z���� o  z}���� &0 theprogressdetail theProgressDetail� m  }��� ���  < l i >� n  ����� 1  ����
�� 
pnam� o  ������  0 thecurrenttask theCurrentTask� m  ���� ��� 
 < / l i >� o  ����
�� 
ret � o      ���� &0 theprogressdetail theProgressDetail��  
�� 
OSbvo m  ^_���� p n  _g��� 1  bf��
�� 
leng� o  _b���� &0 thecompletedtasks theCompletedTasks��  m ���� r  ����� b  ����� b  ����� o  ������ &0 theprogressdetail theProgressDetail� m  ���� ��� 
 < / u l >� o  ����
�� 
ret � o      ���� &0 theprogressdetail theProgressDetail��  ��  ��  ��  
�� 
OSav m  ������  n  ����� 1  ����
�� 
leng� o  ������ *0 themodifiedprojects theModifiedProjects��  ��  � 4 �����
�� 
docu� m  ������ � m  ~����                                                                                  OFOC  alis    .  Macintosh HD                   BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  �  � ��� l �������� r  ����� b  ����� o  ������ &0 theprogressdetail theProgressDetail� m  ���� ���  < / b o d y > < / h t m l >� o      ���� &0 theprogressdetail theProgressDetail��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 Notify the user if no projects or tasks were found   � ��� f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n d� ��� l �������� Z  ��������� =  ����� o  ������ .0 modifiedtasksdetected modifiedTasksDetected� m  ����
�� boovfals� k  ���� ��� I ������
�� .sysodisAaleR        TEXT� m  ���� ��� > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t� �����
�� 
mesS� b  ����� b  ����� m  ���� ��� B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r  � o  ������  0 thereportscope theReportScope� m  ���� ���  .��  � ���� L  ������  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � #  Create the note in Evernote.   � ��� :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .� ��� l �'������ O  �'��� k  �&�� ��� I ��������
�� .miscactvnull��� ��� null��  ��  � ��� r  ���� I ������
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Ennb� m  ���� ���  O m n i F o c u s  b�TJ� ����
�� 
Entt� b  �
��� b  ���� b  ���� o  � ���� 0 thedaterange theDateRange� m   �� ���    (� o  ���� $0 thenumberoftasks theNumberOfTasks� m  	�� ���  )� �����
�� 
Enhl� o  ���� &0 theprogressdetail theProgressDetail��  � o      ���� 0 thenote theNote� ���� I &�����
�� .EVRNonwnnull��� ��� null��  � �����
�� 
EV17� o  "���� 0 thenote theNote��  ��  � m  �����                                                                                  EVRN  alis    *  Macintosh HD                   BD ����???#FFFFFFFF.app                                               ����            ����  
 cu             Applications   /:Applications:印象笔记.app/   Sp�a{�� . a p p    M a c i n t o s h   H D  Applications/印象笔记.app   / ��  ��  ��  � ��� l     �~�}�|�~  �}  �|  �       �{�� @��z������y������x�{  � �w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h
�w .aevtoappnull  �   � ****�v 0 thenotename theNoteName�u $0 thenowweeknumber theNowWeekNumber�t $0 thenumberoftasks theNumberOfTasks�s  0 thereportscope theReportScope�r 0 thestartdate theStartDate�q 0 
theenddate 
theEndDate�p 0 thedaterange theDateRange�o &0 theprogressdetail theProgressDetail�n .0 modifiedtasksdetected modifiedTasksDetected�m *0 themodifiedprojects theModifiedProjects�l &0 thecurrentproject theCurrentProject�k &0 thecompletedtasks theCompletedTasks�j  0 thecurrenttask theCurrentTask�i 0 thenote theNote�h  � �g��f�e �d
�g .aevtoappnull  �   � ****� k    '  ;  B  J  X  [  �  �		  �

  �  �  �  �  � � � � � � ��c�c  �f  �e    �b�a
�b 
OSav
�a 
OSbv _ @�` H�_�^�]�\ e i m q t�[�Z z�Y ~�X ��W�V�U�T�S�R�Q�P�O�N�M�L ��K�J ��I ��H�G�F&*/8�Exz��D�C����B�A��@�?�>�=�<�;�:�9�8�7W�6[_�5a�4������3���2��1��0���/�.�-�,�+�` 0 thenotename theNoteName
�_ .sysoexecTEXT���     TEXT�^ $0 thenowweeknumber theNowWeekNumber�] $0 thenumberoftasks theNumberOfTasks
�\ .miscactvnull��� ��� null�[ 
�Z 
inSL
�Y 
prmp
�X 
appr�W 
�V .gtqpchltns    @   @ ns  �U  0 thereportscope theReportScope
�T 
cobj
�S .misccurdldt    ��� null�R 0 thestartdate theStartDate
�Q 
hour
�P 
min 
�O 
scnd�N �M ;�L 0 
theenddate 
theEndDate
�K 
dstr�J 0 thedaterange theDateRange
�I 
days
�H 
wkdy
�G 
mon 
�F 
sun �E 
�D 
day 
�C 
mnth�B &0 theprogressdetail theProgressDetail�A .0 modifiedtasksdetected modifiedTasksDetected
�@ 
docu
�? 
FCfx  
�> 
FCDm�= *0 themodifiedprojects theModifiedProjects
�< 
leng�; &0 thecurrentproject theCurrentProject
�: 
FCft
�9 
FCcd
�8 
FC#t�7 &0 thecompletedtasks theCompletedTasks
�6 
pnam
�5 
ret �4  0 thecurrenttask theCurrentTask
�3 
mesS
�2 .sysodisAaleR        TEXT
�1 
Ennb
�0 
Entt
�/ 
Enhl
�. .EVRNcrntnull��� ��� null�- 0 thenote theNote
�, 
EV17
�+ .EVRNonwnnull��� ��� null�d(�E�O�j E�OjE�O*j O������v��kv�a a a a  E` O_ f  hY hO_ a k/E` O*j E` Oj_ a ,FOj_ a ,FOj_ a ,FO_ a _  a _  a E` O_ a   _ a  ,E` !Y�_ a "  ,_ k_ # E` O_ k_ # E` O_ a  ,E` !Y�_ a $  n !h_ a %,a & _ k_ # E` [OY��O !h_ a %,a ' _ k_ # E` [OY��Oa (�k%a )%_ a  ,%a *%_ a  ,%E` !Y_ a +  �_ a ,_ # E` O_ a ,_ # E` O !h_ a %,a & _ k_ # E` [OY��O !h_ a %,a ' _ k_ # E` [OY��Oa -�%a .%_ a  ,%a /%_ a  ,%E` !Y }_ a 0  r h_ a 1,k _ k_ # E` [OY��O %h_ a 2,_ a 2,_ k_ # E` [OY��O_ k_ # E` O_ a  ,a 3%_ a  ,%E` !Y hOa 4_ !%a 5%E` 6OfE` 7Oa 82*a 9k/(*a :-a ;[[a <,\Z_ :\[a <,\Z_ <A1E` =O �k_ =a >,Ekh  _ =a �E/E` ?O_ ?a @-a ;[[[[a A,\Ze8\[a <,\Z_ :A\[a <,\Z_ <A\[a B,\Zj8A1E` CO_ Cjv �eE` 7O_ 6a D%_ ?a E,%a F%_ Ca >,%a G%_ H%a I%E` 6O�_ Ca >,E�O >k_ Ca >,Ekh _ Ca �E/E` JO_ 6a K%_ Ja E,%a L%_ H%E` 6[OY��O_ 6a M%_ H%E` 6Y h[OY�UUO_ 6a N%E` 6O_ 7f  a Oa Pa Q_ %a R%l SOhY hOa T ;*j O*a Ua Va W_ !a X%�%a Y%a Z_ 6a  [E` \O*a ]_ \l ^U� �  4 2�z  � �  L a s t   W e e k� ldt     ��k � ldt     �ҥ� � r{, 4 2Th :   M o n d a y ,   O c t o b e r   1 4 ,   2 0 1 9   ~   S u n d a y ,   O c t o b e r   2 0 ,   2 0 1 9� � < h t m l > < b o d y > < h 1 > O m n i F o c u s   C o m p l e t e d   T a s k s < / h 1 > < b r > < b >   >  {, 4 2Th :   M o n d a y ,   O c t o b e r   1 4 ,   2 0 1 9   ~   S u n d a y ,   O c t o b e r   2 0 ,   2 0 1 9 < / b > < b r > < h r > < b r > < / b o d y > < / h t m l >
�y boovfals� �*�*    � !! "�)#�(" ��'
�' 
FCDo
�) 
FCpr# �$$  j o J M O W - 5 _ u 4
�( kfrmID   %% &�&'�%& ��$
�$ 
FCDo
�& 
FCpr' �((  g N U _ q C Y e P h J
�% kfrmID   )) *�#+�"* ��!
�! 
FCDo
�# 
FCpr+ �,,  g h o P q D L a d 2 Y
�" kfrmID   -- .� /�. ��
� 
FCDo
�  
FCpr/ �00  f u a 4 e P m 8 e 5 J
� kfrmID   11 2�3�2 ��
� 
FCDo
� 
FCpr3 �44  k F D I t S I m A 3 s
� kfrmID    55 6�7�6 ��
� 
FCDo
� 
FCpr7 �88  e a F B e z n w a Q W
� kfrmID  � 99 :�;�: ��
� 
FCDo
� 
FCpr; �<<  f u 1 i D V G E c Y X
� kfrmID  � �=�  =   � >> ?�@�? ��
� 
FCDo
� 
FCac@ �AA  k d r S _ 7 j z 5 c P . 1
� kfrmID  � BB C�D�C ��E
� 
EVnbE �FF  O m n i F o c u s  b�TJ
� 
EVnnD �GG | x - c o r e d a t a : / / 3 D 9 5 6 1 0 A - B B 2 4 - 4 7 B 5 - 8 4 9 4 - 7 1 4 8 F C D E C B 0 A / E N N o t e / p 1 6 7 3
� kfrmID  �x   ascr  ��ޭ