# �w�K�V�[�P���V���O�@�T���v��2
next([start,intro],[[msg,"���Ⴀ�A����΂��ĕ׋����Ȃ�����B"]]).
next([intro,grammar],[]).
next([grammar,example],[]).
next([example,iftest],[]).
next([iftest,end],[[msg,"���_�ł��ˁB�悭�ł��܂����B"]]):-getTestPoint(test_000,Point),80<=Point.
next([iftest,end],[[msg,"�ꉞ���i�ł����A�����Ə��ڎw���܂��傤�B"]]):-getTestPoint(test_000,Point),60<=Point,Point<80.
next([iftest,intro],[[msg,"���񂽁A�����Ƃ������肹��ꂦ�B"]]):-getTestPoint(test_000,Point),Point < 60.

toc(intro,[]).
toc(grammar,[]).
toc(example,[]).
toc(iftest,[]).

changeLv([up,5],[]):-getCurrentLevel(L),L==1.
changeLv([down,1],[]):-getCurrentLevel(L),L==5.
