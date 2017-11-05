%{
	#include<stdio.h>
%}
%%
[a-z] {
	yytext[0]=(yytext[0]+5 -'a')%26 + 'a';
	fprintf(yyout,yytext);
}
[A-Z] {
	yytext[0]=(yytext[0]+5 -'A')%26 + 'A';
	fprintf(yyout,yytext);
}
%%
int main()
{
	yyin=fopen("abc.txt","r");
	yyout=fopen("write2.txt","w");
	yylex();
}