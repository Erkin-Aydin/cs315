/* add.y */
/* L = {INT PLUS INT NL} */
%token INT PLUS NL
%%
add: INT PLUS INT NL { printf("%d\n", $1 + $3);}
%%
#include "lex.yy.c"
int yyerror(char *s) { printf("%s\n", s); }
int main() {
return yyparse();
}
