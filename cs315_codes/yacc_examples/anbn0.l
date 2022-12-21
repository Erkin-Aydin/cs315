/* anbn0.l */
/* L = { anbn | n > 0 } = {ab, aabb, aaabbb, .. */
%%
a   return A;
b   return(B);
.   return yytext[0];
\n  return '\n';
%%
int yywrap() { return 1; }
