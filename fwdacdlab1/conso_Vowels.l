%{
#include<stdio.h>
int vowels=0;
int cons=0;
int digit=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;}
[0-9] {digit++;}
%%
int yywrap()
{
return 1;
}
main()
{
printf("Enter the string.. at end press ^d\n");
yylex();
printf("No of vowels=%d\nNo of consonants=%d\n",vowels,cons);
}