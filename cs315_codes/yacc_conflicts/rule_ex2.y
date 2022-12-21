%token A B NL
%%
start: x | y;
x:  {printf("using x");} A A NL ;
y:  {printf("using y");} A B NL ;
