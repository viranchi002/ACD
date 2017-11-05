%{
int flag=0;
%}

%%
(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"") {flag=1;}
%%

int main()
{
yyin=fopen("abc.txt","r");
yylex();
if(flag==1) 
printf("\nCompound sentence\n");
else 
printf("\nSimple sentence\n");
return 0;
}
