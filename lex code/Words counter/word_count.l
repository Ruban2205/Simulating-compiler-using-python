%{
#include<stdio.h>
int ch=0,wc=0; // GLOBAL VARIABLES
%}
 
%%
[^\t\n ]+ { wc++; ch+=yyleng;} 
%%
 
int yywrap(){ return 1; }
/* After inputting press ctrl+d */
 
// MAIN FUNCTION
int main(){
    printf("Enter the Sentence : ");
    yylex();
    printf("Number of words, charc : %d",wc);
     
    return 0;
}