# 学習シーケンシング　サンプル2
next([start,intro],[]).
next([intro,grammar],[]).
next([grammar,example],[]).
next([example,IFtest],[]).
next([IFtest,end],[[msg,"Congratulations!"]]):-testCompare(test_000,Point),Point>=60.
next([IFtest,intro],[]):-testCompare(test_000,Point),Point<60.

toc(intro,[]).
toc(grammar,[]).
toc(example,[]).
toc(IFtest,[]).

changeLv([up,5],[]):-currentLevel(L),L=1.
changeLv([down,1],[]):-currentLevel(L),L=5.