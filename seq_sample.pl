# 学習シーケンシング　サンプル2
next([start,intro],[[msg,"じゃあ、がんばって勉強しなさいよ。"]]).
next([intro,grammar],[]).
next([grammar,example],[]).
next([example,IFtest],[]).
next([IFtest,end],[[msg,"満点ですね。よくできました。"]]):-testCompare(test_000,Point),80<=Point.
next([IFtest,end],[[msg,"一応合格ですが、もっと上を目指しましょう。"]]):-testCompare(test_000,Point),60<=Point,Point<80.
next([IFtest,intro],[[msg,"あんた、もっとしっかりせられえ。"]]):-testCompare(test_000,Point),Point < 60.

toc(intro,[]).
toc(grammar,[]).
toc(example,[]).
toc(IFtest,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.