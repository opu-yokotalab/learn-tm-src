# �w�K�V�[�P���V���O�@�T���v��2
next([start,bubble_intro],[[msg,"�o�u���\�[�g�ɂ��Ċw�K���܂��傤�B"]]).
next([bubble_intro,bubble_explain],[]).
next([bubble_explain,bubble_algol],[]).
next([bubble_algol,bubble_exe],[]).
next([bubble_exe,end],[[msg,"����̓e�X�g�͂���܂���B�����l�ł����B"]]).

toc(bubble_intro,[]).
toc(bubble_explain,[]).
toc(bubble_algol,[]).
toc(bubble_exe,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.