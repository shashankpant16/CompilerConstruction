%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token ID INT FLOAT CHAR ARR COMMA NEWLINE SEMICOLON 

%%
D: T L SEMICOLON NEWLINE {printf("valid expresion \n");
			return 0;}
 ;
 
L: L COMMA ID|ID ARR|ID;

T: INT
   |FLOAT
   |CHAR
   ;
%%

extern FILE *yyin;
int main()
{
	do{
		yyparse();
	}while(!feof(yyin));
	return 1;
}

int yyerror(char *s)
{
	printf("Invalid Expression\n");
	exit(0);
}
