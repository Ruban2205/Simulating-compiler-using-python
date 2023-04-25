%{

%}
%%
[aeiouAEIOU][A-Za-z]+              {printf("Word starting with vowel");}
[A-Za-z(^aeiouAEIOU)][A-Za-z]+      {printf("Word not starting with vowel");}
%%
int yywrap(){
return 1;
}
int main()
{
    yylex();
}