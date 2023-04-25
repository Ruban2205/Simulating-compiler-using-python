%{
int a = 0;
%}

%%
[0-9]*[.][0-9]+ {a++;}
%%

int yywrap(){
return 1;
}

int main(){
yylex();

printf("Total Count of floating point numbers = %d\n ", a);
}