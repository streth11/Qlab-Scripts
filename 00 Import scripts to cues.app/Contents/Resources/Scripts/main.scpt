FasdUAS 1.101.10   ��   ��    k             l     ��  ��    * $ @description Import scripts to cues     � 	 	 H   @ d e s c r i p t i o n   I m p o r t   s c r i p t s   t o   c u e s   
  
 l     ��  ��      @author Ben Smith     �   $   @ a u t h o r   B e n   S m i t h      l     ��  ��      @link bensmithsound.uk     �   .   @ l i n k   b e n s m i t h s o u n d . u k      l     ��  ��      @version 1.1     �      @ v e r s i o n   1 . 1      l     ��  ��      @testedmacos 10.13.6     �   *   @ t e s t e d m a c o s   1 0 . 1 3 . 6      l     ��   !��       @testedqlab 4.6.9    ! � " " $   @ t e s t e d q l a b   4 . 6 . 9   # $ # l     �� % &��   % @about Run this script in MacOS's "Script Editor" to quickly create script cues using the scripts in this repository. As of Qlab 4.6.9 you cannot set "run in separate process" through applescript. Input your default, and the script will alert you if you need to change it.    & � ' '"   @ a b o u t   R u n   t h i s   s c r i p t   i n   M a c O S ' s   " S c r i p t   E d i t o r "   t o   q u i c k l y   c r e a t e   s c r i p t   c u e s   u s i n g   t h e   s c r i p t s   i n   t h i s   r e p o s i t o r y .   A s   o f   Q l a b   4 . 6 . 9   y o u   c a n n o t   s e t   " r u n   i n   s e p a r a t e   p r o c e s s "   t h r o u g h   a p p l e s c r i p t .   I n p u t   y o u r   d e f a u l t ,   a n d   t h e   s c r i p t   w i l l   a l e r t   y o u   i f   y o u   n e e d   t o   c h a n g e   i t . $  ( ) ( l     �� * +��   *   @separateprocess TRUE    + � , , ,   @ s e p a r a t e p r o c e s s   T R U E )  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1   @changelog    2 � 3 3    @ c h a n g e l o g 0  4 5 4 l     �� 6 7��   6 S M   v1.1  + added error catching for differently formatted *.applescript files    7 � 8 8 �       v 1 . 1     +   a d d e d   e r r o r   c a t c h i n g   f o r   d i f f e r e n t l y   f o r m a t t e d   * . a p p l e s c r i p t   f i l e s 5  9 : 9 l     �� ; <��   ;     v1.0  + init    < � = =        v 1 . 0     +   i n i t :  > ? > l     ��������  ��  ��   ?  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D / ) USER DEFINED VARIABLES -----------------    E � F F R   U S E R   D E F I N E D   V A R I A B L E S   - - - - - - - - - - - - - - - - - C  G H G l     ��������  ��  ��   H  I J I l     K L M K r      N O N m      P P � Q Q  T R U E O o      ���� 00 defaultseparateprocess defaultSeparateProcess L N H your Qlab default for script cues as a string, either "TRUE" or "FALSE"    M � R R �   y o u r   Q l a b   d e f a u l t   f o r   s c r i p t   c u e s   a s   a   s t r i n g ,   e i t h e r   " T R U E "   o r   " F A L S E " J  S T S l     ��������  ��  ��   T  U V U l    W X Y W r     Z [ Z m    ��
�� boovtrue [ o      ���� "0 versionwarnings versionWarnings X � � set to false if you do not with to be notified about version differences between your system and the system the scripts have been tested on    Y � \ \   s e t   t o   f a l s e   i f   y o u   d o   n o t   w i t h   t o   b e   n o t i f i e d   a b o u t   v e r s i o n   d i f f e r e n c e s   b e t w e e n   y o u r   s y s t e m   a n d   t h e   s y s t e m   t h e   s c r i p t s   h a v e   b e e n   t e s t e d   o n V  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a / )-------- END OF USER DEFINED VARIABLES --    b � c c R - - - - - - - -   E N D   O F   U S E R   D E F I N E D   V A R I A B L E S   - - `  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j / ) RUN SCRIPT -----------------------------    k � l l R   R U N   S C R I P T   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - i  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q 3 - Get user input: scripts to generate cues for    r � s s Z   G e t   u s e r   i n p u t :   s c r i p t s   t o   g e n e r a t e   c u e s   f o r p  t u t l     ��������  ��  ��   u  v w v l    x���� x r     y z y I   ���� {
�� .sysostdfalis    ��� null��   { �� | }
�� 
prmp | m   
  ~ ~ �   F P l e a s e   s e l e c t   t h e   s c r i p t s   t o   i m p o r t } �� � �
�� 
ftyp � J     � �  ��� � m     � � � � �  p u b l i c . t e x t��   � �� ���
�� 
mlsl � m    ��
�� boovtrue��   z o      ���� 0 scriptfiles scriptFiles��  ��   w  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Repeat with each selected script    � � � � B   R e p e a t   w i t h   e a c h   s e l e c t e d   s c r i p t �  � � � l     ��������  ��  ��   �  � � � l  � ����� � X   � ��� � � k   (� � �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � / ) Create a list of each line of the script    � � � � R   C r e a t e   a   l i s t   o f   e a c h   l i n e   o f   t h e   s c r i p t �  � � � l  ( (��������  ��  ��   �  � � � r   ( 3 � � � n   ( / � � � 2  - /��
�� 
cpar � l  ( - ����� � I  ( -�� ���
�� .rdwrread****        **** � o   ( )���� 0 
eachscript 
eachScript��  ��  ��   � o      ���� (0 eachscriptcontents eachScriptContents �  � � � l  4 4��������  ��  ��   �  � � � r   4 ; � � � m   4 7 � � � � �   � o      ����  0 scriptcontents scriptContents �  � � � l  < <��������  ��  ��   �  � � � X   <W ��� � � k   NR � �  � � � l  N N��������  ��  ��   �  � � � l  N N�� � ���   �  	 Get tags    � � � �    G e t   t a g s �  � � � l  N N��������  ��  ��   �  � � � Z   N � � ��� � E   N S � � � o   N O���� 0 eachline eachLine � m   O R � � � � �  @ d e s c r i p t i o n � r   V d � � � I   V `�� ����� 0 trimline trimLine �  � � � o   W X���� 0 eachline eachLine �  � � � m   X [ � � � � �   - -   @ d e s c r i p t i o n   �  ��� � m   [ \����  ��  ��   � o      ���� .0 eachscriptdescription eachScriptDescription �  � � � E   g l � � � o   g h���� 0 eachline eachLine � m   h k � � � � �  @ a u t h o r �  � � � r   o } � � � I   o y�� ����� 0 trimline trimLine �  � � � o   p q���� 0 eachline eachLine �  � � � m   q t � � � � �  - -   @ a u t h o r   �  ��� � m   t u����  ��  ��   � o      ���� $0 eachscriptauthor eachScriptAuthor �  � � � E   � � � � � o   � ����� 0 eachline eachLine � m   � � � � � � �  @ s o u r c e �  � � � r   � � � � � I   � ��� ����� 0 trimline trimLine �  � � � o   � ����� 0 eachline eachLine �  � � � m   � � � � � � �  - -   @ s o u r c e   �  ��� � m   � �����  ��  ��   � o      ���� $0 eachscriptsource eachScriptSource �  � � � E   � � � � � o   � ����� 0 eachline eachLine � m   � � � � � � �  @ v e r s i o n �  � � � r   � � � � � I   � ��� ���� 0 trimline trimLine   o   � ����� 0 eachline eachLine  m   � � �  - -   @ v e r s i o n   �� m   � �����  ��  ��   � o      ���� &0 eachscriptversion eachScriptVersion � 	 E   � �

 o   � ��� 0 eachline eachLine m   � � �  @ t e s t e d m a c o s	  r   � � I   � ��~�}�~ 0 trimline trimLine  o   � ��|�| 0 eachline eachLine  m   � � �   - -   @ t e s t e d m a c o s   �{ m   � ��z�z  �{  �}   o      �y�y "0 eachscriptmacos eachScriptMacOS  E   � � o   � ��x�x 0 eachline eachLine m   � � �  @ t e s t e d q l a b  !  r   � �"#" I   � ��w$�v�w 0 trimline trimLine$ %&% o   � ��u�u 0 eachline eachLine& '(' m   � �)) �**  - -   @ t e s t e d q l a b  ( +�t+ m   � ��s�s  �t  �v  # o      �r�r  0 eachscriptqlab eachScriptQlab! ,-, E   � �./. o   � ��q�q 0 eachline eachLine/ m   � �00 �11  @ a b o u t- 232 r   � �454 I   � ��p6�o�p 0 trimline trimLine6 787 o   � ��n�n 0 eachline eachLine8 9:9 m   � �;; �<<  - -   @ a b o u t  : =�m= m   � ��l�l  �m  �o  5 o      �k�k "0 eachscriptabout eachScriptAbout3 >?> E   �@A@ o   � ��j�j 0 eachline eachLineA m   �BB �CC   @ s e p a r a t e p r o c e s s? D�iD r  EFE I  �hG�g�h 0 trimline trimLineG HIH o  �f�f 0 eachline eachLineI JKJ m  
LL �MM ( - -   @ s e p a r a t e p r o c e s s  K N�eN m  
�d�d  �e  �g  F o      �c�c 60 eachscriptseparateprocess eachScriptSeparateProcess�i  ��   � OPO l �b�a�`�b  �a  �`  P QRQ l �_ST�_  S   Get script source   T �UU $   G e t   s c r i p t   s o u r c eR VWV l �^�]�\�^  �]  �\  W XYX Z  ?Z[�[�ZZ F  +\]\ H  ^^ E  _`_ o  �Y�Y 0 eachline eachLine` m  aa �bb  - -   @] H  !'cc E  !&ded o  !"�X�X 0 eachline eachLinee m  "%ff �gg 
 - -      [ r  .;hih b  .7jkj b  .5lml o  .1�W�W  0 scriptcontents scriptContentsm m  14nn �oo  
k o  56�V�V 0 eachline eachLinei o      �U�U  0 scriptcontents scriptContents�[  �Z  Y pqp l @@�T�S�R�T  �S  �R  q rsr r  @Ptut n @Lvwv I  AL�Qx�P�Q 0 trimline trimLinex yzy o  AD�O�O  0 scriptcontents scriptContentsz {|{ m  DG}} �~~  
| �N m  GH�M�M  �N  �P  w  f  @Au o      �L�L  0 scriptcontents scriptContentss ��K� l QQ�J�I�H�J  �I  �H  �K  �� 0 eachline eachLine � o   ? B�G�G (0 eachscriptcontents eachScriptContents � ��� l XX�F�E�D�F  �E  �D  � ��� Q  X����C� k  [��� ��� I [b�B��A
�B .ascrcmnt****      � ****� m  [^�� ���  - - - - - - - - - - -�A  � ��� I cn�@��?
�@ .ascrcmnt****      � ****� b  cj��� m  cf�� ���  D e s c r i p t i o n :  � o  fi�>�> .0 eachscriptdescription eachScriptDescription�?  � ��� I oz�=��<
�= .ascrcmnt****      � ****� b  ov��� m  or�� ���  A u t h o r :  � o  ru�;�; $0 eachscriptauthor eachScriptAuthor�<  � ��� Q  {����:� I ~��9��8
�9 .ascrcmnt****      � ****� b  ~���� m  ~��� ���  S o u r c e :  � o  ���7�7 $0 eachscriptsource eachScriptSource�8  � R      �6�5�4
�6 .ascrerr ****      � ****�5  �4  �:  � ��� I ���3��2
�3 .ascrcmnt****      � ****� b  ����� m  ���� ���  V e r s i o n :  � o  ���1�1 &0 eachscriptversion eachScriptVersion�2  � ��� I ���0��/
�0 .ascrcmnt****      � ****� b  ����� m  ���� ���  M a c O S :  � o  ���.�. "0 eachscriptmacos eachScriptMacOS�/  � ��� I ���-��,
�- .ascrcmnt****      � ****� b  ����� m  ���� ���  Q l a b :  � o  ���+�+  0 eachscriptqlab eachScriptQlab�,  � ��� I ���*��)
�* .ascrcmnt****      � ****� b  ����� m  ���� ���  A b o u t :  � o  ���(�( "0 eachscriptabout eachScriptAbout�)  � ��'� I ���&��%
�& .ascrcmnt****      � ****� b  ����� m  ���� ��� $ S e p a r a t e   P r o c e s s :  � o  ���$�$ 60 eachscriptseparateprocess eachScriptSeparateProcess�%  �'  � R      �#�"�!
�# .ascrerr ****      � ****�"  �!  �C  � ��� l ��� ���   �  �  � ��� O ����� O  ����� k  ���� ��� l ������  �  �  � ��� l ������  � &   Get cue to write, or create cue   � ��� @   G e t   c u e   t o   w r i t e ,   o r   c r e a t e   c u e� ��� l ������  �  �  � ��� r  ����� l ������ c  ����� 1  ���
� 
qSEL� m  ���
� 
list�  �  � o      �� 0 selectedcues selectedCues� ��� l ������  �  �  � ��� Z  �[����� F  �)��� F  ���� l ����� = ���� n  ���� 1  ��
� 
leng� o  ���
�
 0 scriptfiles scriptFiles� m  �	�	 �  �  � l ���� = ��� n  ��� 1  
�
� 
leng� o  
�� 0 selectedcues selectedCues� m  �� �  �  � l %���� = %��� n  !��� 1  !�
� 
qTyp� n  ��� 4  � �
�  
cobj� m  ���� � o  ���� 0 selectedcues selectedCues� m  !$�� ���  S c r i p t�  �  � r  ,<��� n  ,8   4 58��
�� 
cobj m  67������ l ,5���� c  ,5 1  ,1��
�� 
qSEL m  14��
�� 
list��  ��  � o      ���� 0 	scriptcue 	scriptCue�  � k  ?[  I ?J����	
�� .QLabmakenull���     qDoc��  	 ��
��
�� 
newT
 m  CF �  S c r i p t��   �� r  K[ n  KW 4 TW��
�� 
cobj m  UV������ l KT���� c  KT 1  KP��
�� 
qSEL m  PS��
�� 
list��  ��   o      ���� 0 	scriptcue 	scriptCue��  �  l \\��������  ��  ��    l \\����     Set cue name    �    S e t   c u e   n a m e  l \\��������  ��  ��     Q  \�!"#! r  _j$%$ o  _b���� .0 eachscriptdescription eachScriptDescription% n      &'& 1  ei��
�� 
qNam' o  be���� 0 	scriptcue 	scriptCue" R      ������
�� .ascrerr ****      � ****��  ��  # k  r�(( )*) O  r�+,+ r  x�-.- n  x}/0/ 1  y}��
�� 
pnam0 o  xy���� 0 
eachscript 
eachScript. o      ���� 0 cuename cueName, m  ru11�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  * 2��2 r  ��343 o  ������ 0 cuename cueName4 n      565 1  ����
�� 
qNam6 o  ������ 0 	scriptcue 	scriptCue��    787 l ����������  ��  ��  8 9:9 l ����;<��  ;   Set cue note   < �==    S e t   c u e   n o t e: >?> l ����������  ��  ��  ? @A@ Q  ��BC��B k  ��DD EFE r  ��GHG o  ������ "0 eachscriptabout eachScriptAboutH o      ���� 0 cuenote cueNoteF IJI Q  ��KL��K k  ��MM NON r  ��PQP b  ��RSR b  ��TUT o  ������ 0 cuenote cueNoteU m  ��VV �WW    (S o  ������ $0 eachscriptauthor eachScriptAuthorQ o      ���� 0 cuenote cueNoteO X��X Q  ��YZ[Y r  ��\]\ b  ��^_^ b  ��`a` b  ��bcb o  ������ 0 cuenote cueNotec m  ��dd �ee    / /  a o  ������ $0 eachscriptsource eachScriptSource_ m  ��ff �gg  )] o      ���� 0 cuenote cueNoteZ R      ������
�� .ascrerr ****      � ****��  ��  [ r  ��hih b  ��jkj o  ������ 0 cuenote cueNotek m  ��ll �mm  )i o      ���� 0 cuenote cueNote��  L R      ������
�� .ascrerr ****      � ****��  ��  ��  J n��n r  ��opo o  ������ 0 cuenote cueNotep n      qrq 1  ����
�� 
qNotr o  ������ 0 	scriptcue 	scriptCue��  C R      ������
�� .ascrerr ****      � ****��  ��  ��  A sts l ����������  ��  ��  t uvu l ����wx��  w   Set script source   x �yy $   S e t   s c r i p t   s o u r c ev z{z l ����������  ��  ��  { |}| Q  �"~�~ r  ���� b  ���� b  ���� b  ����� m  ���� ���  - -   @ v e r s i o n  � o  ������ &0 eachscriptversion eachScriptVersion� m  ��� ���  
         
         	� o  ����  0 scriptcontents scriptContents� n      ��� 1  
��
�� 
qScS� o  
���� 0 	scriptcue 	scriptCue R      ������
�� .ascrerr ****      � ****��  ��  � r  "��� o  ����  0 scriptcontents scriptContents� n      ��� 1  !��
�� 
qScS� o  ���� 0 	scriptcue 	scriptCue} ��� l ##��������  ��  ��  � ��� l ##������  � < 6 Alert user if "run in separate process" should be off   � ��� l   A l e r t   u s e r   i f   " r u n   i n   s e p a r a t e   p r o c e s s "   s h o u l d   b e   o f f� ��� l ##��������  ��  ��  � ��� Q  #J����� Z  &A������� > &+��� o  &)���� 60 eachscriptseparateprocess eachScriptSeparateProcess� o  )*���� 00 defaultseparateprocess defaultSeparateProcess� I .=�����
�� .sysodlogaskr        TEXT� b  .9��� b  .5��� m  .1�� ���  T h e   s c r i p t   "� o  14���� .0 eachscriptdescription eachScriptDescription� m  58�� ��� � "   r e q u i r e s   y o u   t o   c h a n g e   t h e   s t a t e   o f   " R u n   i n   s e p a r a t e   p r o c e s s "   i n   t h e   s c r i p t   t a b   o f   t h e   i n s p e c t o r��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l KK��������  ��  ��  � ��� l KK������  � "  Get current version of Qlab   � ��� 8   G e t   c u r r e n t   v e r s i o n   o f   Q l a b� ��� l KK��������  ��  ��  � ��� r  K^��� n  KZ��� 1  VZ��
�� 
vers� 5  KV�����
�� 
capp� m  OR�� ��� & c o m . f i g u r e 5 3 . Q l a b . 4
�� kfrmID  � o      ���� (0 currentqlabversion currentQlabVersion� ��� I _j�����
�� .ascrcmnt****      � ****� b  _f��� m  _b�� ��� , C u r r e n t   Q l a b   V e r s i o n :  � o  be���� (0 currentqlabversion currentQlabVersion��  � ��� l kk��������  ��  ��  � ��� l kk������  � #  Get current version of MacOS   � ��� :   G e t   c u r r e n t   v e r s i o n   o f   M a c O S� ��� l kk����~��  �  �~  � ��� r  kx��� n  kt��� 1  pt�}
�} 
sisv� l kp��|�{� I kp�z�y�x
�z .sysosigtsirr   ��� null�y  �x  �|  �{  � o      �w�w *0 currentmacosversion currentMacOSVersion� ��� I y��v��u
�v .ascrcmnt****      � ****� b  y���� m  y|�� ��� . C u r r e n t   M a c O S   V e r s i o n :  � o  |�t�t *0 currentmacosversion currentMacOSVersion�u  � ��� l ���s�r�q�s  �r  �q  � ��� l ���p���p  � ' ! Warn user of version differences   � ��� B   W a r n   u s e r   o f   v e r s i o n   d i f f e r e n c e s� ��� l ���o�n�m�o  �n  �m  � ��� Z  �����l�k� = ����� o  ���j�j "0 versionwarnings versionWarnings� m  ���i
�i boovtrue� k  ���� ��� l ���h�g�f�h  �g  �f  � ��� Q  �����e� k  ���� ��� l ���d�c�b�d  �c  �b  � ��� Z  �����a�� > ����� o  ���`�` *0 currentmacosversion currentMacOSVersion� o  ���_�_ "0 eachscriptmacos eachScriptMacOS� r  ����� m  ���^
�^ boovtrue� o      �]�] &0 versionissuemacos versionIssueMacOS�a  � r  ��� � m  ���\
�\ boovfals  o      �[�[ &0 versionissuemacos versionIssueMacOS�  l ���Z�Y�X�Z  �Y  �X    Z  ���W > ��	 o  ���V�V (0 currentqlabversion currentQlabVersion	 o  ���U�U  0 eachscriptqlab eachScriptQlab r  ��

 m  ���T
�T boovtrue o      �S�S $0 versionissueqlab versionIssueQlab�W   r  �� m  ���R
�R boovfals o      �Q�Q $0 versionissueqlab versionIssueQlab  l ���P�O�N�P  �O  �N    l ���M�L�K�M  �L  �K   �J Z  ���I F  �� = �� o  ���H�H &0 versionissuemacos versionIssueMacOS m  ���G
�G boovtrue = �� o  ���F�F $0 versionissueqlab versionIssueQlab m  ���E
�E boovfals k  ��  l ���D �D     Issue with MacOS version     �!! 2   I s s u e   w i t h   M a c O S   v e r s i o n "#" I ���C$%
�C .sysonotfnull��� ��� TEXT$ m  ��&& �'' � B e   a w a r e   t h a t   t h i s   s c r i p t   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   v e r s i o n   o f   M a c O S% �B(�A
�B 
appr( o  ���@�@ .0 eachscriptdescription eachScriptDescription�A  # )�?) I ���>*�=
�> .ascrcmnt****      � ***** b  ��+,+ b  ��-.- b  ��/0/ b  ��121 b  ��343 m  ��55 �66  T h e   s c r i p t   "4 o  ���<�< .0 eachscriptdescription eachScriptDescription2 m  ��77 �88 � "   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   c u r r e n t   v e r s i o n   o f   M a c O S .   T E S T E D :  0 o  ���;�; "0 eachscriptmacos eachScriptMacOS. m  ��99 �::  ,   C U R R E N T :  , o  ���:�: *0 currentmacosversion currentMacOSVersion�=  �?   ;<; F  �=>= = �?@? o  ��9�9 &0 versionissuemacos versionIssueMacOS@ m  �8
�8 boovfals> = ABA o  	�7�7 $0 versionissueqlab versionIssueQlabB m  	
�6
�6 boovtrue< CDC k  ;EE FGF l �5HI�5  H   Issue with Qlab version   I �JJ 0   I s s u e   w i t h   Q l a b   v e r s i o nG KLK I �4MN
�4 .sysonotfnull��� ��� TEXTM m  OO �PP � B e   a w a r e   t h a t   t h i s   s c r i p t   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   v e r s i o n   o f   Q l a bN �3Q�2
�3 
apprQ o  �1�1 .0 eachscriptdescription eachScriptDescription�2  L R�0R I  ;�/S�.
�/ .ascrcmnt****      � ****S b   7TUT b   3VWV b   /XYX b   +Z[Z b   '\]\ m   #^^ �__  T h e   s c r i p t   "] o  #&�-�- .0 eachscriptdescription eachScriptDescription[ m  '*`` �aa � "   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   c u r r e n t   v e r s i o n   o f   Q l a b .   T E S T E D :  Y o  +.�,�,  0 eachscriptqlab eachScriptQlabW m  /2bb �cc  ,   C U R R E N T :  U o  36�+�+ (0 currentqlabversion currentQlabVersion�.  �0  D ded F  >Ofgf = >Chih o  >A�*�* &0 versionissuemacos versionIssueMacOSi m  AB�)
�) boovtrueg = FKjkj o  FI�(�( $0 versionissueqlab versionIssueQlabk m  IJ�'
�' boovtruee l�&l k  R�mm non l RR�%pq�%  p ) # Issue with MacOS and Qlab versions   q �rr F   I s s u e   w i t h   M a c O S   a n d   Q l a b   v e r s i o n so sts I R_�$uv
�$ .sysonotfnull��� ��� TEXTu m  RUww �xx � B e   a w a r e   t h i s   t h i s   s c r i p t   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   v e r s i o n   o f   M a c O S   o r   y o u r   v e r s i o n   o f   Q l a bv �#y�"
�# 
appry o  X[�!�! .0 eachscriptdescription eachScriptDescription�"  t z� z I `��{�
� .ascrcmnt****      � ****{ b  `�|}| b  `�~~ b  `��� b  `{��� b  `w��� b  `s��� b  `o��� b  `k��� b  `g��� m  `c�� ���  T h e   s c r i p t   "� o  cf�� .0 eachscriptdescription eachScriptDescription� m  gj�� ��� � "   h a s   n o t   b e e n   t e s t e d   w i t h   y o u r   c u r r e n t   v e r s i o n   o r   M a c O S   o r   y o u r   c u r r e n t   v e r s i o n   o f   Q l a b .   M A C O S   T E S T E D :  � o  kn�� "0 eachscriptmacos eachScriptMacOS� m  or�� ���  ,   C U R R E N T :  � o  sv�� *0 currentmacosversion currentMacOSVersion� m  wz�� ���  .   Q L A B   T E S T E D :  � o  {~��  0 eachscriptqlab eachScriptQlab m  ��� ���  ,   C U R R E N T :  } o  ���� (0 currentqlabversion currentQlabVersion�  �   �&  �I  �J  � R      ���
� .ascrerr ****      � ****�  �  �e  � ��� l ������  �  �  �  �l  �k  � ��� l ������  �  �  �  � 4 ����
� 
qDoc� m  ���� � 5  �����

� 
capp� m  ���� ��� & c o m . f i g u r e 5 3 . Q l a b . 4
�
 kfrmID  � ��	� l ������  �  �  �	  �� 0 
eachscript 
eachScript � o    �� 0 scriptfiles scriptFiles��  ��   � ��� l     ����  �  �  � ��� l     �� ���  �   ��  � ��� l     ������  � / ) FUNCTIONS ------------------------------   � ��� R   F U N C T I O N S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ���� i     ��� I      ������� 0 trimline trimLine� ��� o      ���� 0 	this_text  � ��� o      ���� 0 
trim_chars  � ���� o      ���� 0 trim_indicator  ��  ��  � k     {�� ��� l     ������  � ' ! 0 = beginning, 1 = end, 2 = both   � ��� B   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h� ��� r     ��� l    ������ n     ��� 1    ��
�� 
leng� l    ������ o     ���� 0 
trim_chars  ��  ��  ��  ��  � o      ���� 0 x  � ��� l   ������  �   TRIM BEGINNING   � ���    T R I M   B E G I N N I N G� ��� Z    >������� E   ��� J    
�� ��� m    ����  � ���� m    ���� ��  � l  
 ������ o   
 ���� 0 trim_indicator  ��  ��  � V    :��� Q    5���� r    +��� c    )��� n    '��� 7   '����
�� 
cha � l   #������ [    #��� o     !���� 0 x  � m   ! "���� ��  ��  � m   $ &������� o    ���� 0 	this_text  � m   ' (��
�� 
TEXT� o      ���� 0 	this_text  � R      ������
�� .ascrerr ****      � ****��  ��  � k   3 5�� ��� l  3 3������  � 8 2 the text contains nothing but the trim characters   � ��� d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s� ���� L   3 5�� m   3 4�� ���  ��  � C   ��� o    ���� 0 	this_text  � l   ������ o    ���� 0 
trim_chars  ��  ��  ��  ��  � ��� l  ? ?������  �   TRIM ENDING   � ���    T R I M   E N D I N G� ��� Z   ? x������� E  ? E��� J   ? C�� ��� m   ? @���� � ���� m   @ A���� ��  � l  C D������ o   C D���� 0 trim_indicator  ��  ��  � V   H t��� Q   P o   r   S e c   S c n   S a 7  T a��	

�� 
cha 	 m   X Z���� 
 d   [ ` l  \ _���� [   \ _ o   \ ]���� 0 x   m   ] ^���� ��  ��   o   S T���� 0 	this_text   m   a b��
�� 
TEXT o      ���� 0 	this_text   R      ������
�� .ascrerr ****      � ****��  ��   k   m o  l  m m����   8 2 the text contains nothing but the trim characters    � d   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s �� L   m o m   m n �  ��  � D   L O o   L M���� 0 	this_text   l  M N���� o   M N���� 0 
trim_chars  ��  ��  ��  ��  � �� L   y { o   y z���� 0 	this_text  ��  ��       "��  P��!"#$%&'()*+,-./����������������������������    ������������������������������������������������������������������ 0 trimline trimLine
�� .aevtoappnull  �   � ****�� 00 defaultseparateprocess defaultSeparateProcess�� "0 versionwarnings versionWarnings�� 0 scriptfiles scriptFiles�� (0 eachscriptcontents eachScriptContents��  0 scriptcontents scriptContents�� .0 eachscriptdescription eachScriptDescription�� $0 eachscriptauthor eachScriptAuthor�� &0 eachscriptversion eachScriptVersion�� "0 eachscriptmacos eachScriptMacOS��  0 eachscriptqlab eachScriptQlab�� "0 eachscriptabout eachScriptAbout�� 60 eachscriptseparateprocess eachScriptSeparateProcess�� 0 selectedcues selectedCues�� 0 	scriptcue 	scriptCue�� 0 cuenote cueNote�� (0 currentqlabversion currentQlabVersion�� *0 currentmacosversion currentMacOSVersion�� &0 versionissuemacos versionIssueMacOS�� $0 versionissueqlab versionIssueQlab��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   �������01���� 0 trimline trimLine�� ��2�� 2  ��~�}� 0 	this_text  �~ 0 
trim_chars  �} 0 trim_indicator  ��  0 �|�{�z�y�| 0 	this_text  �{ 0 
trim_chars  �z 0 trim_indicator  �y 0 x  1 �x�w�v�u�t�
�x 
leng
�w 
cha 
�v 
TEXT�u  �t  �� |��,E�Ojllv� 0 *h�� �[�\[Z�k\Zi2�&E�W 	X  �[OY��Y hOkllv� 1 +h�� �[�\[Zk\Z�k'2�&E�W 	X  �[OY��Y hO�  �s3�r�q45�p
�s .aevtoappnull  �   � ****3 k    �66  I77  U88  v99  ��o�o  �r  �q  4 �n�m�n 0 
eachscript 
eachScript�m 0 eachline eachLine5 u P�l�k�j ~�i ��h�g�f�e�d�c�b�a�`�_ ��^ � ��]�\ � ��[ � ��Z ��Y�X)�W0;�VBL�Uaf�Tn}��S����R�Q������P��O�N�M�L�K�J�I��H�G�F�E1�D�C�BVdfl�A���@���?��>�=��<�;�:��9�8&�7�6579O^`bw������l 00 defaultseparateprocess defaultSeparateProcess�k "0 versionwarnings versionWarnings
�j 
prmp
�i 
ftyp
�h 
mlsl�g 
�f .sysostdfalis    ��� null�e 0 scriptfiles scriptFiles
�d 
kocl
�c 
cobj
�b .corecnte****       ****
�a .rdwrread****        ****
�` 
cpar�_ (0 eachscriptcontents eachScriptContents�^  0 scriptcontents scriptContents�] 0 trimline trimLine�\ .0 eachscriptdescription eachScriptDescription�[ $0 eachscriptauthor eachScriptAuthor�Z $0 eachscriptsource eachScriptSource�Y &0 eachscriptversion eachScriptVersion�X "0 eachscriptmacos eachScriptMacOS�W  0 eachscriptqlab eachScriptQlab�V "0 eachscriptabout eachScriptAbout�U 60 eachscriptseparateprocess eachScriptSeparateProcess
�T 
bool
�S .ascrcmnt****      � ****�R  �Q  
�P 
capp
�O kfrmID  
�N 
qDoc
�M 
qSEL
�L 
list�K 0 selectedcues selectedCues
�J 
leng
�I 
qTyp�H 0 	scriptcue 	scriptCue
�G 
newT
�F .QLabmakenull���     qDoc
�E 
qNam
�D 
pnam�C 0 cuename cueName�B 0 cuenote cueNote
�A 
qNot
�@ 
qScS
�? .sysodlogaskr        TEXT
�> 
vers�= (0 currentqlabversion currentQlabVersion
�< .sysosigtsirr   ��� null
�; 
sisv�: *0 currentmacosversion currentMacOSVersion�9 &0 versionissuemacos versionIssueMacOS�8 $0 versionissueqlab versionIssueQlab
�7 
appr
�6 .sysonotfnull��� ��� TEXT�p��E�OeE�O*����kv�e� 	E�O��[��l kh  �j �-E` Oa E` O_ [��l kh �a  *�a jm+ E` Y ��a  *�a jm+ E` Y ��a  *�a jm+ E` Y ��a  *�a jm+ E` Y g�a   *�a !jm+ E` "Y N�a # *�a $jm+ E` %Y 5�a & *�a 'jm+ E` (Y �a ) *�a *jm+ E` +Y hO�a ,	 �a -a .& _ a /%�%E` Y hO)_ a 0jm+ E` OP[OY��O xa 1j 2Oa 3_ %j 2Oa 4_ %j 2O a 5_ %j 2W X 6 7hOa 8_ %j 2Oa 9_ "%j 2Oa :_ %%j 2Oa ;_ (%j 2Oa <_ +%j 2W X 6 7hO)a =a >a ?0�*a @k/�*a A,a B&E` CO�a D,k 	 _ Ca D,k a .&	 _ C�k/a E,a F a .& *a A,a B&�i/E` GY *a Ha Il JO*a A,a B&�i/E` GO _ _ Ga K,FW #X 6 7a L �a M,E` NUO_ N_ Ga K,FO ^_ (E` OO >_ Oa P%_ %E` OO _ Oa Q%_ %a R%E` OW X 6 7_ Oa S%E` OW X 6 7hO_ O_ Ga T,FW X 6 7hO a U_ %a V%_ %_ Ga W,FW X 6 7_ _ Ga W,FO  _ +� a X_ %a Y%j ZY hW X 6 7hO)a =a [a ?0a \,E` ]Oa ^_ ]%j 2O*j _a `,E` aOa b_ a%j 2O�e _ a_ " 
eE` cY fE` cO_ ]_ % 
eE` dY fE` dO_ ce 	 _ df a .& .a ea f_ l gOa h_ %a i%_ "%a j%_ a%j 2Y �_ cf 	 _ de a .& .a ka f_ l gOa l_ %a m%_ %%a n%_ ]%j 2Y S_ ce 	 _ de a .& >a oa f_ l gOa p_ %a q%_ "%a r%_ a%a s%_ %%a t%_ ]%j 2Y hW X 6 7hOPY hOPUUOP[OY�~
�� boovtrue! �5:�5 :  ;;�alis    �   Macintosh HD                   BD ����Preset To Before Next #FFFFFFFF                                ����            ����  J cu            [/:Users:Ben:Documents:Qlab-Scripts:06 Tech Rehearsals:Preset To Before Next Cue.applescript   L % P r e s e t   T o   B e f o r e   N e x t   C u e . a p p l e s c r i p t    M a c i n t o s h   H D  YUsers/Ben/Documents/Qlab-Scripts/06 Tech Rehearsals/Preset To Before Next Cue.applescript   /    
��  " �4<�4 �< � =>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�����������������������������������������������������������������������������������������������3�2�1�0�/�.�-�,�+�*�)�(�'�&�%= ��� R - -   @ d e s c r i p t i o n   P r e s e t   t o   b e f o r e   n e x t   c u e> ��� ( - -   @ a u t h o r   B e n   S m i t h? ��� 2 - -   @ l i n k   b e n s m i t h s o u n d . u k@ ���  - -   @ v e r s i o n   2 . 1A ��� . - -   @ t e s t e d m a c o s   1 0 . 1 3 . 6B ��� ( - -   @ t e s t e d q l a b   4 . 6 . 9C ��� � - -   @ a b o u t   S t a r t s   a l l   l o o p i n g   a u d i o   t h a t   h a s   n o t   b e e n   s t o p p e d   b e f o r e   t h e   c u r r e n t l y   s e l e c t e d   c u eD ��� 0 - -   @ s e p a r a t e p r o c e s s   T R U EE ���  F ���  - -   @ c h a n g e l o gG ��� P - -       v 2 . 1     +   c u e   l i s t   n a m e   i s   a   v a r i a b l eH ��� R - -                   +   r e m o v e d   u n n e c e s s a r y   f u n c t i o nI ��� � - -       v 2 . 0     +   c h a n g e d   a p p r o a c h   t o   a v o i d   s t a r t i n g   e v e r y   s i n g l e   c u eJ ��� " - -       v 1 . 0     +   i n i tK ���  L ���  M ��� V - -   U S E R   D E F I N E D   V A R I A B L E S   - - - - - - - - - - - - - - - - -N ���  O ��� D s e t   c u e L i s t N a m e   t o   " M a i n   C u e   L i s t "P ���  Q ��� V - - - - - - - - - -   E N D   O F   U S E R   D E F I N E D   V A R I A B L E S   - -R ���  S ���  T ��� V - -   R U N   S C R I P T   - - - - - - - - - - - - - - - - - - - - - - - - - - - - -U ���  V ��� < - -   D e f i n e   l i s t s   t o   a d d   c u e s   t oW ��� � s e t   l o o p C u e s   t o   { }   - -   a d d s   c u e s   t h a t   i n f i n i t e   l o o p ,   a n d   r e m o v e s   t h e m   a s   t h e y   s t o pX ��� � s e t   f a d e C u e s   t o   { }   - -   a d d s   c u e s   t h a t   f a d e   l e v e l s   o f   l o o p C u e s ,   b u t   d o   n o t   s t o p   t h e mY ��� � s e t   g r o u p L o o p s   t o   { }   - -   a d d s   g r o u p   c u e s   t h a t   c o n t a i n   l o o p C u e s   ( u s e d   w i t h i n   h a n d l e r )Z ���  [ ��� � t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e\ ��� � 	 s e t   t h e C u e   t o   p l a y b a c k   p o s i t i o n   o f   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e )] ��� F 	 s e t   t h e C u e I D   t o   u n i q u e I D   o f   t h e C u e^ ��� � 	 s e t   a l l C u e s   t o   e v e r y   c u e   o f   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e )_ �    	` � � 	 - -   G e t   a   l i s t   o f   a l l   i n f i n i t e   l o o p e d   a u d i o   f i l e s   t h a t   h a v e n ' t   s t o p p e d   b y   t h e   c u r r e n t   p o s i t i o na � � 	 s e t   { l o o p C u e s ,   f a d e C u e s }   t o   m y   c h e c k F o r C u e s ( a l l C u e s ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e )b �  	c � \ 	 - -   S t a r t   a l l   i n f i n i t e   l o o p   c u e s   a t   t h e i r   l o o pd � @ 	 r e p e a t   w i t h   e a c h C u e   i n   l o o p C u e se � 
 	 	 t r yf � @ 	 	 	 s e t   e a c h C u e   t o   c u e   i d   e a c h C u eg � P 	 	 	 s e t   c u e P r e W a i t   t o   p r e   w a i t   o f   e a c h C u eh �		 R 	 	 	 s e t   c u e D u r a t i o n   t o   d u r a t i o n   o f   e a c h C u ei �

 T 	 	 	 s e t   c u e P o s t W a i t   t o   p o s t   w a i t   o f   e a c h C u ej � z 	 	 	 l o a d   e a c h C u e   t i m e   ( c u e P r e W a i t   +   c u e D u r a t i o n   +   c u e P o s t W a i t )k �   	 	 	 s t a r t   e a c h C u el �  	 	 e n d   t r ym �  	 e n d   r e p e a tn �  	o � � 	 - -   S t a r t   a l l   f a d e s   o f   o f   i n f i n i t e   l o o p   c u e s   a t   t h e   e n d   o f   t h e i r   d u r a t i o n ,   s e t t i n g   t h e   f i n a l   l e v e l   o f   f a d e   i n s   o r   b u i l d s / d i p sp � @ 	 r e p e a t   w i t h   e a c h C u e   i n   f a d e C u e sq � 
 	 	 t r yr � @ 	 	 	 s e t   e a c h C u e   t o   c u e   i d   e a c h C u es � P 	 	 	 s e t   c u e P r e W a i t   t o   p r e   w a i t   o f   e a c h C u et � R 	 	 	 s e t   c u e D u r a t i o n   t o   d u r a t i o n   o f   e a c h C u eu � T 	 	 	 s e t   c u e P o s t W a i t   t o   p o s t   w a i t   o f   e a c h C u ev � z 	 	 	 l o a d   e a c h C u e   t i m e   ( c u e P r e W a i t   +   c u e D u r a t i o n   +   c u e P o s t W a i t )w �   	 	 	 s t a r t   e a c h C u ex �  	 	 e n d   t r yy �  	 e n d   r e p e a tz �  e n d   t e l l{ �  | �  } � V - -   F U N C T I O N S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -~ �   �   � o n   c h e c k F o r C u e s ( t h e C u e s ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e )� �!! � 	 t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e� �"" @ 	 	 r e p e a t   w i t h   e a c h C u e   i n   t h e C u e s� �## N 	 	 	 s e t   e a c h C u e I D   t o   u n i q u e I D   o f   e a c h C u e� �$$  	 	 	� �%% b 	 	 	 - -   S t o p   t h e   s c r i p t   o n c e   y o u   r e a c h   t h e   p l a y h e a d� �&&  	 	 	� �'' X 	 	 	 i f   e a c h C u e I D   i s   t h e C u e I D   t h e n   e x i t   r e p e a t� �(( N 	 	 	 s e t   e a c h C u e T y p e   t o   q   t y p e   o f   e a c h C u e� �))  	 	 	� �** � 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a n   a u d i o   c u e ,   c h e c k   i t   f o r   i n f i n i t e   l o o p   a n d   a d d   i t   t o   t h e   l i s t� �++  	 	 	� �,, B 	 	 	 i f   e a c h C u e T y p e   i s   " A u d i o "   t h e n� �-- X 	 	 	 	 i f   m y   c h e c k F o r L o o p ( e a c h C u e )   i s   t r u e   t h e n� �.. x 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( u n i q u e I D   o f   e a c h C u e ,   l o o p C u e s ,   1 )� �// b 	 	 	 	 	 s e t   e n d   o f   l o o p C u e s   t o   ( u n i q u e I D   o f   e a c h C u e )� �00 N 	 	 	 	 	 s e t   p a r e n t C u e   t o   p a r e n t   o f   e a c h C u e� �11 � 	 	 	 	 	 r e p e a t   w h i l e   p a r e n t   o f   p a r e n t C u e   i s   n o t   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e )� �22 � 	 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( ( u n i q u e I D   o f   p a r e n t   o f   e a c h C u e ) ,   g r o u p L o o p s ,   1 )� �33 | 	 	 	 	 	 	 s e t   e n d   o f   g r o u p L o o p s   t o   ( u n i q u e I D   o f   p a r e n t   o f   e a c h C u e )� �44 T 	 	 	 	 	 	 s e t   p a r e n t C u e   t o   p a r e n t   o f   p a r e n t C u e� �55  	 	 	 	 	 e n d   r e p e a t� �66  	 	 	 	 e n d   i f� �77  	 	 	 	� �88  	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   s t o p   c u e ,   c h e c k   i f   i t   t a r g e t s   a n y   l o o p i n g   c u e s .   I f   i t   d o e s ,   r e m o v e   t h e   l o o p i n g   c u e   f r o m   t h e   l i s t .� �99  	 	 	 	� �:: J 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " S t o p "   t h e n� �;; x 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e )� �<< : 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   1� �== H 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s� �>> R 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n� �?? b 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " "� �@@  	 	 	 	 	 e n d   i f� �AA P 	 	 	 	 	 r e p e a t   w i t h   e a c h G r o u p   i n   g r o u p L o o p s� �BB X 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   g r o u p L o o p s   t h e n� �CC d 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " "� �DD  	 	 	 	 	 	 e n d   i f� �EE  	 	 	 	 	 e n d   r e p e a t� �FF b 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   e a c h L o o p P o s i t i o n   +   1� �GG  	 	 	 	 e n d   r e p e a t� �HH  	 	 	 	� �II � 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   f a d e   c u e ,   c h e c k   i f   i t   t a r g e t s   a n y   l o o p i n g   c u e s .� �JJ  	 	 	 	� �KK J 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " F a d e "   t h e n� �LL  	 	 	 	� �MM � 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   s t o p s   a   l o o p i n g   c u e ,   r e m o v e   t h a t   l o o p i n g   c u e   f r o m   t h e   l i s t .� �NN  	 	 	 	� �OO h 	 	 	 	 i f   s t o p   t a r g e t   w h e n   d o n e   o f   e a c h C u e   i s   t r u e   t h e n� �PP z 	 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e )� �QQ < 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   1� �RR J 	 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s� �SS T 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n� �TT d 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " "� �UU  	 	 	 	 	 	 e n d   i f� �VV R 	 	 	 	 	 	 r e p e a t   w i t h   e a c h G r o u p   i n   g r o u p L o o p s� �WW Z 	 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   g r o u p L o o p s   t h e n� �XX f 	 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " "� �YY  	 	 	 	 	 	 	 e n d   i f� �ZZ   	 	 	 	 	 	 e n d   r e p e a t� �[[ d 	 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   e a c h L o o p P o s i t i o n   +   1� �\\  	 	 	 	 	 e n d   r e p e a t� �]] 
 	 	 	 	 	� �^^ � 	 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   t a r g e t s   a   l o o p i n g   c u e   b u t   d o e s   n o t   s t o p   i t ,   a d d   i t   t o   t h e   f a d e C u e s   l i s t .� �__ 
 	 	 	 	 	� �`` t 	 	 	 	 e l s e   i f   s t o p   t a r g e t   w h e n   d o n e   o f   e a c h C u e   i s   f a l s e   t h e n� �aa z 	 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e )� �bb J 	 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s� �cc T 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n� �dd | 	 	 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( u n i q u e I D   o f   e a c h C u e ,   f a d e C u e s ,   1 )� �ee f 	 	 	 	 	 	 	 s e t   e n d   o f   f a d e C u e s   t o   ( u n i q u e I D   o f   e a c h C u e )� �ff  	 	 	 	 	 	 e n d   i f� �gg  	 	 	 	 	 e n d   r e p e a t� �hh  	 	 	 	 e n d   i f� �ii  	 	 	 	� �jj � 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   g r o u p   c u e ,   d o   t h i s   h a n d l e r   a g a i n   ( r e c u r s i v e )   t o   l o o k   f o r   l o o p i n g   a u d i o   c u e s .� �kk  	 	 	 	� �ll L 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " G r o u p "   t h e n� �mm � 	 	 	 	 m y   c h e c k F o r C u e s ( ( e v e r y   c u e   o f   e a c h C u e ) ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e )� �nn  	 	 	 e n d   i f� �oo  	 	 e n d   r e p e a t� �pp  	 e n d   t e l l� �qq 8 	 r e t u r n   { l o o p C u e s ,   f a d e C u e s }� �rr   e n d   c h e c k F o r C u e s� �ss  � �tt  � �uu ` o n   c h e c k F o r L o o p ( t h e C u e )   - -   r e t u r n s   t r u e   o r   f a l s e� �vv � 	 t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e� �ww H 	 	 s e t   t h e C u e T y p e   t o   q   t y p e   o f   t h e C u e� �xx > 	 	 i f   t h e C u e T y p e   i s   " A u d i o "   t h e n� �yy \ 	 	 	 s e t   t h e C u e L o o p   t o   ( i n f i n i t e   l o o p   o f   t h e C u e )� �zz \ 	 	 	 l o g   q   n a m e   o f   t h e C u e   &   "     -     "   &   t h e C u e L o o p� �{{ ( 	 	 	 r e t u r n   t h e C u e L o o p� �||  	 	 e n d   i f� �}}  	 e n d   t e l l� �~~   e n d   c h e c k F o r L o o p�3  �2  �1  �0  �/  �.  �-  �,  �+  �*  �)  �(  �'  �&  �%  # �)0 - -   U S E R   D E F I N E D   V A R I A B L E S   - - - - - - - - - - - - - - - - - 
 
 s e t   c u e L i s t N a m e   t o   " M a i n   C u e   L i s t " 
 
 - - - - - - - - - -   E N D   O F   U S E R   D E F I N E D   V A R I A B L E S   - - 
 
 
 - -   R U N   S C R I P T   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 - -   D e f i n e   l i s t s   t o   a d d   c u e s   t o 
 s e t   l o o p C u e s   t o   { }   - -   a d d s   c u e s   t h a t   i n f i n i t e   l o o p ,   a n d   r e m o v e s   t h e m   a s   t h e y   s t o p 
 s e t   f a d e C u e s   t o   { }   - -   a d d s   c u e s   t h a t   f a d e   l e v e l s   o f   l o o p C u e s ,   b u t   d o   n o t   s t o p   t h e m 
 s e t   g r o u p L o o p s   t o   { }   - -   a d d s   g r o u p   c u e s   t h a t   c o n t a i n   l o o p C u e s   ( u s e d   w i t h i n   h a n d l e r ) 
 
 t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e 
 	 s e t   t h e C u e   t o   p l a y b a c k   p o s i t i o n   o f   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e ) 
 	 s e t   t h e C u e I D   t o   u n i q u e I D   o f   t h e C u e 
 	 s e t   a l l C u e s   t o   e v e r y   c u e   o f   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e ) 
 	 
 	 - -   G e t   a   l i s t   o f   a l l   i n f i n i t e   l o o p e d   a u d i o   f i l e s   t h a t   h a v e n ' t   s t o p p e d   b y   t h e   c u r r e n t   p o s i t i o n 
 	 s e t   { l o o p C u e s ,   f a d e C u e s }   t o   m y   c h e c k F o r C u e s ( a l l C u e s ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e ) 
 	 
 	 - -   S t a r t   a l l   i n f i n i t e   l o o p   c u e s   a t   t h e i r   l o o p 
 	 r e p e a t   w i t h   e a c h C u e   i n   l o o p C u e s 
 	 	 t r y 
 	 	 	 s e t   e a c h C u e   t o   c u e   i d   e a c h C u e 
 	 	 	 s e t   c u e P r e W a i t   t o   p r e   w a i t   o f   e a c h C u e 
 	 	 	 s e t   c u e D u r a t i o n   t o   d u r a t i o n   o f   e a c h C u e 
 	 	 	 s e t   c u e P o s t W a i t   t o   p o s t   w a i t   o f   e a c h C u e 
 	 	 	 l o a d   e a c h C u e   t i m e   ( c u e P r e W a i t   +   c u e D u r a t i o n   +   c u e P o s t W a i t ) 
 	 	 	 s t a r t   e a c h C u e 
 	 	 e n d   t r y 
 	 e n d   r e p e a t 
 	 
 	 - -   S t a r t   a l l   f a d e s   o f   o f   i n f i n i t e   l o o p   c u e s   a t   t h e   e n d   o f   t h e i r   d u r a t i o n ,   s e t t i n g   t h e   f i n a l   l e v e l   o f   f a d e   i n s   o r   b u i l d s / d i p s 
 	 r e p e a t   w i t h   e a c h C u e   i n   f a d e C u e s 
 	 	 t r y 
 	 	 	 s e t   e a c h C u e   t o   c u e   i d   e a c h C u e 
 	 	 	 s e t   c u e P r e W a i t   t o   p r e   w a i t   o f   e a c h C u e 
 	 	 	 s e t   c u e D u r a t i o n   t o   d u r a t i o n   o f   e a c h C u e 
 	 	 	 s e t   c u e P o s t W a i t   t o   p o s t   w a i t   o f   e a c h C u e 
 	 	 	 l o a d   e a c h C u e   t i m e   ( c u e P r e W a i t   +   c u e D u r a t i o n   +   c u e P o s t W a i t ) 
 	 	 	 s t a r t   e a c h C u e 
 	 	 e n d   t r y 
 	 e n d   r e p e a t 
 e n d   t e l l 
 
 
 - -   F U N C T I O N S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 o n   c h e c k F o r C u e s ( t h e C u e s ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e ) 
 	 t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e 
 	 	 r e p e a t   w i t h   e a c h C u e   i n   t h e C u e s 
 	 	 	 s e t   e a c h C u e I D   t o   u n i q u e I D   o f   e a c h C u e 
 	 	 	 
 	 	 	 - -   S t o p   t h e   s c r i p t   o n c e   y o u   r e a c h   t h e   p l a y h e a d 
 	 	 	 
 	 	 	 i f   e a c h C u e I D   i s   t h e C u e I D   t h e n   e x i t   r e p e a t 
 	 	 	 s e t   e a c h C u e T y p e   t o   q   t y p e   o f   e a c h C u e 
 	 	 	 
 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a n   a u d i o   c u e ,   c h e c k   i t   f o r   i n f i n i t e   l o o p   a n d   a d d   i t   t o   t h e   l i s t 
 	 	 	 
 	 	 	 i f   e a c h C u e T y p e   i s   " A u d i o "   t h e n 
 	 	 	 	 i f   m y   c h e c k F o r L o o p ( e a c h C u e )   i s   t r u e   t h e n 
 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( u n i q u e I D   o f   e a c h C u e ,   l o o p C u e s ,   1 ) 
 	 	 	 	 	 s e t   e n d   o f   l o o p C u e s   t o   ( u n i q u e I D   o f   e a c h C u e ) 
 	 	 	 	 	 s e t   p a r e n t C u e   t o   p a r e n t   o f   e a c h C u e 
 	 	 	 	 	 r e p e a t   w h i l e   p a r e n t   o f   p a r e n t C u e   i s   n o t   ( f i r s t   c u e   l i s t   w h o s e   q   n a m e   i s   c u e L i s t N a m e ) 
 	 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( ( u n i q u e I D   o f   p a r e n t   o f   e a c h C u e ) ,   g r o u p L o o p s ,   1 ) 
 	 	 	 	 	 	 s e t   e n d   o f   g r o u p L o o p s   t o   ( u n i q u e I D   o f   p a r e n t   o f   e a c h C u e ) 
 	 	 	 	 	 	 s e t   p a r e n t C u e   t o   p a r e n t   o f   p a r e n t C u e 
 	 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 e n d   i f 
 	 	 	 	 
 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   s t o p   c u e ,   c h e c k   i f   i t   t a r g e t s   a n y   l o o p i n g   c u e s .   I f   i t   d o e s ,   r e m o v e   t h e   l o o p i n g   c u e   f r o m   t h e   l i s t . 
 	 	 	 	 
 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " S t o p "   t h e n 
 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e ) 
 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   1 
 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s 
 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n 
 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " " 
 	 	 	 	 	 e n d   i f 
 	 	 	 	 	 r e p e a t   w i t h   e a c h G r o u p   i n   g r o u p L o o p s 
 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   g r o u p L o o p s   t h e n 
 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " " 
 	 	 	 	 	 	 e n d   i f 
 	 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   e a c h L o o p P o s i t i o n   +   1 
 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 
 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   f a d e   c u e ,   c h e c k   i f   i t   t a r g e t s   a n y   l o o p i n g   c u e s . 
 	 	 	 	 
 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " F a d e "   t h e n 
 	 	 	 	 
 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   s t o p s   a   l o o p i n g   c u e ,   r e m o v e   t h a t   l o o p i n g   c u e   f r o m   t h e   l i s t . 
 	 	 	 	 
 	 	 	 	 i f   s t o p   t a r g e t   w h e n   d o n e   o f   e a c h C u e   i s   t r u e   t h e n 
 	 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e ) 
 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   1 
 	 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s 
 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n 
 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " " 
 	 	 	 	 	 	 e n d   i f 
 	 	 	 	 	 	 r e p e a t   w i t h   e a c h G r o u p   i n   g r o u p L o o p s 
 	 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   g r o u p L o o p s   t h e n 
 	 	 	 	 	 	 	 	 s e t   i t e m   e a c h L o o p P o s i t i o n   o f   l o o p C u e s   t o   " " 
 	 	 	 	 	 	 	 e n d   i f 
 	 	 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 	 	 s e t   e a c h L o o p P o s i t i o n   t o   e a c h L o o p P o s i t i o n   +   1 
 	 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 	 
 	 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   t a r g e t s   a   l o o p i n g   c u e   b u t   d o e s   n o t   s t o p   i t ,   a d d   i t   t o   t h e   f a d e C u e s   l i s t . 
 	 	 	 	 	 
 	 	 	 	 e l s e   i f   s t o p   t a r g e t   w h e n   d o n e   o f   e a c h C u e   i s   f a l s e   t h e n 
 	 	 	 	 	 s e t   e a c h C u e T a r g e t   t o   ( u n i q u e I D   o f   c u e   t a r g e t   o f   e a c h C u e ) 
 	 	 	 	 	 r e p e a t   w i t h   e a c h L o o p   i n   l o o p C u e s 
 	 	 	 	 	 	 i f   e a c h C u e T a r g e t   i s   i n   e a c h L o o p   t h e n 
 	 	 	 	 	 	 	 - - m y   i n s e r t I t e m I n L i s t ( u n i q u e I D   o f   e a c h C u e ,   f a d e C u e s ,   1 ) 
 	 	 	 	 	 	 	 s e t   e n d   o f   f a d e C u e s   t o   ( u n i q u e I D   o f   e a c h C u e ) 
 	 	 	 	 	 	 e n d   i f 
 	 	 	 	 	 e n d   r e p e a t 
 	 	 	 	 e n d   i f 
 	 	 	 	 
 	 	 	 	 - -   I f   t h e   c u r r e n t   c u e   i s   a   g r o u p   c u e ,   d o   t h i s   h a n d l e r   a g a i n   ( r e c u r s i v e )   t o   l o o k   f o r   l o o p i n g   a u d i o   c u e s . 
 	 	 	 	 
 	 	 	 e l s e   i f   e a c h C u e T y p e   i s   " G r o u p "   t h e n 
 	 	 	 	 m y   c h e c k F o r C u e s ( ( e v e r y   c u e   o f   e a c h C u e ) ,   l o o p C u e s ,   f a d e C u e s ,   g r o u p L o o p s ,   t h e C u e I D ,   c u e L i s t N a m e ) 
 	 	 	 e n d   i f 
 	 	 e n d   r e p e a t 
 	 e n d   t e l l 
 	 r e t u r n   { l o o p C u e s ,   f a d e C u e s } 
 e n d   c h e c k F o r C u e s 
 
 
 o n   c h e c k F o r L o o p ( t h e C u e )   - -   r e t u r n s   t r u e   o r   f a l s e 
 	 t e l l   a p p l i c a t i o n   i d   " c o m . f i g u r e 5 3 . Q l a b . 4 "   t o   t e l l   f r o n t   w o r k s p a c e 
 	 	 s e t   t h e C u e T y p e   t o   q   t y p e   o f   t h e C u e 
 	 	 i f   t h e C u e T y p e   i s   " A u d i o "   t h e n 
 	 	 	 s e t   t h e C u e L o o p   t o   ( i n f i n i t e   l o o p   o f   t h e C u e ) 
 	 	 	 l o g   q   n a m e   o f   t h e C u e   &   "     -     "   &   t h e C u e L o o p 
 	 	 	 r e t u r n   t h e C u e L o o p 
 	 	 e n d   i f 
 	 e n d   t e l l 
 e n d   c h e c k F o r L o o p$ ��� 2 P r e s e t   t o   b e f o r e   n e x t   c u e% ���  B e n   S m i t h& ���  2 . 1' ���  1 0 . 1 3 . 6( ��� 
 4 . 6 . 9) ��� � S t a r t s   a l l   l o o p i n g   a u d i o   t h a t   h a s   n o t   b e e n   s t o p p e d   b e f o r e   t h e   c u r r e n t l y   s e l e c t e d   c u e* ���  T R U E+ �$��$ �  �� �� ��#��"� ��!���                                                                                      @ alis    "  Macintosh HD                   BD ����
QLab 4.app                                                     ����            ����  
 cu             Applications  /:Applications:QLab 4.app/   
 Q L a b   4 . a p p    M a c i n t o s h   H D  Applications/QLab 4.app   / ��  
�! 
qDoc� ��� D W h o   C a r e s   v 0 1   -   S y s t e m   s e t u p . q l a b 4
�# 
aCue� ��� H 4 7 A 5 C B F 8 - E 9 6 8 - 4 D 9 9 - A 9 B D - C 4 9 B 7 5 1 8 B 0 2 2
�" kfrmID  , �� �� ��� ���
� 
qDoc� ��� D W h o   C a r e s   v 0 1   -   S y s t e m   s e t u p . q l a b 4
�  
aCue� ��� H 5 F A 9 5 6 3 D - 1 B 9 1 - 4 F 2 1 - B B 0 7 - 3 2 8 8 9 A 9 F 3 2 C 7
� kfrmID  - ��� � S t a r t s   a l l   l o o p i n g   a u d i o   t h a t   h a s   n o t   b e e n   s t o p p e d   b e f o r e   t h e   c u r r e n t l y   s e l e c t e d   c u e   ( B e n   S m i t h ). ��� 
 4 . 6 . 9/ ���  1 0 . 1 3 . 6
�� boovfals
�� boovfals��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ