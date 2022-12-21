/* %option main */
%%

%%
int main() {
   yylex();
   return 0;
}

int yywrap(){
   return 1;   // when done
/* return 0;   // when more processing is done*/
}



