/* recursive.y */
%token A
%%
s: A               //L ={A, AAA, AAAAA, …}, Not ambiguous !
 | s A A
;
