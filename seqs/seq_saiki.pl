next([start,saiki_intro],[[msg,"再帰アルゴリズムについて学習しましょう。"]]).
next([saiki_intro,saiki_zenka],[]).
next([saiki_zenka,saiki_fibo],[[msg,"難しい方の教材によくぞ挑戦しました。感動した。!!"]]):-currentLevel(L),4<=L,L<=5.
next([saiki_zenka,saiki_fibo],[[msg,"今度は難しい方にも挑戦してみましょう。"]]):-currentLevel(L),1<=L,L<=3.
next([saiki_fibo,quick],[[msg,"ここからは応用問題です。自身のある人は挑戦して下さい。"]]).
next([quick,hanoi],[]).
next([hanoi,saiki_test],[]).
next([saiki_test,saiki_intro],[[msg,"理解がいま一つのようです。最初からやり直してください。"]]):-testCompare(test_saiki,Point),Point<60.
next([saiki_test,end],[[msg,"合格です。次は満点を目指しましょう。"]]):-testCompare(test_saiki,Point),60<=Point,Point<80.
next([saiki_test,end],[[msg,"パーフェクトです。大変よく頑張りました。"]]):-testCompare(test_saiki,Point),80<=Point.

toc(saiki_intro,[]).
toc(saiki_zenka,[]).
toc(saiki_fibo,[]).
toc(quick,[]).
toc(hanoi,[]).
toc(saiki_test,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.