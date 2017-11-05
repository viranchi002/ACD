%{
int count = 0,count1=0;
%}

alpha[a-zA-Z]
digit[0-9]
space[ \t\n]
start^a

%%

{start}		{count++;}
{space}[aA]({alpha}{digit})*	{count++;}
.						;

%%

main()
{
//printf("Enter string\n");
yylex();
printf("count= %d\n",count);
}