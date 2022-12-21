/ anbn0.y */

%%
start: anbn '\n'  {}
anbn:   A B
    | A anbn B    {}

%%
#include "lex.yy.c"
int main() {
    return yyparse();
}
int yyerror(char* s) {printf("%s", s); }0
