next([start,saiki_intro],[[msg,"再帰アルゴリズムについて学習しましょう。"]]).
next([saiki_intro,saiki_zenka],[]).
next([saiki_zenka,saiki_fibo],[[msg,"今度は難しい方にも挑戦してみましょう。"]]):-currentLevel(L),1<=L,L<=3.
next([saiki_zenka,saiki_fibo],[[msg,"難しい方の教材によくぞ挑戦しました。感動した。!!"]]):-currentLevel(L),4<=L,L<=5.
next([saiki_fibo,quick],[[msg,"ここからは応用問題です。自身のある人は挑戦して下さい。"]]).
next([quick,hanoi],[]).
next([hanoi,end],[[msg,"お疲れ様でした!!"]]).

toc(saiki_intro,[]).
toc(saiki_zenka,[]).
toc(saiki_fibo,[]).
toc(quick,[]).
toc(hanoi,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.