/* print-int.y */
%{
    #define YYSTYPE  double
%}
%token INTEGER NEWLINE
%%
lines: /* empty */
| lines value NEWLINE {printf("=%f\n", $2);}
| error NEWLINE {yyerror("! Reenter:"); yyerrok;}
;
value: INTEGER {$$ = $1;}
;
%%
#include "lex.yy.c"
int yyerror(char *s) { printf("%s", s); }
int main() {
return yyparse();
}
