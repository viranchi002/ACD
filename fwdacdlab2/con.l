%{#include<stdio.h>
int i;
%}
keyword main|int|scanf|printf|if|else
%%

{keyword} {
for(i=0;i<yyleng;i++)
printf("%c",toupper(yytext[i]));
}
%%

main()
{
//yyin=fopen("num.c","r");
yylex();
}

int yywrap()
{
return 1;
}