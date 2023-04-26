%{
#include<stdio.h>
int op =0;
%}

%%
[+|-|*|/|=] {op++;}
%%

int yywrap(){
return 1;
}

int main(){
printf("Enter the Expression\n");
yylex();
printf("The number of consonants %d \n", op);
}