%{
#include<stdio.h>
int nc=0;
%}

%%
"/*"[a-zA-Z0-9\n\t ]*"*/"  {nc++;}
"//"[a-zA-Z0-9\t ]*"\n"   {nc++;}
%%

int main(int argc ,char* argv[])
{
    if(argc==2)
    {
        yyin=fopen(argv[1],"r");
    }
    else
    {
        printf("Enter the input\n");
        yyin=stdin;
    }
    yyout=fopen("output.c","w");
    yylex( );
    printf("The number of comment lines=%d\n",nc);
    fclose(yyin);
    fclose(yyout);
}

int yywrap( )
{
    return 1;
}