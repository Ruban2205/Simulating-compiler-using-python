%{
#include<math.h>
#include<stdio.h>
#include<ctype.h>
#define YYSTYPE double
%}
%%
input :
      | input line
      ;
line  : '\n'
      | expr '\n' {printf("Result is %g",$1);}
      ;
expr  :expr '+' term {$$=$1+$3;}              
      | expr '-' term {$$=$1-$3;}
      | term          {$$=$1;}
      ;
term  : term '*' factor {$$=$1*$3;}   
      | term '/' factor {$$=$1/$3;}
      | factor          {$$=$1;}
      ;
factor : NUM {$$=$1;}                       ;
NUM   : digit {$$=$1;}               
      | NUM digit {$$=$1*10+$2;}
      ;
digit : '0' {$$=0;}
      | '1' {$$=1;}
      | '2' {$$=2;}
      | '3' {$$=3;}
      | '4' {$$=4;}
      | '5' {$$=5;}
      | '6' {$$=6;}
      | '7' {$$=7;}
      | '8' {$$=8;}
      | '9' {$$=9;}
      ;
%%
int yylex()
{
return getchar();
}
int main()
{
return yyparse();
}
void yyerror(char *s)
{
printf("%s",s);
}