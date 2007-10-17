# 学習シーケンシング　サンプル2
next([start,bubble_intro],[[msg,"バブルソートについて学習しましょう。"]]).
next([bubble_intro,bubble_explain],[]).
next([bubble_explain,bubble_algol],[]).
next([bubble_algol,bubble_exe],[]).
next([bubble_exe,end],[[msg,"今回はテストはありません。お疲れ様でした。"]]).

toc(bubble_intro,[]).
toc(bubble_explain,[]).
toc(bubble_algol,[]).
toc(bubble_exe,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.