%{
int i;
%}
  
%%
[0-9]+     {i=atoi(yytext);
          if(i%2==0) 
               printf("Even");
          else
               printf("Odd");}
%%
   
int yywrap(){}
   
/* Driver code */
int main()
{
   
    yylex();
    return 0;
}