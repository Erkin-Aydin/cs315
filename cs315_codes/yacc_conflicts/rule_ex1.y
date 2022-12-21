%token A B NL
%%
start: x | y;
x:  A A NL ;
y:  A B NL ;
