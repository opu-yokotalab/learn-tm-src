next([start,struct1],[[msg,"�\���̂ƃ|�C���^�ɂ��ĕ��K���܂��傤�B�e�X�g�̍��i���C���͖��_����邱�Ƃł��B<br>�撣���Ă��������ˁB"]]).
next([struct1,struct2],[]).

next([struct2,struct3],[[msg,"���K���ł��B�撣���Ď������܂��傤�B"]]):-getCurrentLevel(L),L==1.
next([struct2,struct3],[[msg,"���̃y�[�W�͢�ȒP�ȓ��e����p�ӂ���Ă��܂��B�q���g���~�����Ƃ��͗��p���Ă��������B"]]):-getCurrentLevel(L),L==5.

next([struct3,struct_exam1],[[msg,"��1�̃e�X�g�ł��B���_����悤�Ɋ撣��܂��傤�B"]]).
next([struct_exam1,struct3],[[msg,"���_�����܂Œ��킵�Ă��������B"]]):-getTestPoint(my_string_exam,Point),100 != Point.
next([struct_exam1,end],[[msg,"�����l�ł����B"]]):-getTestPoint(my_string_exam,Point),100 == Point.

toc(struct1,[]).
toc(struct2,[]).
toc(struct3,[]).

changeLv([up,5] ,[] ):-getCurrentLevel(L),L==1.
changeLv([down,1] ,[] ):-getCurrentLevel(L),L==5.
