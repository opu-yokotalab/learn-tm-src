# �w�K�V�[�P���V���O�@�T���v��2
next([start,intro],[[msg,"���Ⴀ�A����΂��ĕ׋����Ȃ�����B"]]).
next([intro,grammar],[]).
next([grammar,example],[]).
next([example,IFtest],[]).
next([IFtest,end],[[msg,"���_�ł��ˁB�悭�ł��܂����B"]]):-testCompare(test_000,Point),80<=Point.
next([IFtest,end],[[msg,"�ꉞ���i�ł����A�����Ə��ڎw���܂��傤�B"]]):-testCompare(test_000,Point),60<=Point,Point<80.
next([IFtest,intro],[[msg,"���񂽁A�����Ƃ������肹��ꂦ�B"]]):-testCompare(test_000,Point),Point < 60.

toc(intro,[]).
toc(grammar,[]).
toc(example,[]).
toc(IFtest,[]).

changeLv([up,5],[]):-currentLevel(L),L==1.
changeLv([down,1],[]):-currentLevel(L),L==5.