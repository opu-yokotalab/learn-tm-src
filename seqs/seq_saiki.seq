next([start,saiki_intro],[[msg,"再帰アルゴリズムについて学習しましょう。"]]).
next([saiki_intro,saiki_zenka],[]).
next([saiki_zenka,saiki_fibo],[[msg,"難易度の高い方の教材を選択しています。えらいですね。"]]):-getCurrentLevel(L),4<=L,L<=5.
next([saiki_zenka,saiki_fibo],[[msg,"自信があれば難易度の高い方にも挑戦してみましょう。"]]):-getCurrentLevel(L),1<=L,L<=3.
next([saiki_fibo,quick],[[msg,"ここからは応用問題です。自信のある人は挑戦してみて下さい。"]]).
next([quick,hanoi],[]).
next([hanoi,saiki_test],[]).
next([saiki_test,end],[[msg,"パーフェクトです。大変よく頑張りました。"]]):-getTestPoint(test_saiki,Point),80<=Point.
next([saiki_test,end],[[msg,"合格です。次は満点を目指しましょう。"]]):-getTestPoint(test_saiki,Point),60<=Point,Point<80.
next([saiki_test,saiki_intro],[[changeLv,1],[msg,"理解がいま一つのようです。最初からやり直してください。"]]):-getTestPoint(test_saiki,Point),Point<60.

toc(saiki_intro,[]).
toc(saiki_zenka,[]).
toc(saiki_fibo,[]).
toc(quick,[]).
toc(hanoi,[]).
toc(saiki_test,[]).

changeLv([up,5],[]):-getCurrentLevel(L),L==1.
changeLv([down,1],[]):-getCurrentLevel(L),L==5.
