%{
#include<stdio.h>
#include<stdlib.h>
#include "sintactico.tab.h"
%}
/*
Analizador Lexico
*/
letras	[a-zA-Z]
digito	[0-9]
espacio [-]


%%

["dragon"]{1}	         {return INT;}             
["hada"]{1}	             {return CHAR;}           
["carameloraro"]{1}	         {return INC;}           
["levelup"]{1}[+]{2}	 {return SUMA;}   
["leveldown"]{1}[-]{2}		    {return RESTA;}
["piedraeterna"]{1}		    {return DEC;}
["de"]{1}	    {return ASING;}

["incienso"]		    {return MAYORQ;}
["repelente"]		    {return MENORQ;}

["reflejo"]		    {return IGUAL;}  



[1-9]+	        {yylval=atoi(yytext); return NUMERO;}


%%