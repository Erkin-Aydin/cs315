/* anbn0.y */

%token A B
%%
start: anbn '\n'  {printf("is in anbn");return 0;}
anbn:  empty
    | A anbn B    {}
empty: ;
%%
#include "lex.yy.c"
int main() {
    return yyparse();
}
int yyerror(char* s) {printf("it is not in anbn%s", s); }
