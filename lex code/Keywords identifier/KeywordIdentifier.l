%{
#include<stdio.h>
%}
%%
const |
final |
break |
else  |
while |
for   |
if    |
do    |
switch               {     printf(" %s is a keyword\n",yytext);
              return(0); }
[a-zA-Z]+[a-zA-Z0-9]* {     printf(" %s is a identifier\n",yytext);
               return(0); }
.*                    {     printf(" %s is not a identifier\n",yytext);
                 return (0);
              }
%%
int yywrap(){
return 1;
}
int main(){
    printf("Enter a cahracter/word. \n");
    yylex();
} 