next([start,saiki_intro],[[msg,"�ċA�A���S���Y���ɂ��Ċw�K���܂��傤�B"]]).
next([saiki_intro,saiki_zenka],[]).
next([saiki_zenka,saiki_fibo],[[msg,"���x�͓�����ɂ����킵�Ă݂܂��傤�B"]]):-currentLevel(L),1<=L,L<=3.
next([saiki_zenka,saiki_fibo],[[msg,"������̋��ނɂ悭�����킵�܂����B���������B!!"]]):-currentLevel(L),4<=L,L<=5.
next([saiki_fibo,quick],[[msg,"��������͉��p���ł��B���g�̂���l�͒��킵�ĉ������B"]]).
next([quick,hanoi],[]).
next([hanoi,end],[[msg,"�����l�ł���!!"]]).

toc(saiki_intro,[]).
toc(saiki_zenka,[]).
toc(saiki_fibo,[]).
toc(quick,[]).
toc(hanoi,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.