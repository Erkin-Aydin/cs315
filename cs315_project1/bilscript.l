/* Bilscript Language */
%option main
digit [0-9]
alphabetic [A-Za-z_$]
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
[+-]?{digit}+					printf(" NUMBER ");
[+-]?{digit}*(\.)?{digit}+ 			printf(" FLOAT_NUM ");
{BP}						printf(" BEGIN_PROGRAM ");
{EP}						printf(" END_PROGRAM ");
{SCHEME}					printf(" SCHEME ");
{HOST_NAME}					printf(" HOST_NAME ");
{URL}						printf(" URL ");
{READ_TEMP}					printf(" READ_TEMP ");
{READ_HUM}					printf(" READ_HUM ");
{READ_AIRP}					printf(" READ_AIRP ");
{READ_AIRQ}					printf(" READ_AIRQ ");
{READ_LIGHT}					printf(" READ_LIGHT ");
{READ_SOUND}					printf(" READ_SOUND ");
{READ_S7}					printf(" READ_S7 ");
{READ_S8}					printf(" READ_S8 ");
{READ_S9}					printf(" READ_S9 ");
{READ_S10}					printf(" READ_S10 ");
{READ_TIMESTAMP}				printf(" READ_TIMESTAMP ");
{CON_URL}					printf(" CON_URL ");
{SWITCH_1}                                      printf(" SW1 ");
{SWITCH_2}                                      printf(" SW2 ");
{SWITCH_3}                                      printf(" SW3 ");
{SWITCH_4}                                      printf(" SW4 ");
{SWITCH_5}                                      printf(" SW5 ");
{SWITCH_6}                                      printf(" SW6 ");
{SWITCH_7}                                      printf(" SW7 ");
{SWITCH_8}                                      printf(" SW8 ");
{SWITCH_9}					printf(" SW9 ");
{SWITCH_10}					printf(" SW10 ");
{Q_MARK}					printf(" QUOTATION ");
{LP}						printf(" LP ");
{RP}						printf(" RP ");
{LB}						printf(" LBRACE ");
{RB}						printf(" RBRACE ");
{LSB}						printf(" LSB ");
{RSB}						printf(" RSB ");
{WHILE}						printf(" WHILE ");
{FOR}						printf(" FOR ");
{IF}						printf(" IF ");
{ELSE_IF}					printf(" ELSE_IF ");
{ELSE}						printf(" ELSE ");	
{RETURN}					printf(" RETURN ");
{BOOL}						printf(" BOOL ");
{INT}						printf(" INT ");
{STRING}					printf(" STRING ");
{CHAR}						printf(" CHAR ");
{FLOAT}						printf(" FLOAT ");
{TRUE}						printf(" TRUE ");
{FALSE}						printf(" FALSE ");
{C_IN}						printf(" C_IN ");
{C_OUT}						printf(" C_OUT ");
{SEMICOLON}					printf(" SEMICOLON ");
{COMMA}						printf(" COMMA ");
{AND}						printf(" AND ");
{OR}						printf(" OR ");
{EQUAL}						printf(" EQUAL ");
{GT_EQ}			 			printf(" GREATER_EQ ");
{LT_EQ}						printf(" LESS_EQ ");
{GT}						printf(" GREATER ");
{LT}						printf(" LESS ");
{NOT_EQUAL}					printf(" NOT_EQUAL ");
{ASSIGN_OP}					printf(" ASSIGN_OP ");
{NOT}						printf(" NOT ");
{ADD}						printf(" ADD_1 ");
{ADD_OP}					printf(" ADD_OP ");
{SUBSTRACT}					printf(" SUBSTRACT_1 ");
{SUBSTRACT_OP}					printf(" SUBSTRACT_OP ");
{COMMENT}					printf(" COMMENT ");
{NEWLINE}					printf("\n");
{DIV_OP}					printf(" DIV_OP ");
{MULT_OP}					printf(" MULT_OP ");
{MOD_OP} 					printf(" MOD_OP ");
{WORD}						printf(" IDENTIFIER ");
%%
