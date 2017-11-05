%{
#include<stdio.h>
#include<string.h>
FILE *ff,*fr;
char p[20],q[20],r[20],fname[20];
%}
word [a-zA-Z]+
eol [\n]
%%
{word} {
                if(strcmp(p,yytext)==0)
                        fprintf(yyout,q);
                else
                        fprintf(yyout,yytext);

        }
{eol} {fprintf(yyout,yytext);}
. {fprintf(yyout,yytext);}
%%
int main(int argc,char *argv[])
{
        strcpy(fname,argv[1]);
        strcpy(p,argv[2]);
        strcpy(q,argv[3]);
        yyin=fopen(fname,"r+");
        yyout=fopen("rep.txt","w");   

        yylex();
        return(0);
}