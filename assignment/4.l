%{
int com=0;
int countid=0;
%}

letter [a-zA-Z]
digitt [0-9]
id {letter}*|({letter}{digitt})+
new \n
%%

"/*"({letter}|{digitt}|{new})*"*/" {
	com++;
fprintf(yyout, " ");}

{id} {fprintf(yyout,yytext); 
countid++;}

%%
int main()
{
yyin=fopen("abc.txt","r");
yyout=fopen("output.txt", "w");
yylex();

printf("Total no. of Comments = %d\n",com);
printf("Total no of identifier = %d\n",countid);
return 0;
}