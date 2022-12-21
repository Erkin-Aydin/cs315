actions: y.tab.c lex.yy.c
	gcc -o actions y.tab.c
y.tab.c: actions.y lex.yy.c
	yacc actions.y
lex.yy.c: actions.l
	lex actions.l
clean:
	rm -f lex.yy.c y.tab.c actions
