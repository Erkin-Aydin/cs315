%token A B C D
%%
start: x B C | y B D ;
x: A ;
y: A ;
