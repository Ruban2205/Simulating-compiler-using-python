%{
#include<stdio.h>
int v_count=0, c_count=0;
%}

%%
[ \t\n] {;}
[aAeEiIoOuU] { v_count++; }
[a-zA-Z] {c_count++;  }
%%
int yywrap(){
    return 1;
   }
int main(){
    printf("Enter a sentence \n");
    yylex();
    printf("The number of vowels =%d \n",v_count);
    printf("The number of consonants=%d \n", c_count);
}