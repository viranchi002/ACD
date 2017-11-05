%{
#include<stdio.h>
int length=0;
int i,j;
char s[100];
%}

alpha [a-zA-Z]
digit [0-9]
space [ \t\n]

%%
({alpha}|{digit})*{space} {
	if(yyleng-1>length)
	{
		length=yyleng-1;
		j=0;
		for(i=yyleng-2;i>=0;i--)
			s[j++]=yytext[i];
		s[j]='\0';
	}
	}
. ;
%%

void main()
{
	yylex();
	printf("%d\n",length);
	puts(s);
}