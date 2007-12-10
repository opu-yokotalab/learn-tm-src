next([start,struct1],[[msg,"構造体とポインタについて復習しましょう。二つのテストの合格ラインは満点です。<br>頑張ってくださいね。"]]).
next([struct1,struct2],[]).

next([struct2,struct3],[[msg,"演習問題です。頑張って実装しましょう。"]]):-getCurrentLevel(L),L==1.
next([struct2,struct3],[[msg,"このページは｢簡単な内容｣も用意されています。ヒントが欲しいときは利用してください。"]]):-getCurrentLevel(L),L==5.

next([struct3,struct_exam1],[[msg,"第1のテストです。満点取れるように頑張りましょう。"]]).
next([struct_exam1,struct3],[[msg,"満点を取るまで挑戦してください。"]]):-getTestPoint(my_string_exam,Point),100 != Point.
next([struct_exam1,struct4],[[msg,"第1のテストは合格です。次の演習課題は電話番号簿の実装です。<br>その調子で頑張りましょう。"]]):-getTestPoint(my_string_exam,Point),100 == Point.
next([struct4,struct_exam2],[[msg,"第2のテストです。合格を目指して頑張りましょう。"]]).
next([struct_exam2,struct4],[[msg,"満点を取るまで挑戦してください。自分の作ったプログラムを見直してみましょう。"]]):-getTestPoint(person_list_exam,Point),100 != Point.
next([struct_exam2,end],[[msg,"この単元はこれで終了です。お疲れ様でした。"]]):-getTestPoint(person_list_exam,Point),100 == Point.

toc(struct1,[]).
toc(struct2,[]).
toc(struct3,[]).
toc(struct4,[]).

changeLv([up,5] ,[] ):-getCurrentLevel(L),L==1.
changeLv([down,1] ,[] ):-getCurrentLevel(L),L==5.
