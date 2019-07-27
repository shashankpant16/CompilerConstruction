%{
#include"y.tab.h"
%}

%%
int {return INT;}
float {return FLOAT;}
char {return CHAR;}
"," {return COMMA;}
";" {return SEMICOLON;}
\[[0-9]+\] {return ARR;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
"\n" {return NEWLINE;}
%%
int yywrap()
{
return 1;
}
