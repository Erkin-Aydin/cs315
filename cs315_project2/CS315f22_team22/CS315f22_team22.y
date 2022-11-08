%{
#include <stdio.h>
extern int yylineno;
%}
%token NUMBER FLOAT_NUM BEGIN_PROGRAM END_PROGRAM
%token SCHEME HOST_NAME URL CON_URL
%token READ_TEMP READ_HUM READ_AIRP READ_AIRQ READ_LIGHT READ_SOUND READ_S7 READ_S8 READ_S9 READ_S10 READ_TIMESTAMP
%token SW1 SW2 SW3 SW4 SW5 SW6 SW7 SW8 SW9 SW10
%token QUOTATION LP RP LBRACE RBRACE LSB RSB 
%token WHILE FOR IF ELSE_IF ELSE RETURN LETTER
%token BOOL INT STRING CHAR FLOAT TRUE FALSE VOID
%token C_IN C_OUT
%token SEMICOLON COMMA AND OR EQUAL GREATER_EQ LESS_EQ GREATER LESS NOT_EQUAL ASSIGN_OP NOT ADD_OP SUBSTRACT_OP
%token ADD_1 SUBSTRACT_1 COMMENT_OP NEWLINE DIV_OP MULT_OP MOD_OP IDENTIFIER 
%%
program: BEGIN_PROGRAM statement_list END_PROGRAM '\n' {return 0;}
       	
statement_list: statement SEMICOLON 
	      		| statement SEMICOLON statement_list

statement: comment
	 	 	| if_else 
		| assignment
		| loop
		| output
		| input
		| init
		| function
		| primitive_function
		| early_return
		| switch

comment: COMMENT_OP word_list

word_list: IDENTIFIER 
	 		| IDENTIFIER word_list

if_else: matched | unmatched

matched: IF LP logic_list RP LBRACE matched RBRACE ELSE LBRACE matched RBRACE
              		| statement_list

unmatched: IF LP logic_list RP LBRACE statement_list RBRACE
	 	 	| IF LP logic_list RP LBRACE matched RBRACE ELSE LBRACE unmatched RBRACE

loop: while_statement 
        		| for_statement

for_statement: FOR LP initialize_list SEMICOLON logic_list SEMICOLON assignment_list RP LBRACE statement_list RBRACE

initialize_list: init | init COMMA initialize_list

init: int_init | char_init | string_init | boolean_init

int_init: INT IDENTIFIER ASSIGN_OP NUMBER

char_init: CHAR IDENTIFIER ASSIGN_OP LETTER
QUOTATION
string_init: STRING IDENTIFIER ASSIGN_OP QUOTATION word_list QUOTATION

boolean_init: BOOL IDENTIFIER ASSIGN_OP bool

assignment_list: assignment | assignment COMMA assignment_list

assignment: IDENTIFIER ASSIGN_OP algebra_list
	  	  	| IDENTIFIER alg_eq algebra_list
		| IDENTIFIER ADD_1
		| IDENTIFIER SUBSTRACT_1

alg_eq: arith_op ASSIGN_OP

arith_op: arith_op_sub1 | arith_op_sub2 | MOD_OP

algebra_list: int
	    	    	| int arith_op_sub1 algebra_list
		| int arith_op_sub2 algebra_list
		| int MOD_OP algebra_list

arith_op_sub1: ADD_OP | SUBSTRACT_OP

arith_op_sub2: MULT_OP | DIV_OP

while_statement: WHILE LP logic_list RP LBRACE statement_list RBRACE

logic_list: logic 
	  	  	| logic and_or logic_list

and_or: AND | OR

logic: NOT logic 
          		| NOT LP logic RP 
		| bool 
		| int logic_op int

bool: TRUE | FALSE

int: NUMBER | IDENTIFIER

logic_op: GREATER 
		| GREATER_EQ 
	| LESS 
	| LESS_EQ 
	| EQUAL 
	| NOT_EQUAL

output: C_IN LP algebra_list RP

input: C_OUT LP algebra_list RP

function: variable_type IDENTIFIER LP param_list RP LBRACE statement_list return_statement RBRACE
			| VOID IDENTIFIER LP param_list RP LBRACE statement_list RBRACE

variable_type: INT | STRING | BOOL | CHAR

param_list: param | param param_list

param: variable_type IDENTIFIER

return_statement: RETURN IDENTIFIER SEMICOLON

early_return: RETURN

primitive_function: READ_TEMP | READ_HUM | READ_AIRQ | READ_AIRP | READ_LIGHT | READ_SOUND | READ_S7 | READ_S8 | READ_S9 | READ_S10 | READ_TIMESTAMP

switch: SW1 | SW2 | SW3 | SW4 | SW5 | SW6 | SW7 | SW8 | SW9 | SW10
%%
#include "lex.yy.c"
void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}

int main(void){
	yyparse();
	if(yynerrs == 0){
		printf("Parsing is successfully finished\n");
	}
 	return 0;
}
