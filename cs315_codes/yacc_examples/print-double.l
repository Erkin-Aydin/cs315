/* print-int.l */
%%
[0-9]+     {sscanf(yytext, "%f", &yylval);
            return(INTEGER); }
\n         return(NEWLINE);
.          return(yytext[0]);
%%
int yywrap() { return 1; }
