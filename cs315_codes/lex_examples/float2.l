adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
float0.l: In function ‘yylex’:
float0.l:4:1: warning: implicit declaration of function ‘print’; did you mean ‘printf’? [-Wimplicit-function-declaration]
 [+-]?[0-9]*(\.)?[0-9]+   print("FLOAT");
 ^~~~~
 printf
/tmp/cczg35I8.o: In function `yylex':
lex.yy.c:(.text+0x27f): undefined reference to `print'
collect2: error: ld returned 1 exit status
adayanik@dijkstra:$ command dirs
~/cs315_lectures/2022Fall/lex_examples
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
float0.l: In function ‘yylex’:
float0.l:4:1: warning: implicit declaration of function ‘print’; did you mean ‘printf’? [-Wimplicit-function-declaration]
 [+-]?[0-9]*(\.)?[0-9]+   printf("FLOAT");
 ^~~~~
 printf
/tmp/ccYuDY3t.o: In function `yylex':
lex.yy.c:(.text+0x27f): undefined reference to `print'
collect2: error: ld returned 1 exit status
adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
adayanik@dijkstra:$ ./float0 
asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
FLOATsdfjFLOAT
  C-c C-c
adayanik@dijkstra:$ asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
bash: asd6.78--8.5sa: command not found
adayanik@dijkstra:$ bash: asdFLOAT-FLOATsa: command not found
adayanik@dijkstra:$ bash: 6.7sdfj.2: command not found
adayanik@dijkstra:$ asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2

bash: asd6.78--8.5sa: command not found
adayanik@dijkstra:$ bash: asdFLOAT-FLOATsa: command not found
adayanik@dijkstra:$ bash: 6.7sdfj.2: command not found
adayanik@dijkstra:$ adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat > testf
asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
  C-c C-c
adayanik@dijkstra:$ 
adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat testf
asd6.78--8.5sa .78
6.7sdfj.2
adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat testf | ./float0 
asdFLOAT-FLOATsa FLOAT
FLOATsdfjFLOAT
adayanik@dijkstra:$ !lex
lex float0.l 
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
adayanik@dijkstra:$ !cat
cat testf | ./float0 
FLOATFLOATFLOAT
FLOATFLOAT
adayanik@dijkstra:$ !lex
lex float0.l 
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
adayanik@dijkstra:$ !cat
cat testf | ./float0 


adayanik@dijkstra:$ lex float0.l
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
adayanik@dijkstra:$ cat testf | ./float0
FLOATFLOATFLOAT
FLOATFLOAT
adayanik@dijkstra:$ cat float2.l 

adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
float0.l: In function ‘yylex’:
float0.l:4:1: warning: implicit declaration of function ‘print’; did you mean ‘printf’? [-Wimplicit-function-declaration]
 [+-]?[0-9]*(\.)?[0-9]+   print("FLOAT");
 ^~~~~
 printf
/tmp/cczg35I8.o: In function `yylex':
lex.yy.c:(.text+0x27f): undefined reference to `print'
collect2: error: ld returned 1 exit status
adayanik@dijkstra:$ command dirs
~/cs315_lectures/2022Fall/lex_examples
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
float0.l: In function ‘yylex’:
float0.l:4:1: warning: implicit declaration of function ‘print’; did you mean ‘printf’? [-Wimplicit-function-declaration]
 [+-]?[0-9]*(\.)?[0-9]+   printf("FLOAT");
 ^~~~~
 printf
/tmp/ccYuDY3t.o: In function `yylex':
lex.yy.c:(.text+0x27f): undefined reference to `print'
collect2: error: ld returned 1 exit status
adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ lex float0.l 
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
adayanik@dijkstra:$ ./float0 
asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
FLOATsdfjFLOAT
  C-c C-c
adayanik@dijkstra:$ asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
bash: asd6.78--8.5sa: command not found
adayanik@dijkstra:$ bash: asdFLOAT-FLOATsa: command not found
adayanik@dijkstra:$ bash: 6.7sdfj.2: command not found
adayanik@dijkstra:$ asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2

bash: asd6.78--8.5sa: command not found
adayanik@dijkstra:$ bash: asdFLOAT-FLOATsa: command not found
adayanik@dijkstra:$ bash: 6.7sdfj.2: command not found
adayanik@dijkstra:$ adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat > testf
asd6.78--8.5sa .78
asdFLOAT-FLOATsa FLOAT
6.7sdfj.2
  C-c C-c
adayanik@dijkstra:$ 
adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat testf
asd6.78--8.5sa .78
6.7sdfj.2
adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat testf | ./float0 
asdFLOAT-FLOATsa FLOAT
FLOATsdfjFLOAT
adayanik@dijkstra:$ !lex
lex float0.l 
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
adayanik@dijkstra:$ !cat
cat testf | ./float0 
FLOATFLOATFLOAT
FLOATFLOAT
adayanik@dijkstra:$ !lex
lex float0.l 
adayanik@dijkstra:$ !gc
gcc -o float0 lex.yy.c
adayanik@dijkstra:$ !cat
cat testf | ./float0 


adayanik@dijkstra:$ lex float0.l
adayanik@dijkstra:$ gcc -o float0 lex.yy.c
adayanik@dijkstra:$ cat testf | ./float0
FLOATFLOATFLOAT
FLOATFLOAT
adayanik@dijkstra:$ 
adayanik@dijkstra:$ adayanik@dijkstra:$ 
adayanik@dijkstra:$ 
adayanik@dijkstra:$ cat float2.l
/* float2.l */
%option main
digit   [0-9]
%%
[+-]?{digit}*(\.)?{digit}+ printf("FLOAT");
.    ;
%%
adayanik@dijkstra:$ lex float2.l
adayanik@dijkstra:$ gcc -o float2 lex.yy.c 
adayanik@dijkstra:$ cat test | ./float2
cat: test: No such file or directory
adayanik@dijkstra:$ cat testf | ./float2
>6.78<>-8.5<>.78<
>6.7<>.2<
adayanik@dijkstra:$ lex float2.l
adayanik@dijkstra:$ !gc
gcc -o float2 lex.yy.c 
adayanik@dijkstra:$ cat testf | ./float2
>6.780000<>-8.500000<>0.780000<
>6.700000<>0.200000<
adayanik@dijkstra:$ cat testf | ./float2
>6.780000<>-8.500000<>0.780000<
>6.700000<>0.200000<
adayanik@dijkstra:$ command dirs
~/cs315_lectures/2022Fall/lex_examples
adayanik@dijkstra:$ cat testf | ./float2
>6.780000<>-8.500000<>0.780000<
>6.700000<>0.200000<
adayanik@dijkstra:$ lex float2.l
adayanik@dijkstra:$ !gc
gcc -o float2 lex.yy.c 
adayanik@dijkstra:$ cat testf | ./float2
>6.780000<>-8.500000<>0.780000<
>6.700000<>0.200000<
adayanik@dijkstra:$ pwd
/home/cs/adayanik/cs315_lectures/2022Fall/lex_examples
adayanik@dijkstra:$ 
