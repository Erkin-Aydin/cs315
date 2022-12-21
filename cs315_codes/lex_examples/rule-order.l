/* rule-order.l */
%option main
%%
for printf("FOR");
[a-z]+[ \t \n] printf("IDENTIFIER");
