next([start,struct1],[]).
next([struct1,struct2],[]).
next([struct2,struct3],[]).
next([struct3,struct4],[]).
next([struct4,end],[[msg,"‚¨”æ‚ê—l‚Å‚µ‚½B"]]).

toc(struct1,[]).
toc(struct2,[]).
toc(struct3,[]).
toc(struct4,[]).

changeLv([up,5] ,[] ):-getCurrentLevel(L),L==1.
changeLv([down,1] ,[] ):-getCurrentLevel(L),L==5.
