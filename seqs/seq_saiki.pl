next([start,saiki_intro],[[msg,"再帰アルゴリズムについて学習しましょう。"]]).
next([saiki_intro,saiki_zenka],[]).
next([saiki_zenka,saiki_fibo],[]).
next([saiki_fibo,quick],[]).
next([quick,hanoi],[]).
next([hanoi,end],[[msg,"お疲れ様!!"]]).

toc(saiki_intro,[]).
toc(saiki_zenka,[]).
toc(saiki_fibo,[]).
toc(quick,[]).
toc(hanoi,[]).