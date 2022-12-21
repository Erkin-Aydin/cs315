%token A P
%%
s: x | y P;
x: A P;    // shifts on P
y: A;      // reduces on P
