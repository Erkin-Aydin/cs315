%token A B C D E
%%
start: A x C D | A y C E ;
x: B ;
y: B ;
