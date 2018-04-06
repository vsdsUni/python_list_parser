/*Vitor Saldanha da Silveira 158508*/

%{
#include <stdio.h>
#include <stdlib.h> 
void yyerror(char *c);
int yylex(void);

%}

%token PALAVRA ABRE FECHA VIRGULA NUMERO EOL 

%%

EXPRESSAO: 
		  EXPRESSAO LISTA EOL 
		  {
		  printf("OK\n");
		  }
		  | 
		  ;

ELEMENTO:  
		|LISTA  
		|PALAVRA
		|NUMERO
		|ELEMENTO VIRGULA ELEMENTO
		;
LISTA:
	    |ABRE ELEMENTO FECHA
	    |LISTA ABRE ELEMENTO FECHA
 	    ;

%%

void yyerror(char *c){

	printf("ERRO\n");

}

int main() {
	yyparse();
	return 0;
}