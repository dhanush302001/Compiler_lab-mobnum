%{
#include<stdio.h>
FILE *fin,*fout;
%}
%%
[1-9][0-9]{9} {fprintf(fout,"Valid Mobile number\n");}
.+ {fprintf(fout,"Invalid Mobile number\n");}
[\n] {printf("\n");}
%%
int yywrap()
{
 return -1;
}
int main()
{
 fin = fopen("in.txt","r");
 fout = fopen("out.txt","w");
 yylex();
 yyin = fin;
 yyout = fout;
 return 0;
}
