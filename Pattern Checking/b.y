%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *);
%}
%token A B
%%
start: A A A ANB'\n' {printf("valid exp \n");
return 0;}
;
ANB: A ANB
| A B
;
%%
extern FILE *yyin;
int main()
{
	do
	{ 
		yyparse();
	}while(!feof(yyin));
	return 1;
}
int yyerror(char *s)
{
	printf("Invalid String\n");
	exit(0);
}
