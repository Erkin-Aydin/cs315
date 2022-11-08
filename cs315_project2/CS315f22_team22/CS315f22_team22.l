/* Bilscript Language */
digit [0-9]
alphabetic [A-Za-z_$]
FLOAT_NUM [+-]?{digit}*(\.)?{digit}+
LETTER (alphabetic)
WORD  	({alphabetic}|{digit})*
BP "begin_program"
EP "end_program"
Q_MARK ["]
LP "("
RP ")"
LB "{"
RB "}"
LSB "["
RSB "\]"
WHILE "while"
FOR "for"
IF  "if"
ELSE "else"
ELSE_IF "else if"
RETURN "return"
NEWLINE (\n)
VOID "void"
BOOL "bool"
INT "int"
STRING "string"
CHAR "char"
FLOAT "float"
TRUE "true"
FALSE "false"
C_IN "cin"
C_OUT "cout"
SEMICOLON ";"
COMMA ","
SPACE " "
SPACE_LIST {SPACE}*
COMMENT ({COMMENT_OP}({SPACE_LIST}|{WORD})*)
AND "&&"
OR "||"
EQUAL "=="
ASSIGN_OP "="
NOT_EQUAL "!="
NOT "!"
ADD "++"
SUBSTRACT "--"
ADD_OP "+"
SUBSTRACT_OP "-"
COMMENT_OP "//"
DIV_OP "/"
MULT_OP "*"
MOD_OP "%"
GT_EQ ">="
LT_EQ "<="
GT ">"
LT "<"
SCHEME 		("https:\/\/"|"http:\/\/"|"ftp:\/\/"|"smtp:\/\/")
HOST_NAME 	("www\."{WORD}("\.com"|"\.org"))
PORT_NUM 	(":"{digit}+)
PATH		("\/"({WORD}{SUBSTRACT_OP}?{ADD_OP}?)*)
QUERY_SEP	"\?"
QUERY_STR	((({WORD}"="){WORD})("&"(({WORD}"="){WORD}))*)
FRAGMENT	("#"{WORD})
URL 		({SCHEME}{HOST_NAME}{PORT_NUM}?{PATH}"/"{QUERY_SEP}?{QUERY_STR}?{FRAGMENT}?)
READ_TEMP 	"readTemperature()"
READ_HUM	"readHumidity()"
READ_AIRP	"readAirPressur()"
READ_AIRQ	"readAirQuality()"
READ_LIGHT	"readLight()"
READ_SOUND	"readSound()"
READ_S7		"readS7()"
READ_S8		"readS8()"
READ_S9		"readS9()"
READ_S10	"readS10()"
READ_TIMESTAMP	"readTimer()"
CON_URL		"connectURL"
SWITCH_1 	"SWITCH_1"
SWITCH_2	"SWITCH_2"
SWITCH_3	"SWITCH_3"
SWITCH_4	"SWITCH_4"
SWITCH_5	"SWITCH_5"
SWITCH_6	"SWITCH_6"
SWITCH_7	"SWITCH_7"
SWITCH_8	"SWITCH_8"
SWITCH_9	"SWITCH_9"
SWITCH_10	"SWITCH_10"

%%
[+-]?{digit}+					{ sscanf (yytext, "%d", &yyval);
							 return (NUMBER); }
{FLOAT_NUM}		 			{ sscanf (yytext, "%d", &yyval); 
							return (FLOAT_NUM); }
{BP}						return (BEGIN_PROGRAM);
{EP}						return (END_PROGRAM);
{SCHEME}					return (SCHEME);
{HOST_NAME}					return (HOST_NAME);
{URL}						return (URL);
{READ_TEMP}					return (READ_TEMP);
{READ_HUM}					return (READ_HUM);
{READ_AIRP}					return (READ_AIRP);
{READ_AIRQ}					return (READ_AIRQ);
{READ_LIGHT}					return (READ_LIGHT);
{READ_SOUND}					return (READ_SOUND);
{READ_S7}					return (READ_S7);
{READ_S8}					return (READ_S8);
{READ_S9}					return (READ_S9);
{READ_S10}					return (READ_S10);
{READ_TIMESTAMP}				return (READ_TIMESTAMP);
{CON_URL}					return (CON_URL);
{SWITCH_1}                                      return (SW1);
{SWITCH_2}                                      return (SW2);
{SWITCH_3}                                      return (SW3);
{SWITCH_4}                                      return (SW4);
{SWITCH_5}                                      return (SW5);
{SWITCH_6}                                      return (SW6);
{SWITCH_7}                                      return (SW7);
{SWITCH_8}                                      return (SW8);
{SWITCH_9}					return (SW9);
{SWITCH_10}					return (SW10);
{Q_MARK}					return (QUOTATION);
{LP}						return (LP);
{RP}						return (RP);
{LB}						return (LBRACE);
{RB}						return (RBRACE);
{LSB}						return (LSB);
{RSB}						return (RSB);
{WHILE}						return (WHILE);
{FOR}						return (FOR);
{IF}						return (IF);
{ELSE_IF}					return (ELSE_IF);
{ELSE}						return (ELSE);	
{RETURN}					return (RETURN);
{BOOL}						return (BOOL);
{INT}						return (INT);
{STRING}					return (STRING);
{CHAR}						return (CHAR);
{VOID}						return (VOID);
{FLOAT}						return (FLOAT);
{TRUE}						return (TRUE);
{FALSE}						return (FALSE);
{C_IN}						return (C_IN);
{C_OUT}						return (C_OUT);
{SEMICOLON}					return (SEMICOLON);
{COMMA}						return (COMMA);
{AND}						return (AND);
{OR}						return (OR);
{EQUAL}						return (EQUAL);
{GT_EQ}			 			return (GREATER_EQ);
{LT_EQ}						return (LESS_EQ);
{GT}						return (GREATER);
{LT}						return (LESS);
{NOT_EQUAL}					return (NOT_EQUAL);
{ASSIGN_OP}					return (ASSIGN_OP);
{NOT}						return (NOT);
{ADD}						return (ADD_1);
{ADD_OP}					return (ADD_OP);
{SUBSTRACT}					return (SUBSTRACT_1);
{SUBSTRACT_OP}					return (SUBSTRACT_OP);
{COMMENT_OP}					return (COMMENT_OP);
{NEWLINE}					return ('\n');
{DIV_OP}					return (DIV_OP);
{MULT_OP}					return (MULT_OP);
{MOD_OP} 					return (MOD_OP);
{LETTER}					return (LETTER);
{WORD}						return (IDENTIFIER);
%%
int yywrap() { return 1; }
