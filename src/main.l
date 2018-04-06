/* Vitor Saldanha da Silveira 158508*/

%{
#include <stdlib.h>
void yyerror(char*);

#include "y.tab.h"

%}

%%

[0-9]+ {
	yylval = atoi(yytext);	
	return NUMERO;
} 

["]*[a-zA-Z]*["]* {			
	return PALAVRA; 
}

[,] {
	return VIRGULA; 
}

[]] {
	return FECHA;
}

[[] {
	return ABRE;
}

\n {
	return EOL;
}
[ \t]+ ;
. 



%%


int yywrap(){
	return 1;
}