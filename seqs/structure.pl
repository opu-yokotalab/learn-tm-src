next([start,struct1],[]).
next([struct1,struct2],[]).
next([struct2,end],[[msg,"お疲れ様でした。"]]).

toc(struct1,[]).
toc(struct2,[]).
