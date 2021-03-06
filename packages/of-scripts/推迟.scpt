FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
	# DESCRIPTION
	
	This script defers the start date of all selected OmniFocus tasks by a user-determined amount of time.
	The amount of time to defer the task can be recorded in similar shorthand to OmniFocus dates
	(for example, "1d 2pm", "3d 4:01", "Jan 17 16:00", "Sat 3am", etc.). 
	
	The date parser understands weeks (weeks, week, w), days (days, day, d), short and long forms of 
	every month and weekday in english (i.e., Monday/mon, August/aug) and time in 24 hour 
	(i.e., 16:30) and 12 hour (i.e., 4:30PM/pm/p) formats (you can also enter just the hour, like 4pm, 
	2am, etc.). 
	
	You enter any combination of weeks, days, and time of day for relative dates, but weeks and days 
	MUST have some sort of identifier (weeks/ week/ w for weeks, days/day/d for days). No 
	identifier is needed for time. If you are using the absolute dates, the month and day must come before
	the time (though you can put either the month or day first). If you are using the weekday syntax, the
	weekday and time can be put in any order. If you use both a weekday and an absolute date (as in,
	Sunday, August 3rd at 2pm), the month syntax will take precedence (even if it doesn't make
	sense in the context of the weekday).
	
	This script only works with english identifiers (for example, "jours" won't work in place of days).
	
	
	# LICENSE
	
	I don't like licenses. If you want this, take it. If you want to change it, change it.
	Good people won't misrepresent this work as their own (for whatever incredibly minute value
	that might have), and bad people aren't going to be put off by a license.
	
	
	# INSTALLATION
	
	-	Copy this script to ~/Library/Scripts/Applications/Omnifocus (you may have to use the
		Go > Go to Folder� menu in your file navigation application of choice as the user library
		folder is hidden on Mac OS X 10.7+. After you select this menu item, type the path above and
		hit enter).
	-	If you prefer, you can have this script be activated by a utility like Keyboard Maestro or FastScripts
	
	
	# VERSION INFORMATION
		
		0.2.3 (January 9, 2013): Added an escape to choose due/ start, regardless of default
		(just write "due" or "start" at the beginning of your input)
		0.2.2 (January 7, 2013): Added the option to use due instead of start dates for scheduling
		0.2.1 (January 6, 2013): Recognizes "tomorrow" as a valid input
		0.2 (January 1, 2013): You can now use relative (i.e., 5d 4pm), absolute (i.e., January 6 4:00pm),
		or weekdays (Sunday 16:00) to specify the date and time desired.
		0.1 (December 29, 2012): Initial release
		
	
	# BEING WORKED ON
	
	-	Using Growl for notifications if the user has it installed and running.
	-	Implementing some of the cool features from Dan Bylr's "Defer" script
		(http://bylr.net/files/omnifocus/), like checking if there is a later start date assigned
		to a parent task.
	
	
	# KNOWN ISSUES

	- 	Months and years are not recognized in any way by the deferral portion of the script and it 
		will choke on them. If you are regularly deferring things by months, they shouldn't be on your list.
     � 	 	� 
 	 #   D E S C R I P T I O N 
 	 
 	 T h i s   s c r i p t   d e f e r s   t h e   s t a r t   d a t e   o f   a l l   s e l e c t e d   O m n i F o c u s   t a s k s   b y   a   u s e r - d e t e r m i n e d   a m o u n t   o f   t i m e . 
 	 T h e   a m o u n t   o f   t i m e   t o   d e f e r   t h e   t a s k   c a n   b e   r e c o r d e d   i n   s i m i l a r   s h o r t h a n d   t o   O m n i F o c u s   d a t e s 
 	 ( f o r   e x a m p l e ,   " 1 d   2 p m " ,   " 3 d   4 : 0 1 " ,   " J a n   1 7   1 6 : 0 0 " ,   " S a t   3 a m " ,   e t c . ) .   
 	 
 	 T h e   d a t e   p a r s e r   u n d e r s t a n d s   w e e k s   ( w e e k s ,   w e e k ,   w ) ,   d a y s   ( d a y s ,   d a y ,   d ) ,   s h o r t   a n d   l o n g   f o r m s   o f   
 	 e v e r y   m o n t h   a n d   w e e k d a y   i n   e n g l i s h   ( i . e . ,   M o n d a y / m o n ,   A u g u s t / a u g )   a n d   t i m e   i n   2 4   h o u r   
 	 ( i . e . ,   1 6 : 3 0 )   a n d   1 2   h o u r   ( i . e . ,   4 : 3 0 P M / p m / p )   f o r m a t s   ( y o u   c a n   a l s o   e n t e r   j u s t   t h e   h o u r ,   l i k e   4 p m ,   
 	 2 a m ,   e t c . ) .   
 	 
 	 Y o u   e n t e r   a n y   c o m b i n a t i o n   o f   w e e k s ,   d a y s ,   a n d   t i m e   o f   d a y   f o r   r e l a t i v e   d a t e s ,   b u t   w e e k s   a n d   d a y s   
 	 M U S T   h a v e   s o m e   s o r t   o f   i d e n t i f i e r   ( w e e k s /   w e e k /   w   f o r   w e e k s ,   d a y s / d a y / d   f o r   d a y s ) .   N o   
 	 i d e n t i f i e r   i s   n e e d e d   f o r   t i m e .   I f   y o u   a r e   u s i n g   t h e   a b s o l u t e   d a t e s ,   t h e   m o n t h   a n d   d a y   m u s t   c o m e   b e f o r e 
 	 t h e   t i m e   ( t h o u g h   y o u   c a n   p u t   e i t h e r   t h e   m o n t h   o r   d a y   f i r s t ) .   I f   y o u   a r e   u s i n g   t h e   w e e k d a y   s y n t a x ,   t h e 
 	 w e e k d a y   a n d   t i m e   c a n   b e   p u t   i n   a n y   o r d e r .   I f   y o u   u s e   b o t h   a   w e e k d a y   a n d   a n   a b s o l u t e   d a t e   ( a s   i n , 
 	 S u n d a y ,   A u g u s t   3 r d   a t   2 p m ) ,   t h e   m o n t h   s y n t a x   w i l l   t a k e   p r e c e d e n c e   ( e v e n   i f   i t   d o e s n ' t   m a k e 
 	 s e n s e   i n   t h e   c o n t e x t   o f   t h e   w e e k d a y ) . 
 	 
 	 T h i s   s c r i p t   o n l y   w o r k s   w i t h   e n g l i s h   i d e n t i f i e r s   ( f o r   e x a m p l e ,   " j o u r s "   w o n ' t   w o r k   i n   p l a c e   o f   d a y s ) . 
 	 
 	 
 	 #   L I C E N S E 
 	 
 	 I   d o n ' t   l i k e   l i c e n s e s .   I f   y o u   w a n t   t h i s ,   t a k e   i t .   I f   y o u   w a n t   t o   c h a n g e   i t ,   c h a n g e   i t . 
 	 G o o d   p e o p l e   w o n ' t   m i s r e p r e s e n t   t h i s   w o r k   a s   t h e i r   o w n   ( f o r   w h a t e v e r   i n c r e d i b l y   m i n u t e   v a l u e 
 	 t h a t   m i g h t   h a v e ) ,   a n d   b a d   p e o p l e   a r e n ' t   g o i n g   t o   b e   p u t   o f f   b y   a   l i c e n s e . 
 	 
 	 
 	 #   I N S T A L L A T I O N 
 	 
 	 - 	 C o p y   t h i s   s c r i p t   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s   ( y o u   m a y   h a v e   t o   u s e   t h e 
 	 	 G o   >   G o   t o   F o l d e r &   m e n u   i n   y o u r   f i l e   n a v i g a t i o n   a p p l i c a t i o n   o f   c h o i c e   a s   t h e   u s e r   l i b r a r y 
 	 	 f o l d e r   i s   h i d d e n   o n   M a c   O S   X   1 0 . 7 + .   A f t e r   y o u   s e l e c t   t h i s   m e n u   i t e m ,   t y p e   t h e   p a t h   a b o v e   a n d 
 	 	 h i t   e n t e r ) . 
 	 - 	 I f   y o u   p r e f e r ,   y o u   c a n   h a v e   t h i s   s c r i p t   b e   a c t i v a t e d   b y   a   u t i l i t y   l i k e   K e y b o a r d   M a e s t r o   o r   F a s t S c r i p t s 
 	 
 	 
 	 #   V E R S I O N   I N F O R M A T I O N 
 	 	 
 	 	 0 . 2 . 3   ( J a n u a r y   9 ,   2 0 1 3 ) :   A d d e d   a n   e s c a p e   t o   c h o o s e   d u e /   s t a r t ,   r e g a r d l e s s   o f   d e f a u l t 
 	 	 ( j u s t   w r i t e   " d u e "   o r   " s t a r t "   a t   t h e   b e g i n n i n g   o f   y o u r   i n p u t ) 
 	 	 0 . 2 . 2   ( J a n u a r y   7 ,   2 0 1 3 ) :   A d d e d   t h e   o p t i o n   t o   u s e   d u e   i n s t e a d   o f   s t a r t   d a t e s   f o r   s c h e d u l i n g 
 	 	 0 . 2 . 1   ( J a n u a r y   6 ,   2 0 1 3 ) :   R e c o g n i z e s   " t o m o r r o w "   a s   a   v a l i d   i n p u t 
 	 	 0 . 2   ( J a n u a r y   1 ,   2 0 1 3 ) :   Y o u   c a n   n o w   u s e   r e l a t i v e   ( i . e . ,   5 d   4 p m ) ,   a b s o l u t e   ( i . e . ,   J a n u a r y   6   4 : 0 0 p m ) , 
 	 	 o r   w e e k d a y s   ( S u n d a y   1 6 : 0 0 )   t o   s p e c i f y   t h e   d a t e   a n d   t i m e   d e s i r e d . 
 	 	 0 . 1   ( D e c e m b e r   2 9 ,   2 0 1 2 ) :   I n i t i a l   r e l e a s e 
 	 	 
 	 
 	 #   B E I N G   W O R K E D   O N 
 	 
 	 - 	 U s i n g   G r o w l   f o r   n o t i f i c a t i o n s   i f   t h e   u s e r   h a s   i t   i n s t a l l e d   a n d   r u n n i n g . 
 	 - 	 I m p l e m e n t i n g   s o m e   o f   t h e   c o o l   f e a t u r e s   f r o m   D a n   B y l r ' s   " D e f e r "   s c r i p t 
 	 	 ( h t t p : / / b y l r . n e t / f i l e s / o m n i f o c u s / ) ,   l i k e   c h e c k i n g   i f   t h e r e   i s   a   l a t e r   s t a r t   d a t e   a s s i g n e d 
 	 	 t o   a   p a r e n t   t a s k . 
 	 
 	 
 	 #   K N O W N   I S S U E S 
 
 	 -   	 M o n t h s   a n d   y e a r s   a r e   n o t   r e c o g n i z e d   i n   a n y   w a y   b y   t h e   d e f e r r a l   p o r t i o n   o f   t h e   s c r i p t   a n d   i t   
 	 	 w i l l   c h o k e   o n   t h e m .   I f   y o u   a r e   r e g u l a r l y   d e f e r r i n g   t h i n g s   b y   m o n t h s ,   t h e y   s h o u l d n ' t   b e   o n   y o u r   l i s t . 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l          j     �� �� 00 usesflagsforscheduling usesFlagsForScheduling  m     ��
�� boovtrue  B < true or false, true flags any tasks that the script runs on     �   x   t r u e   o r   f a l s e ,   t r u e   f l a g s   a n y   t a s k s   t h a t   t h e   s c r i p t   r u n s   o n      l          j    �� �� *0 methodforscheduling methodForScheduling  m       �   
 S t a r t  #  Options are "Start" or "Due"     �   :   O p t i o n s   a r e   " S t a r t "   o r   " D u e "      l        ! "   j    �� #�� &0 usegrowlforalerts useGrowlForAlerts # m    ��
�� boovtrue !   true or false    " � $ $    t r u e   o r   f a l s e   % & % l      ' ( ) ' j   	 �� *�� ,0 promptforuseroptions promptForUserOptions * m   	 
��
�� boovtrue ( "  will change after first run    ) � + + 8   w i l l   c h a n g e   a f t e r   f i r s t   r u n &  , - , l     ��������  ��  ��   -  . / . l    K 0���� 0 Z     K 1 2���� 1 o     ���� ,0 promptforuseroptions promptForUserOptions 2 k    G 3 3  4 5 4 I   �� 6 7
�� .sysodlogaskr        TEXT 6 l 	  	 8���� 8 m    	 9 9 � : : � W o u l d   y o u   l i k e   t o   a u t o m a t i c a l l y   f l a g   t h e   t a s k s   o n   w h i c h   y o u   r u n   t h i s   s c r i p t ?��  ��   7 �� ; <
�� 
btns ; J   
  = =  > ? > m   
  @ @ � A A  N o ,   D o n ' t   F l a g ?  B�� B m     C C � D D  Y e s ,   U s e   F l a g s��   < �� E��
�� 
dflt E m    ���� ��   5  F G F r     H I H n     J K J 1    ��
�� 
bhit K 1    ��
�� 
rslt I o      ���� "0 decisiononflags decisionOnFlags G  L M L Z   ( N O���� N =    P Q P o    ���� "0 decisiononflags decisionOnFlags Q m     R R � S S  N o ,   D o n ' t   F l a g O r   ! $ T U T m   ! "��
�� boovfals U o      ���� .0 usesflagsforsceduling usesFlagsForSceduling��  ��   M  V W V l  ) )��������  ��  ��   W  X Y X I  ) 5�� Z [
�� .sysodlogaskr        TEXT Z m   ) * \ \ � ] ] p W o u l d   y o u   l i k e   t o   u s e   D u e   o r   S t a r t   d a t e s   f o r   s c h e d u l i n g ? [ �� ^ _
�� 
btns ^ J   + / ` `  a b a m   + , c c � d d  D u e b  e�� e m   , - f f � g g 
 S t a r t��   _ �� h��
�� 
dflt h m   0 1���� ��   Y  i j i r   6 ? k l k n   6 9 m n m 1   7 9��
�� 
bhit n 1   6 7��
�� 
rslt l o      ���� *0 methodforscheduling methodForScheduling j  o�� o r   @ G p q p m   @ A��
�� boovfals q o      ���� ,0 promptforuseroptions promptForUserOptions��  ��  ��  ��  ��   /  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v D > Get the selection FIRST and then exit if nothing is selected.    w � x x |   G e t   t h e   s e l e c t i o n   F I R S T   a n d   t h e n   e x i t   i f   n o t h i n g   i s   s e l e c t e d . u  y z y l  L � {���� { O   L � | } | O   P � ~  ~ k   b � � �  � � � r   b � � � � n   b � � � � 1   � ���
�� 
valL � l  b � ����� � 6 b � � � � 2  b g��
�� 
OTst � F   j � � � � l  k z ����� � >  k z � � � n   l t � � � 1   p t��
�� 
pcls � n  l p � � � 1   l p��
�� 
valL �  g   l l � m   u y��
�� 
cobj��  ��   � l  { � ����� � >  { � � � � n   | � � � � 1   � ���
�� 
pcls � n  | � � � � 1   | ���
�� 
valL �  g   | | � m   � ���
�� 
FCAr��  ��  ��  ��   � o      ���� 0 tasksselected tasksSelected �  ��� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 tasksselected tasksSelected � m   � �����   � k   � � � �  � � � I  � ��� ���
�� .sysodisAaleR        TEXT � m   � � � � � � � L Y o u   d i d n ' t   s e l e c t   a n y   O m n i F o c u s   t a s k s .��   �  ��� � L   � �����  ��  ��  ��  ��    n   P _ � � � 1   [ _��
�� 
FCcn � n   P [ � � � 4  V [�� �
�� 
FCdw � m   Y Z����  � 4  P V�� �
�� 
docu � m   T U����  } m   L M � ��                                                                                  OFOC  alis    .  Macintosh HD                   BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   z  � � � l     ��������  ��  ��   �  � � � l  � � ����� � Q   � � � � � � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � l 	 � � ����� � m   � � � � � � �v T o   w h e n   w o u l d   y o u   l i k e   t o   d e f e r   t h i s   t a s k ?   N o t e :   y o u   c a n   u s e   r e l a t i v e   d a y s   ( i . e . ,   " 1 w   4 d   2 p m " ) ,   a b s o l u t e   d a t e s   ( i . e . ,   " J a n   1 9   1 4 : 0 0 " )   o r   w e e k d a y s   ( i . e . ,   " S a t   5 p m " ) ,   j u s t     a s   i n   O m n i F o c u s .��  ��   � �� ���
�� 
dtxt � m   � � � � � � �  1 d   1 2 a m��   �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � 1   � ���
�� 
rslt � o      ���� 0 timedeferred timeDeferred��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 	errortext 	errorText � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   � � � ����� � =  � � � � � o   � ����� 0 errornumber errorNumber � m   � ������� � L   � �����  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( Setting the desired date based on input    � � � � P   S e t t i n g   t h e   d e s i r e d   d a t e   b a s e d   o n   i n p u t �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � o      ���� 0 desireddate desiredDate��  ��   �  � � � l  � � ����� � r   � � � � � m   � ���   � n       � � � 1   � ��~
�~ 
time � o   � ��}�} 0 desireddate desiredDate��  ��   �  � � � l  � ��|�{ � r   � � � � I   � ��z ��y�z 0 englishtime englishTime �  ��x � o   � ��w�w 0 timedeferred timeDeferred�x  �y   � o      �v�v "0 secondsdeferred secondsDeferred�|  �{   �  � � � l  ��u�t � Z  � ��s�r � A  	 � � � o  �q�q "0 secondsdeferred secondsDeferred � m  �p�p   � L  �o�o  �s  �r  �u  �t   �  � � � l  ��n�m � r   � � � [   � � � o  �l�l 0 desireddate desiredDate � o  �k�k "0 secondsdeferred secondsDeferred � o      �j�j 0 desireddate desiredDate�n  �m   �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f � ��f   � u o Escape to manually choose start and due dates, regardless of the default (start with the input with that word)    � � � � �   E s c a p e   t o   m a n u a l l y   c h o o s e   s t a r t   a n d   d u e   d a t e s ,   r e g a r d l e s s   o f   t h e   d e f a u l t   ( s t a r t   w i t h   t h e   i n p u t   w i t h   t h a t   w o r d ) �  � � � l * �e�d  r  * l &�c�b C  & o  "�a�a 0 timedeferred timeDeferred m  "% � 
 s t a r t�c  �b   o      �`�` 0 escapetostart escapeToStart�e  �d   � 	 l +6
�_�^
 r  +6 l +2�]�\ C  +2 o  +.�[�[ 0 timedeferred timeDeferred m  .1 �  d u e�]  �\   o      �Z�Z 0 escapetodue escapeToDue�_  �^  	  l     �Y�X�W�Y  �X  �W    l     �V�V   H B Do the actual work of setting the date and the flag, if necessary    � �   D o   t h e   a c t u a l   w o r k   o f   s e t t i n g   t h e   d a t e   a n d   t h e   f l a g ,   i f   n e c e s s a r y  l 7��U�T O  7� Y  ;��S �R O  L�!"! k  W�## $%$ Z  W�&'�Q(& G  Wu)*) l Wk+�P�O+ F  Wk,-, l W`.�N�M. = W`/0/ o  W\�L�L *0 methodforscheduling methodForScheduling0 m  \_11 �22 
 S t a r t�N  �M  - H  cg33 o  cf�K�K 0 escapetodue escapeToDue�P  �O  * o  nq�J�J 0 escapetostart escapeToStart' r  x�454 o  x{�I�I 0 desireddate desiredDate5 n      676 1  |��H
�H 
FCDs7  g  {|�Q  ( r  ��898 o  ���G�G 0 desireddate desiredDate9 n      :;: 1  ���F
�F 
FCDd;  g  ��% <�E< Z ��=>�D�C= o  ���B�B 00 usesflagsforscheduling usesFlagsForScheduling> r  ��?@? m  ���A
�A boovtrue@ n     ABA 1  ���@
�@ 
FCflB  g  ���D  �C  �E  " n  LTCDC 4  OT�?E
�? 
cobjE o  RS�>�> 0 i  D o  LO�=�= 0 tasksselected tasksSelected�S 0 i   m  >?�<�<   l ?GF�;�:F n  ?GGHG 1  BF�9
�9 
lengH o  ?B�8�8 0 tasksselected tasksSelected�;  �:  �R   m  78II�                                                                                  OFOC  alis    .  Macintosh HD                   BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �U  �T   JKJ l     �7�6�5�7  �6  �5  K LML l     �4�3�2�4  �3  �2  M NON l     �1PQ�1  P P J//////// Understanding the date and time given in plain english ////////--   Q �RR � / / / / / / / /   U n d e r s t a n d i n g   t h e   d a t e   a n d   t i m e   g i v e n   i n   p l a i n   e n g l i s h   / / / / / / / / - -O STS l     �0�/�.�0  �/  �.  T UVU i    WXW I      �-Y�,�- 0 englishtime englishTimeY Z�+Z o      �*�* 0 datedesired dateDesired�+  �,  X k    
[[ \]\ l     �)�(�'�)  �(  �'  ] ^_^ r     `a` m     �&�&  a o      �%�% 0 
monthfound 
monthFound_ bcb r    ded m    �$�$  e o      �#�# 0 weekdayfound weekdayFoundc fgf l   �"hi�"  h Z T Solves an issue with the treatment of leading zeros for the minutes (i.e., 12:01am)   i �jj �   S o l v e s   a n   i s s u e   w i t h   t h e   t r e a t m e n t   o f   l e a d i n g   z e r o s   f o r   t h e   m i n u t e s   ( i . e . ,   1 2 : 0 1 a m )g klk r    mnm m    	�!
�! boovfalsn o      � �  &0 minuteleadingzero minuteLeadingZerol opo l   ����  �  �  p qrq l   �st�  s = 7 Figures out if the user excluded any of the components   t �uu n   F i g u r e s   o u t   i f   t h e   u s e r   e x c l u d e d   a n y   o f   t h e   c o m p o n e n t sr vwv r    xyx m    �
� boovfalsy o      �� 0 timemissing timeMissingw z{z r    |}| m    �
� boovfals} o      �� 0 daysmissing daysMissing{ ~~ r    ��� m    �
� boovfals� o      �� 0 weeksmissing weeksMissing ��� l   ����  �  �  � ��� l   ����  � 1 + Sets up the delimiters for different items   � ��� V   S e t s   u p   t h e   d e l i m i t e r s   f o r   d i f f e r e n t   i t e m s� ��� r    !��� J    �� ��� m    �� ���  a m� ��� m    �� ���  p m� ��� m    �� ���  a� ��� m    �� ���  p� ��� m    �� ���  :�  � o      ��  0 timedelimiters timeDelimiters� ��� r   " )��� J   " '�� ��� m   " #�� ���  d a y s� ��� m   # $�� ���  d a y� ��� m   $ %�� ���  d�  � o      �� 0 daydelimiters dayDelimiters� ��� r   * 1��� J   * /�� ��� m   * +�� ��� 
 w e e k s� ��� m   + ,�� ���  w e e k� ��� m   , -�� ���  w�  � o      ��  0 weekdelimiters weekDelimiters� ��� r   2 T��� J   2 R�� ��� m   2 3�� ���  J a n� ��� m   3 4�� ���  F e b� ��� m   4 5�� ���  M a r� ��� m   5 6�� ���  A p r� ��� m   6 9�� ���  M a y� ��� m   9 <�� ���  J u n� ��� m   < ?�� ���  J u l� ��� m   ? B�� ���  A u g� ��� m   B E�� ���  S e p� ��� m   E H�� ���  O c t� ��� m   H K�� ���  N o v� ��� m   K N�� ���  D e c�  � o      �
�
 "0 monthdelimiters monthDelimiters� ��� r   U p��� J   U n�� ��� m   U X�� ���  S u n� ��� m   X [   �  M o n�  m   [ ^ �  T u e  m   ^ a �		  W e d 

 m   a d �  T h u  m   d g �  F r i �	 m   g j �  S a t�	  � o      �� &0 weekdaydelimiters weekdayDelimiters�  r   q { J   q y  m   q t � 
 T o d a y � m   t w �    T o m o r r o w�   o      �� <0 specialrelativedaydelimiters specialRelativeDayDelimiters !"! r   | �#$# J   | �%% &'& m   | (( �))   ' *+* m    �,, �--  t h+ ./. m   � �00 �11  s t/ 232 m   � �44 �55  r d3 6�6 m   � �77 �88  n d�  $ o      �� "0 otherdelimiters otherDelimiters" 9:9 l  � �����  �  �  : ;<; r   � �=>= m   � �?? �@@  u n k n o w n> o      � �  0 inthe inThe< ABA r   � �CDC m   � �����  D o      ���� 00 howmanynumbersinputted howManyNumbersInputtedB EFE r   � �GHG J   � �����  H o      ���� 0 numlist numListF IJI l  � ���������  ��  ��  J KLK l  � ���MN��  M I C See if they gave an absolute, a relative one, or a day of the week   N �OO �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e ,   a   r e l a t i v e   o n e ,   o r   a   d a y   o f   t h e   w e e kL PQP Y   � �R��ST��R k   � �UU VWV Z   � �XY����X E   � �Z[Z o   � ����� 0 datedesired dateDesired[ l  � �\����\ n   � �]^] 4   � ���_
�� 
cobj_ o   � ����� 0 i  ^ o   � ����� "0 monthdelimiters monthDelimiters��  ��  Y k   � �`` aba r   � �cdc o   � ����� 0 i  d o      ���� 0 
monthfound 
monthFoundb e��e  S   � ���  ��  ��  W f��f Z   � �gh����g B   � �iji o   � ����� 0 i  j l  � �k����k n   � �lml 1   � ���
�� 
lengm o   � ����� &0 weekdaydelimiters weekdayDelimiters��  ��  h Z   � �no����n E   � �pqp o   � ����� 0 datedesired dateDesiredq l  � �r����r n   � �sts 4   � ���u
�� 
cobju o   � ����� 0 i  t o   � ����� &0 weekdaydelimiters weekdayDelimiters��  ��  o r   � �vwv o   � ����� 0 i  w o      ���� 0 weekdayfound weekdayFound��  ��  ��  ��  ��  �� 0 i  S m   � ����� T l  � �x����x n   � �yzy 1   � ���
�� 
lengz o   � ����� "0 monthdelimiters monthDelimiters��  ��  ��  Q {|{ l  � ���������  ��  ��  | }~} l  � ������   K E Getting rid of all the bits I could imagine being around the numbers   � ��� �   G e t t i n g   r i d   o f   a l l   t h e   b i t s   I   c o u l d   i m a g i n e   b e i n g   a r o u n d   t h e   n u m b e r s~ ��� r   ���� l  � ������ b   � ��� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� o   � ����� "0 monthdelimiters monthDelimiters� o   � �����  0 weekdelimiters weekDelimiters� o   � ����� 0 daydelimiters dayDelimiters� o   � �����  0 timedelimiters timeDelimiters� o   � ����� "0 otherdelimiters otherDelimiters��  ��  � 1   ��
�� 
txdl� ��� r  ��� n  ��� 2  ��
�� 
citm� o  ���� 0 datedesired dateDesired� o      ���� 0 	inputlist 	inputList� ��� l ������  �   Resetting delimiters   � ��� *   R e s e t t i n g   d e l i m i t e r s� ��� r  ��� J  �� ���� m  �� ���  ��  � 1  ��
�� 
txdl� ��� l ��������  ��  ��  � ��� l ������  � ( " Count how many numbers were given   � ��� D   C o u n t   h o w   m a n y   n u m b e r s   w e r e   g i v e n� ��� Y  ��������� k  .��� ��� Z  .y������� > .<��� l .8������ n  .8��� 4  18���
�� 
cobj� o  47���� 0 i  � o  .1���� 0 	inputlist 	inputList��  ��  � m  8;�� ���  � Q  ?u����� k  Bl�� ��� r  BT��� c  BP��� l BL������ n  BL��� 4  EL���
�� 
cobj� o  HK���� 0 i  � o  BE���� 0 	inputlist 	inputList��  ��  � m  LO��
�� 
long� o      ���� 0 tempitem tempItem� ���� Z Ul������� = U`��� n  U\��� m  X\��
�� 
pcls� o  UX���� 0 tempitem tempItem� m  \_��
�� 
long� r  ch��� [  cf��� o  cd���� 00 howmanynumbersinputted howManyNumbersInputted� m  de���� � o      ���� 00 howmanynumbersinputted howManyNumbersInputted��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ���� r  z���� m  z}�� ���  � o      ���� 0 tempitem tempItem��  �� 0 i  � m   !���� � l !)������ n  !)��� 1  $(��
�� 
leng� o  !$���� 0 	inputlist 	inputList��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � !  See if they included AM/PM   � ��� 6   S e e   i f   t h e y   i n c l u d e d   A M / P M� ��� Z ��������� I  ��������� (0 isnumberidentifier isNumberIdentifier� ��� m  ���� ���  a� ���� o  ������ 0 datedesired dateDesired��  ��  � r  ����� m  ���� ���  A M� o      ���� 0 inthe inThe��  ��  � ��� Z ��������� I  ��������� (0 isnumberidentifier isNumberIdentifier� ��� m  ���� ���  p� ���� o  ������ 0 datedesired dateDesired��  ��  � r  ����� m  ���� ���  P M� o      ���� 0 inthe inThe��  ��  �    l ����������  ��  ��    l ������   R L Get the numbers of the input ��start from the back to get the minutes first    � �   G e t   t h e   n u m b e r s   o f   t h e   i n p u t    � s t a r t   f r o m   t h e   b a c k   t o   g e t   t h e   m i n u t e s   f i r s t  Y  �A	��
	 Q  �<�� k  �3  l ������   K E If the minutes have a leading zero, just combine them with the hours    � �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s � Z  �3�~ F  �� l ���}�| =  �� o  ���{�{ 0 numlist numList J  ���z�z  �}  �|   l ���y�x C  ��  l ��!�w�v! n  ��"#" 4  ���u$
�u 
cobj$ o  ���t�t 0 i  # o  ���s�s 0 	inputlist 	inputList�w  �v    m  ��%% �&&  0�y  �x   k  �	'' ()( r  �*+* c  � ,-, l ��.�r�q. b  ��/0/ l ��1�p�o1 n  ��232 4  ���n4
�n 
cobj4 l ��5�m�l5 \  ��676 o  ���k�k 0 i  7 m  ���j�j �m  �l  3 o  ���i�i 0 	inputlist 	inputList�p  �o  0 l ��8�h�g8 n  ��9:9 4  ���f;
�f 
cobj; o  ���e�e 0 i  : o  ���d�d 0 	inputlist 	inputList�h  �g  �r  �q  - m  ���c
�c 
nmbr+ l     <�b�a< n      =>=  ;  > o   �`�` 0 numlist numList�b  �a  ) ?�_? r  	@A@ m  �^
�^ boovtrueA o      �]�] &0 minuteleadingzero minuteLeadingZero�_  �~   k  3BB CDC l �\EF�\  E &   Otherwise, get the numbers only   F �GG @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l yD HIH r  JKJ c  LML l N�[�ZN n  OPO 4  �YQ
�Y 
cobjQ o  �X�X 0 i  P o  �W�W 0 	inputlist 	inputList�[  �Z  M m  �V
�V 
nmbrK o      �U�U 0 tempnum tempNumI R�TR Z 3ST�S�RS >  $UVU o  "�Q�Q 0 tempnum tempNumV m  "#�P�P  T r  '/WXW o  '*�O�O 0 tempnum tempNumX l     Y�N�MY n      Z[Z  ;  -.[ o  *-�L�L 0 numlist numList�N  �M  �S  �R  �T  �   R      �K�J�I
�K .ascrerr ****      � ****�J  �I  ��  �� 0 i  
 l ��\�H�G\ n  ��]^] 1  ���F
�F 
leng^ o  ���E�E 0 	inputlist 	inputList�H  �G   m  ���D�D  m  ���C�C�� _`_ l BB�B�A�@�B  �A  �@  ` aba l BB�?cd�?  c I C Reverse it so the order is from biggest to smallest time increment   d �ee �   R e v e r s e   i t   s o   t h e   o r d e r   i s   f r o m   b i g g e s t   t o   s m a l l e s t   t i m e   i n c r e m e n tb fgf r  BMhih n  BIjkj 1  EI�>
�> 
rvsek o  BE�=�= 0 numlist numListi o      �<�< 0 numlist numListg lml l NN�;�:�9�;  �:  �9  m non Z  Npqrsp F  N[tut l NQv�8�7v = NQwxw o  NO�6�6 0 
monthfound 
monthFoundx m  OP�5�5  �8  �7  u l TWy�4�3y = TWz{z o  TU�2�2 0 weekdayfound weekdayFound{ m  UV�1�1  �4  �3  q k  ^)|| }~} l ^^�0��0   * $ If the user gave a relative date...   � ��� H   I f   t h e   u s e r   g a v e   a   r e l a t i v e   d a t e . . .~ ��� O  ^���� k  b��� ��� r  bn��� H  bl�� n bk��� I  ck�/��.�/ (0 isnumberidentifier isNumberIdentifier� ��� m  cf�� ���  d� ��-�  g  fg�-  �.  �  f  bc� o      �,�, 0 daysmissing daysMissing� ��� r  o{��� H  oy�� n ox��� I  px�+��*�+ (0 isnumberidentifier isNumberIdentifier� ��� m  ps�� ���  w� ��)�  g  st�)  �*  �  f  op� o      �(�( 0 weeksmissing weeksMissing� ��'� Z |����&�%� =  |���� l |���$�#� \  |���� \  |���� o  |}�"�" 00 howmanynumbersinputted howManyNumbersInputted� l }���!� � c  }���� l }���� H  }�� o  }~�� 0 daysmissing daysMissing�  �  � m  ��
� 
long�!  �   � l ������ c  ����� l ������ H  ���� o  ���� 0 weeksmissing weeksMissing�  �  � m  ���
� 
long�  �  �$  �#  � m  ����  � r  ����� m  ���
� boovtrue� o      �� 0 timemissing timeMissing�&  �%  �'  � o  ^_�� 0 datedesired dateDesired� ��� l ������  �  �  � ��� l ������  �    Figure out how many weeks   � ��� 4   F i g u r e   o u t   h o w   m a n y   w e e k s� ��� Z  ������� H  ���� o  ���� 0 weeksmissing weeksMissing� r  ����� n  ����� 4  ����
� 
cobj� m  ���
�
 � o  ���	�	 0 numlist numList� o      �� 0 weeksdeferred weeksDeferred�  � r  ����� m  ����  � o      �� 0 weeksdeferred weeksDeferred� ��� l ������  �  �  � ��� l ������  �   Figure out how many days   � ��� 2   F i g u r e   o u t   h o w   m a n y   d a y s� ��� Z  ������� H  ���� o  ��� �  0 daysmissing daysMissing� r  ����� I  ��������� 0 howmanydays howManyDays� ��� o  ������ 0 numlist numList� ���� o  ������ 0 weeksmissing weeksMissing��  ��  � o      ���� 0 daysdeferred daysDeferred�  � Z  �������� E  ����� o  ������ 0 datedesired dateDesired� m  ���� ���  T o m o r r o w� k  ���� ��� l ��������  � - ' Special case where they put "tomorrow"   � ��� N   S p e c i a l   c a s e   w h e r e   t h e y   p u t   " t o m o r r o w "� ���� r  ����� m  ������ � o      ���� 0 daysdeferred daysDeferred��  ��  � k  ���� ��� l ��������  � 1 + If they exclude it entirely or put "Today"   � ��� V   I f   t h e y   e x c l u d e   i t   e n t i r e l y   o r   p u t   " T o d a y "� ���� r  ����� m  ������  � o      ���� 0 daysdeferred daysDeferred��  � ��� l ����������  ��  ��  � ��� l ��������  �   Figure out the time   � ��� (   F i g u r e   o u t   t h e   t i m e� ��� r  ��   I  �������� $0 figureoutthetime figureOutTheTime  o  ������ 0 numlist numList  o  ������ 0 timemissing timeMissing  o  ������ 0 daysmissing daysMissing 	
	 o  ������ 0 weeksmissing weeksMissing
 �� o  ������ &0 minuteleadingzero minuteLeadingZero��  ��   o      ���� $0 timedeferredtemp timeDeferredTemp�  l ������   3 - Understand the meaning of the time component    � Z   U n d e r s t a n d   t h e   m e a n i n g   o f   t h e   t i m e   c o m p o n e n t  r  �� I  �������� &0 understandthetime understandTheTime  o  ������ $0 timedeferredtemp timeDeferredTemp  o  ������ 0 inthe inThe �� o  ������ 0 timemissing timeMissing��  ��   o      ���� 0 timedeferred timeDeferred  l ����������  ��  ��    l ���� ��   G A Creating the time deferred based on minutes and hours calculated     �!! �   C r e a t i n g   t h e   t i m e   d e f e r r e d   b a s e d   o n   m i n u t e s   a n d   h o u r s   c a l c u l a t e d "#" Z  �'$%��&$ @  �'(' o  ����� 0 timedeferred timeDeferred( m  ����  % r  )*) [  +,+ [  -.- o  	���� 0 timedeferred timeDeferred. ]  	/0/ o  	���� 0 daysdeferred daysDeferred0 1  ��
�� 
days, ]  121 o  ���� 0 weeksdeferred weeksDeferred2 1  ��
�� 
week* o      ���� &0 totaltimedeferred totalTimeDeferred��  & r   '343 o   #���� 0 timedeferred timeDeferred4 o      ���� &0 totaltimedeferred totalTimeDeferred# 565 l ((��78��  7 %  end of relative date-only code   8 �99 >   e n d   o f   r e l a t i v e   d a t e - o n l y   c o d e6 :��: l ((��������  ��  ��  ��  r ;<; F  ,9=>= l ,/?����? ?  ,/@A@ o  ,-���� 0 weekdayfound weekdayFoundA m  -.����  ��  ��  > l 25B����B = 25CDC o  23���� 0 
monthfound 
monthFoundD m  34����  ��  ��  < E��E k  <�FF GHG Z <OIJ����I A  <EKLK n  <CMNM 1  ?C��
�� 
lengN o  <?���� 0 numlist numListL m  CD���� J r  HKOPO m  HI��
�� boovtrueP o      ���� 0 timemissing timeMissing��  ��  H QRQ l PP��ST��  S F @ Same as if the day and the week were missing on a relative date   T �UU �   S a m e   a s   i f   t h e   d a y   a n d   t h e   w e e k   w e r e   m i s s i n g   o n   a   r e l a t i v e   d a t eR VWV r  P`XYX I  P\��Z���� $0 figureoutthetime figureOutTheTimeZ [\[ o  QT���� 0 numlist numList\ ]^] o  TU���� 0 timemissing timeMissing^ _`_ m  UV��
�� boovtrue` aba m  VW��
�� boovtrueb c��c o  WX���� &0 minuteleadingzero minuteLeadingZero��  ��  Y o      ���� $0 timedeferredtemp timeDeferredTempW ded r  aofgf I  ak��h���� &0 understandthetime understandTheTimeh iji o  be���� $0 timedeferredtemp timeDeferredTempj klk o  ef���� 0 inthe inThel m��m o  fg���� 0 timemissing timeMissing��  ��  g o      ���� 0 timedeferred timeDeferrede non r  pzpqp I  pv��r���� 00 daysfromtodaytoweekday daysFromTodayToWeekdayr s��s o  qr���� 0 weekdayfound weekdayFound��  ��  q o      ���� 0 daysdeferred daysDeferredo t��t Z  {�uv��wu @  {�xyx o  {~���� 0 timedeferred timeDeferredy m  ~����  v r  ��z{z [  ��|}| ]  ��~~ o  ������ 0 daysdeferred daysDeferred 1  ����
�� 
days} o  ������ 0 timedeferred timeDeferred{ o      ���� &0 totaltimedeferred totalTimeDeferred��  w r  ����� o  ������ 0 timedeferred timeDeferred� o      ���� &0 totaltimedeferred totalTimeDeferred��  ��  s k  ��� ��� l ��������  � + % If the user gave an absolute date...   � ��� J   I f   t h e   u s e r   g a v e   a n   a b s o l u t e   d a t e . . .� ��� Z ��������� A  ����� n  ����� 1  ����
�� 
leng� o  ������ 0 numlist numList� m  ������ � r  ����� m  ����
�� boovtrue� o      ���� 0 timemissing timeMissing��  ��  � ��� l ��������  � G A Same as if the day were there but week wasn't on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   w e r e   t h e r e   b u t   w e e k   w a s n ' t   o n   a   r e l a t i v e   d a t e� ��� r  ����� I  ��������� $0 figureoutthetime figureOutTheTime� ��� o  ������ 0 numlist numList� ��� o  ������ 0 timemissing timeMissing� ��� m  ����
�� boovfals� ��� m  ����
�� boovtrue� ���� o  ������ &0 minuteleadingzero minuteLeadingZero��  ��  � o      ���� $0 timedeferredtemp timeDeferredTemp� ��� r  ����� I  ��������� &0 understandthetime understandTheTime� ��� o  ������ $0 timedeferredtemp timeDeferredTemp� ��� o  ������ 0 inthe inThe� ���� o  ���� 0 timemissing timeMissing��  ��  � o      �~�~ 0 timedeferred timeDeferred� ��� r  ����� I  ���}��|�} 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o  ���{�{ 0 
monthfound 
monthFound� ��z� l ����y�x� n  ����� 4  ���w�
�w 
cobj� m  ���v�v � o  ���u�u 0 numlist numList�y  �x  �z  �|  � o      �t�t 60 timefromtodayuntildesired timeFromTodayUntilDesired� ��s� Z  ����r�� @  ����� o  ���q�q 0 timedeferred timeDeferred� m  ���p�p  � r  ����� [  ����� o  ���o�o 60 timefromtodayuntildesired timeFromTodayUntilDesired� o  ���n�n 0 timedeferred timeDeferred� o      �m�m &0 totaltimedeferred totalTimeDeferred�r  � r  ���� o  ���l�l 0 timedeferred timeDeferred� o      �k�k &0 totaltimedeferred totalTimeDeferred�s  o ��� l �j�i�h�j  �i  �h  � ��� L  �� o  �g�g &0 totaltimedeferred totalTimeDeferred� ��f� l 		�e�d�c�e  �d  �c  �f  V ��� l     �b�a�`�b  �a  �`  � ��� l     �_�^�]�_  �^  �]  � ��� i    ��� I      �\��[�\ (0 isnumberidentifier isNumberIdentifier� ��� o      �Z�Z (0 possibleidentifier possibleIdentifier� ��Y� o      �X�X "0 containerstring containerString�Y  �[  � k     ��� ��� r     ��� m     �W
�W boovtrue� o      �V�V $0 numberidentifier numberIdentifier� ��� r    ��� m    �U
�U boovfals� o      �T�T 20 identifierisincontainer identifierIsInContainer� ��� r    ��� m    	�S�S  � o      �R�R 40 positionoflastidentifier positionOfLastIdentifier� ��� r    ��� n    ��� 2    �Q
�Q 
cha � o    �P�P "0 containerstring containerString� o      �O�O 0 charlist charList� ��� l   �N�M�L�N  �M  �L  � ��� Y    8��K���J� Z    3���I�H� =    %��� l   #��G�F� n    #��� 4     #�E�
�E 
cobj� o   ! "�D�D 0 i  � o     �C�C 0 charlist charList�G  �F  � o   # $�B�B (0 possibleidentifier possibleIdentifier� k   ( /�� ��� r   ( +��� m   ( )�A
�A boovtrue� o      �@�@ 20 identifierisincontainer identifierIsInContainer�  �?  r   , / o   , -�>�> 0 i   o      �=�= 40 positionoflastidentifier positionOfLastIdentifier�?  �I  �H  �K 0 i  � m    �<�< � l   �;�: n     1    �9
�9 
leng o    �8�8 0 charlist charList�;  �:  �J  �  l  9 9�7�6�5�7  �6  �5   	 Z   9 
�4
 G   9 D l  9 <�3�2 =  9 < o   9 :�1�1 40 positionoflastidentifier positionOfLastIdentifier m   : ;�0�0  �3  �2   l  ? B�/�. =  ? B o   ? @�-�- 40 positionoflastidentifier positionOfLastIdentifier m   @ A�,�, �/  �.   r   G J m   G H�+
�+ boovfals o      �*�* $0 numberidentifier numberIdentifier�4   k   M   r   M U n   M S 4   N S�)
�) 
cha  l  O R�(�' \   O R !  o   O P�&�& 40 positionoflastidentifier positionOfLastIdentifier! m   P Q�%�% �(  �'   o   M N�$�$ "0 containerstring containerString o      �#�# "0 characterbefore characterBefore "#" Q   V g$%�"$ r   Y ^&'& c   Y \()( o   Y Z�!�! "0 characterbefore characterBefore) m   Z [� 
�  
long' o      �� "0 characterbefore characterBefore% R      ���
� .ascrerr ****      � ****�  �  �"  # *�* Z  h +,��+ F   h u-.- l  h k/��/ >  h k010 o   h i�� "0 characterbefore characterBefore1 m   i j22 �33   �  �  . l  n s4��4 >  n s565 n   n q787 m   o q�
� 
pcls8 o   n o�� "0 characterbefore characterBefore6 m   q r�
� 
long�  �  , r   x {9:9 m   x y�
� boovfals: o      �� $0 numberidentifier numberIdentifier�  �  �  	 ;�; L   � �<< o   � ��� $0 numberidentifier numberIdentifier�  � =>= l     ���
�  �  �
  > ?@? l     �	���	  �  �  @ ABA i    CDC I      �E�� 0 howmanydays howManyDaysE FGF o      �� 0 numlist numListG H�H o      �� 0 weeksmissing weeksMissing�  �  D k     II JKJ Z     LM�NL H     OO o     � �  0 weeksmissing weeksMissingM r    PQP n    	RSR 4    	��T
�� 
cobjT m    ���� S o    ���� 0 numlist numListQ o      ���� 0 daysdeferred daysDeferred�  N r    UVU n    WXW 4    ��Y
�� 
cobjY m    ���� X o    ���� 0 numlist numListV o      ���� 0 daysdeferred daysDeferredK Z��Z L    [[ o    ���� 0 daysdeferred daysDeferred��  B \]\ l     ��������  ��  ��  ] ^_^ l     ��������  ��  ��  _ `a` i    bcb I      ��d���� $0 figureoutthetime figureOutTheTimed efe o      ���� 0 numlist numListf ghg o      ���� 0 timemissing timeMissingh iji o      ���� 0 daysmissing daysMissingj klk o      ���� 0 weeksmissing weeksMissingl m��m o      ���� &0 minuteleadingzero minuteLeadingZero��  ��  c k     <nn opo Z     9qr��sq H     tt o     ���� 0 timemissing timeMissingr Z    3uv��wu o    ���� &0 minuteleadingzero minuteLeadingZerov r   	 xyx n   	 z{z 4   
 ��|
�� 
cobj| m    ������{ o   	 
���� 0 numlist numListy o      ���� $0 timedeferredtemp timeDeferredTemp��  w k    3}} ~~ r    ��� m    �� ���  � 1    ��
�� 
txdl ���� r    3��� c    1��� l   /������ c    /��� l   -������ n    -��� 7   -����
�� 
cobj� m    ������� l    ,������ [     ,��� [   ! '��� m   ! "���� � l  " &������ c   " &��� l  " $������ H   " $�� o   " #���� 0 daysmissing daysMissing��  ��  � m   $ %��
�� 
long��  ��  � l 	 ' +������ l  ' +������ c   ' +��� l  ' )������ H   ' )�� o   ' (���� 0 weeksmissing weeksMissing��  ��  � m   ) *��
�� 
long��  ��  ��  ��  ��  ��  � o    ���� 0 numlist numList��  ��  � m   - .��
�� 
ctxt��  ��  � m   / 0��
�� 
long� o      ���� $0 timedeferredtemp timeDeferredTemp��  ��  s r   6 9��� m   6 7����  � o      ���� $0 timedeferredtemp timeDeferredTempp ���� L   : <�� o   : ;���� $0 timedeferredtemp timeDeferredTemp��  a ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   ��� I      ������� &0 understandthetime understandTheTime� ��� o      ���� $0 timedeferredtemp timeDeferredTemp� ��� o      ���� 0 inthe inThe� ���� o      ���� 0 timemissing timeMissing��  ��  � k     ��� ��� Z     ������� o     ���� 0 timemissing timeMissing� r    ��� m    ����  � o      ���� 0 timedeferred timeDeferred��  � Z   
 ������� ?   
 ��� o   
 ���� $0 timedeferredtemp timeDeferredTemp� m    ����	`� k    �� ��� l   ������  � 7 1 If the time is greater than the 24 hour clock...   � ��� b   I f   t h e   t i m e   i s   g r e a t e r   t h a n   t h e   2 4   h o u r   c l o c k . . .� ��� I   �����
�� .sysodisAaleR        TEXT� m    �� ��� � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .��  � ��� r    ��� m    ������� o      ���� 0 timedeferred timeDeferred� ���� l   ��������  ��  ��  ��  � ��� =    !��� o    ���� $0 timedeferredtemp timeDeferredTemp� m     ����	`� ��� k   $ )�� ��� l  $ $������  � &   If the time is equal to 2400...   � ��� @   I f   t h e   t i m e   i s   e q u a l   t o   2 4 0 0 . . .� ��� r   $ '��� 1   $ %��
�� 
days� o      ���� 0 timedeferred timeDeferred� ���� l  ( (��������  ��  ��  ��  � ��� @   , /��� o   , -���� $0 timedeferredtemp timeDeferredTemp� m   - .���� d� ��� k   2 ��� ��� l  2 2������  � p j if they entered the time as a full hour:minute pair (with or without AM/PM and with or without the colon)   � ��� �   i f   t h e y   e n t e r e d   t h e   t i m e   a s   a   f u l l   h o u r : m i n u t e   p a i r   ( w i t h   o r   w i t h o u t   A M / P M   a n d   w i t h   o r   w i t h o u t   t h e   c o l o n )� ��� r   2 E��� l  2 C������ c   2 C��� l  2 A������ c   2 A��� l  2 ?������ n   2 ?��� 7  5 ?����
�� 
cha � m   9 ;������� m   < >������� l  2 5������ c   2 5��� o   2 3���� $0 timedeferredtemp timeDeferredTemp� m   3 4��
�� 
ctxt��  ��  ��  ��  � m   ? @��
�� 
ctxt��  ��  � m   A B��
�� 
long��  ��  � o      ���� "0 minutesdeferred minutesDeferred� � � r   F Y l  F W���� c   F W l  F U���� c   F U l  F S	����	 n   F S

 7  I S��
�� 
cha  m   M O��  m   P R�~�~�� l  F I�}�| c   F I o   F G�{�{ $0 timedeferredtemp timeDeferredTemp m   G H�z
�z 
ctxt�}  �|  ��  ��   m   S T�y
�y 
ctxt��  ��   m   U V�x
�x 
long��  ��   o      �w�w 0 hoursdeferred hoursDeferred   l  Z Z�v�v   Z T Figuring out the minutes and hours in the time given (minutes are last two numbers)    � �   F i g u r i n g   o u t   t h e   m i n u t e s   a n d   h o u r s   i n   t h e   t i m e   g i v e n   ( m i n u t e s   a r e   l a s t   t w o   n u m b e r s )  l  Z Z�u�t�s�u  �t  �s    Z   Z � =   Z ] o   Z [�r�r 0 inthe inThe m   [ \   �!!  P M k   ` k"" #$# l  ` `�q%&�q  % 3 - For any number specifically designated as PM   & �'' Z   F o r   a n y   n u m b e r   s p e c i f i c a l l y   d e s i g n a t e d   a s   P M$ (�p( r   ` k)*) l  ` i+�o�n+ [   ` i,-, ]   ` e./. l  ` c0�m�l0 [   ` c121 o   ` a�k�k 0 hoursdeferred hoursDeferred2 m   a b�j�j �m  �l  / 1   c d�i
�i 
hour- ]   e h343 o   e f�h�h "0 minutesdeferred minutesDeferred4 1   f g�g
�g 
min �o  �n  * o      �f�f 0 timedeferred timeDeferred�p   565 F   n y787 =   n q9:9 o   n o�e�e 0 hoursdeferred hoursDeferred: m   o p�d�d 8 =   t w;<; o   t u�c�c 0 inthe inThe< m   u v== �>>  A M6 ?�b? k   | �@@ ABA l  | |�aCD�a  C   For 12:00AM exactly   D �EE (   F o r   1 2 : 0 0 A M   e x a c t l yB F�`F r   | �GHG ]   | IJI o   | }�_�_ "0 minutesdeferred minutesDeferredJ 1   } ~�^
�^ 
min H o      �]�] 0 timedeferred timeDeferred�`  �b   k   � �KK LML l  � ��\NO�\  N \ V For times in the AM (implicit or explicit) and explicit times in the PM (i.e., 16:00)   O �PP �   F o r   t i m e s   i n   t h e   A M   ( i m p l i c i t   o r   e x p l i c i t )   a n d   e x p l i c i t   t i m e s   i n   t h e   P M   ( i . e . ,   1 6 : 0 0 )M Q�[Q r   � �RSR l  � �T�Z�YT [   � �UVU ]   � �WXW o   � ��X�X 0 hoursdeferred hoursDeferredX 1   � ��W
�W 
hourV ]   � �YZY o   � ��V�V "0 minutesdeferred minutesDeferredZ 1   � ��U
�U 
min �Z  �Y  S o      �T�T 0 timedeferred timeDeferred�[   [�S[ l  � ��R�Q�P�R  �Q  �P  �S  � \]\ ?   � �^_^ o   � ��O�O $0 timedeferredtemp timeDeferredTemp_ m   � ��N�N ] `a` k   � �bb cdc l  � ��Mef�M  e ; 5 If they entered the time as a single number above 24   f �gg j   I f   t h e y   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   a b o v e   2 4d hih I  � ��Lj�K
�L .sysodisAaleR        TEXTj m   � �kk �ll � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .�K  i mnm r   � �opo m   � ��J�J��p o      �I�I 0 timedeferred timeDeferredn q�Hq l  � ��G�F�E�G  �F  �E  �H  a rsr B   � �tut o   � ��D�D $0 timedeferredtemp timeDeferredTempu m   � ��C�C s v�Bv k   � �ww xyx l  � ��Az{�A  z J D If the entered the time as a single number (with or without AM/PM)	   { �|| �   I f   t h e   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   ( w i t h   o r   w i t h o u t   A M / P M ) 	y }�@} Z   � �~��~ =   � ���� o   � ��?�? $0 timedeferredtemp timeDeferredTemp� m   � ��>�>  k   � ��� ��� l  � ��=���=  � E ? If they entered 24 hours exactly (treat as a full extra delay)   � ��� ~   I f   t h e y   e n t e r e d   2 4   h o u r s   e x a c t l y   ( t r e a t   a s   a   f u l l   e x t r a   d e l a y )� ��<� r   � ���� 1   � ��;
�; 
days� o      �:�: 0 timedeferred timeDeferred�<  � ��� F   � ���� l  � ���9�8� =   � ���� o   � ��7�7 $0 timedeferredtemp timeDeferredTemp� m   � ��6�6 �9  �8  � l  � ���5�4� >   � ���� o   � ��3�3 0 inthe inThe� m   � ��� ���  A M�5  �4  � ��� k   � ��� ��� l  � ��2���2  � . ( If they entered "12" (treat it as 12PM)   � ��� P   I f   t h e y   e n t e r e d   " 1 2 "   ( t r e a t   i t   a s   1 2 P M )� ��1� r   � ���� ]   � ���� m   � ��0�0 � 1   � ��/
�/ 
hour� o      �.�. 0 timedeferred timeDeferred�1  � ��� G   � ���� l  � ���-�,� @   � ���� o   � ��+�+ $0 timedeferredtemp timeDeferredTemp� m   � ��*�* �-  �,  � l  � ���)�(� >   � ���� o   � ��'�' 0 inthe inThe� m   � ��� ���  P M�)  �(  � ��&� k   � ��� ��� l  � ��%���%  � G A For implicit and explicit AM entries and for implicit PM entries   � ��� �   F o r   i m p l i c i t   a n d   e x p l i c i t   A M   e n t r i e s   a n d   f o r   i m p l i c i t   P M   e n t r i e s� ��$� r   � ���� ]   � ���� o   � ��#�# $0 timedeferredtemp timeDeferredTemp� 1   � ��"
�" 
hour� o      �!�! 0 timedeferred timeDeferred�$  �&  � k   � ��� ��� l  � �� ���   �   For explicit PM entries   � ��� 0   F o r   e x p l i c i t   P M   e n t r i e s� ��� r   � ���� ]   � ���� l  � ����� [   � ���� o   � ��� $0 timedeferredtemp timeDeferredTemp� m   � ��� �  �  � 1   � ��
� 
hour� o      �� 0 timedeferred timeDeferred�  �@  �B  ��  � ��� L   � ��� o   � ��� 0 timedeferred timeDeferred�  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i    #��� I      ���� 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o      �� 0 monthdesired monthDesired� ��� o      �� 0 
daydesired 
dayDesired�  �  � k     ;�� ��� r     ��� l    ���
� I    �	��
�	 .misccurdldt    ��� null�  �  �  �
  � o      �� 0 
todaysdate 
todaysDate� ��� r    ��� m    	��  � n      ��� 1   
 �
� 
time� o   	 
�� 0 
todaysdate 
todaysDate� ��� l   ����  � %  Creating an intial date object   � ��� >   C r e a t i n g   a n   i n t i a l   d a t e   o b j e c t� ��� s    ��� o    �� 0 
todaysdate 
todaysDate� o      � �  $0 exactdesireddate exactDesiredDate� ��� r    ��� o    ���� 0 
daydesired 
dayDesired� l     ������ n      ��� 1    ��
�� 
day � o    ���� $0 exactdesireddate exactDesiredDate��  ��  � ��� r    ��� o    ���� 0 monthdesired monthDesired� l     ������ n      ��� m    ��
�� 
mnth� o    ���� $0 exactdesireddate exactDesiredDate��  ��  � ��� Z    6� ����� A    & o     ���� $0 exactdesireddate exactDesiredDate l    %���� I    %������
�� .misccurdldt    ��� null��  ��  ��  ��    r   ) 2 l  ) .���� [   ) . l  ) ,	����	 n   ) ,

 1   * ,��
�� 
year o   ) *���� 0 
todaysdate 
todaysDate��  ��   m   , -���� ��  ��   l     ���� n       1   / 1��
�� 
year o   . /���� $0 exactdesireddate exactDesiredDate��  ��  ��  ��  � �� L   7 ; l  7 :���� \   7 : o   7 8���� $0 exactdesireddate exactDesiredDate o   8 9���� 0 
todaysdate 
todaysDate��  ��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��   �� i   $ ' I      ������ 00 daysfromtodaytoweekday daysFromTodayToWeekday �� o      ����  0 weekdaydesired weekdayDesired��  ��   k     0  r      !  c     	"#" l    $����$ n     %&% m    ��
�� 
wkdy& l    '����' I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  # m    ��
�� 
long! o      ����  0 currentweekday currentWeekday ()( Z    -*+,-* =    ./. o    ����  0 currentweekday currentWeekday/ o    ����  0 weekdaydesired weekdayDesired+ r    010 m    ����  1 o      ���� 0 daysdeferred daysDeferred, 232 A    454 o    ����  0 currentweekday currentWeekday5 o    ����  0 weekdaydesired weekdayDesired3 6��6 r    #787 \    !9:9 o    ����  0 weekdaydesired weekdayDesired: o     ����  0 currentweekday currentWeekday8 o      ���� 0 daysdeferred daysDeferred��  - r   & -;<; \   & +=>= [   & )?@? m   & '���� @ o   ' (����  0 weekdaydesired weekdayDesired> o   ) *����  0 currentweekday currentWeekday< o      ���� 0 daysdeferred daysDeferred) A��A L   . 0BB o   . /���� 0 daysdeferred daysDeferred��  ��       ��C��D����EFGHIJKLM��NOP����������������  C �������������������������������������������������� 00 usesflagsforscheduling usesFlagsForScheduling�� *0 methodforscheduling methodForScheduling�� &0 usegrowlforalerts useGrowlForAlerts�� ,0 promptforuseroptions promptForUserOptions�� 0 englishtime englishTime�� (0 isnumberidentifier isNumberIdentifier�� 0 howmanydays howManyDays�� $0 figureoutthetime figureOutTheTime�� &0 understandthetime understandTheTime�� 40 figuringtimetodesiredday figuringTimeToDesiredDay�� 00 daysfromtodaytoweekday daysFromTodayToWeekday
�� .aevtoappnull  �   � ****�� "0 decisiononflags decisionOnFlags�� .0 usesflagsforsceduling usesFlagsForSceduling�� 0 tasksselected tasksSelected�� 0 timedeferred timeDeferred�� 0 desireddate desiredDate�� "0 secondsdeferred secondsDeferred�� 0 escapetostart escapeToStart�� 0 escapetodue escapeToDue��  ��  ��  ��  
�� boovtrueD �QQ  D u e
�� boovtrue
�� boovfalsE ��X����RS���� 0 englishtime englishTime�� ��T�� T  ���� 0 datedesired dateDesired��  R ��������������������������������~�}�|�{�z�y�x�w�v�u�t�� 0 datedesired dateDesired�� 0 
monthfound 
monthFound�� 0 weekdayfound weekdayFound�� &0 minuteleadingzero minuteLeadingZero�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing��  0 timedelimiters timeDelimiters�� 0 daydelimiters dayDelimiters��  0 weekdelimiters weekDelimiters�� "0 monthdelimiters monthDelimiters�� &0 weekdaydelimiters weekdayDelimiters�� <0 specialrelativedaydelimiters specialRelativeDayDelimiters�� "0 otherdelimiters otherDelimiters�� 0 inthe inThe� 00 howmanynumbersinputted howManyNumbersInputted�~ 0 numlist numList�} 0 i  �| 0 	inputlist 	inputList�{ 0 tempitem tempItem�z 0 tempnum tempNum�y 0 weeksdeferred weeksDeferred�x 0 daysdeferred daysDeferred�w $0 timedeferredtemp timeDeferredTemp�v 0 timedeferred timeDeferred�u &0 totaltimedeferred totalTimeDeferred�t 60 timefromtodayuntildesired timeFromTodayUntilDesiredS G������s�������������������r� �q(,047?�p�o�n�m���l�k�j�i���h���%�g�f�e���d��c�b�a�`�_�^�s �r �q 
�p 
leng
�o 
cobj
�n 
txdl
�m 
citm
�l 
long
�k 
pcls�j  �i  �h (0 isnumberidentifier isNumberIdentifier
�g 
bool
�f 
nmbr
�e 
rvse�d 0 howmanydays howManyDays�c $0 figureoutthetime figureOutTheTime�b &0 understandthetime understandTheTime
�a 
days
�` 
week�_ 00 daysfromtodaytoweekday daysFromTodayToWeekday�^ 40 figuringtimetodesiredday figuringTimeToDesiredDay��jE�OjE�OfE�OfE�OfE�OfE�O������vE�O���mvE�O���mvE�O����a a a a a a a a a vE�Oa a a a a a a a  vE�Oa !a "lvE�Oa #a $a %a &a '�vE�Oa (E�OjE�OjvE^ O Rk�a ),Ekh ��a *] / ] E�OY hO] �a ), ��a *] / 
] E�Y hY h[OY��O��%�%�%�%�%*a +,FO�a ,-E^ Oa -kv*a +,FO hk] a ),Ekh ] a *] /a . ; /] a *] /a /&E^ O] a 0,a /  
�kE�Y hW X 1 2hY hOa 3E^ [OY��O*a 4�l+ 5 
a 6E�Y hO*a 7�l+ 5 
a 8E�Y hO �] a ),Ekih  q] jv 	 ] a *] /a 9a :& )] a *] k/] a *] /%a ;&] 6FOeE�Y )] a *] /a ;&E^ O] j ] ] 6FY hW X 1 2h[OY��O] a <,E^ O�j 	 	�j a :& Р 7)a =*l+ 5E�O)a >*l+ 5E�O��a /&�a /&j  eE�Y hUO� ] a *k/E^ Y jE^ O� *] �l+ ?E^ Y �a @ 
kE^ Y jE^ O*] �����+ AE^ O*] ��m+ BE^ O] j ] ] _ C ] _ D E^ Y 	] E^ OPY ٢j	 	�j a :& e] a ),k eE�Y hO*] �ee��+ AE^ O*] ��m+ BE^ O*�k+ EE^ O] j ] _ C ] E^ Y 	] E^ Y f] a ),l eE�Y hO*] �fe��+ AE^ O*] ��m+ BE^ O*�] a *k/l+ FE^ O] j ] ] E^ Y 	] E^ O] OPF �]��\�[UV�Z�] (0 isnumberidentifier isNumberIdentifier�\ �YW�Y W  �X�W�X (0 possibleidentifier possibleIdentifier�W "0 containerstring containerString�[  U �V�U�T�S�R�Q�P�O�V (0 possibleidentifier possibleIdentifier�U "0 containerstring containerString�T $0 numberidentifier numberIdentifier�S 20 identifierisincontainer identifierIsInContainer�R 40 positionoflastidentifier positionOfLastIdentifier�Q 0 charlist charList�P 0 i  �O "0 characterbefore characterBeforeV 	�N�M�L�K�J�I�H2�G
�N 
cha 
�M 
leng
�L 
cobj
�K 
bool
�J 
long�I  �H  
�G 
pcls�Z �eE�OfE�OjE�O��-E�O %k��,Ekh ��/�  eE�O�E�Y h[OY��O�j 
 �k �& fE�Y 4��k/E�O 
��&E�W X  hO��	 	��,��& fE�Y hO�G �FD�E�DXY�C�F 0 howmanydays howManyDays�E �BZ�B Z  �A�@�A 0 numlist numList�@ 0 weeksmissing weeksMissing�D  X �?�>�=�? 0 numlist numList�> 0 weeksmissing weeksMissing�= 0 daysdeferred daysDeferredY �<
�< 
cobj�C � ��l/E�Y ��k/E�O�H �;c�:�9[\�8�; $0 figureoutthetime figureOutTheTime�: �7]�7 ]  �6�5�4�3�2�6 0 numlist numList�5 0 timemissing timeMissing�4 0 daysmissing daysMissing�3 0 weeksmissing weeksMissing�2 &0 minuteleadingzero minuteLeadingZero�9  [ �1�0�/�.�-�,�1 0 numlist numList�0 0 timemissing timeMissing�/ 0 daysmissing daysMissing�. 0 weeksmissing weeksMissing�- &0 minuteleadingzero minuteLeadingZero�, $0 timedeferredtemp timeDeferredTemp\ �+��*�)�(
�+ 
cobj
�* 
txdl
�) 
long
�( 
ctxt�8 =� 3� ��i/E�Y #�*�,FO�[�\[Zi\Zk��&��&2�&�&E�Y jE�O�I �'��&�%^_�$�' &0 understandthetime understandTheTime�& �#`�# `  �"�!� �" $0 timedeferredtemp timeDeferredTemp�! 0 inthe inThe�  0 timemissing timeMissing�%  ^ ������� $0 timedeferredtemp timeDeferredTemp� 0 inthe inThe� 0 timemissing timeMissing� 0 timedeferred timeDeferred� "0 minutesdeferred minutesDeferred� 0 hoursdeferred hoursDeferred_ ���������� ���=��k���	`
� .sysodisAaleR        TEXT
� 
days� d
� 
ctxt
� 
cha ���
� 
long���� 
� 
hour
� 
min 
� 
bool� �$ �� jE�Y �� �j OiE�OPY ߠ�  
�E�OPY Ѡ� b��&[�\[Z�\Zi2�&�&E�O��&[�\[Zk\Z�2�&�&E�O��  ��� �� E�Y !�� 	 �� �& 
�� E�Y �� �� E�OPY k�a  a j OiE�OPY S�a  J�a   �E�Y 9�� 	 	�a �& 
�� E�Y !��
 	�a �& 
�� E�Y 	��� E�Y hO�J ���
�	ab�� 40 figuringtimetodesiredday figuringTimeToDesiredDay�
 �c� c  ��� 0 monthdesired monthDesired� 0 
daydesired 
dayDesired�	  a ����� 0 monthdesired monthDesired� 0 
daydesired 
dayDesired� 0 
todaysdate 
todaysDate� $0 exactdesireddate exactDesiredDateb � ��������
�  .misccurdldt    ��� null
�� 
time
�� 
day 
�� 
mnth
�� 
year� <*j  E�Oj��,FO�EQ�O���,FO���,FO�*j   ��,k��,FY hO��K ������de���� 00 daysfromtodaytoweekday daysFromTodayToWeekday�� ��f�� f  ����  0 weekdaydesired weekdayDesired��  d ��������  0 weekdaydesired weekdayDesired��  0 currentweekday currentWeekday�� 0 daysdeferred daysDeferrede ��������
�� .misccurdldt    ��� null
�� 
wkdy
�� 
long�� �� 1*j  �,�&E�O��  jE�Y �� 
��E�Y 	��E�O�L ��g����hi��
�� .aevtoappnull  �   � ****g k    �jj  .kk  yll  �mm  �nn  �oo  �pp  �qq  �rr  �ss tt ����  ��  ��  h �������� 0 	errortext 	errorText�� 0 errornumber errorNumber�� 0 i  i 3 9�� @ C������������ R�� \ c f ���������u������������ ��� ��� �������v����������������1��������
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� "0 decisiononflags decisionOnFlags�� .0 usesflagsforsceduling usesFlagsForSceduling
�� 
docu
�� 
FCdw
�� 
FCcn
�� 
OTstu  
�� 
valL
�� 
pcls
�� 
cobj
�� 
FCAr�� 0 tasksselected tasksSelected
�� 
leng
�� .sysodisAaleR        TEXT
�� 
dtxt
�� 
ttxt�� 0 timedeferred timeDeferred�� 0 	errortext 	errorTextv ������
�� 
errn�� 0 errornumber errorNumber��  ����
�� .misccurdldt    ��� null�� 0 desireddate desiredDate
�� 
time�� 0 englishtime englishTime�� "0 secondsdeferred secondsDeferred�� 0 escapetostart escapeToStart�� 0 escapetodue escapeToDue
�� 
bool
�� 
FCDs
�� 
FCDd
�� 
FCfl���b   D����lv�l� O��,E�O��  fE�Y hO����lv�l� O��,Ec  OfEc  Y hO� b*a k/a k/a , O*a -a [[a ,a ,\Za 9\[a ,a ,\Za 9A1a ,E` O_ a ,j  a j OhY hUUO a a a l O�a  ,E` !W X " #�a $  hY hO*j %E` &Oj_ &a ',FO*_ !k+ (E` )O_ )j hY hO_ &_ )E` &O_ !a *E` +O_ !a ,E` -O� n kk_ a ,Ekh _ a �/ Lb  a . 	 
_ -a /&
 	_ +a /& _ &*a 0,FY _ &*a 1,FOb    e*a 2,FY hU[OY��UM �ww  N o ,   D o n ' t   F l a g
�� boovfalsN ��x�� x  yy zz {��|��{  ���
�� 
FCDo
�� 
FCac| �}}  o P D E X G W E g k n
�� kfrmID  O �~~  1 d   1 2 a mP ldt     د����  �@
�� boovfals
�� boovfals��  ��  ��  ��  ascr  ��ޭ