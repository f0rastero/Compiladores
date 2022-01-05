%{
#include<stdio.h>
#include<stdlib.h>
#include "sintactico.tab.h"
%}
/*
Analizador Léxico
*/
letras	[a-zA-Z]
digito	[0-9]
espacio [-]


%%

"dragon"[<]{2}                {return INT;}             
"hada"	                {return CHAR;}       
"carameloraro"[<]{2}	        {return INC;}           
"nivel"[+]{2}	            {return SUMA;}   
"nivel"[-]{2}		        {return RESTA;}
"piedraeterna"[<]{2}		    {return DEC;}
[-][>]	                    {return ASING;}
[>]{2}		                {return MAYORQ;}
[<]{2}		                {return MENORQ;}
"reflejo"[<]{2}		            {return IGUAL;}  
"psyduck"[<]{2}			        {return FOR;}
"mewtwo"[<]{2}			        {return IF;}
"antiparalizador"[<]{2}			{return ELSE;}
[\n]	                    {return '\n';}
[>][&][<]                   {return AND;}
[>][|][<]		            {return OR;}
[>][!][<]	                {return NOT;}
[|][|][|]	                {return CONCAT;}
[1-9]+	                    {yylval=atoi(yytext); return NUMERO;}
{letras}+	                {return ID;}
{letras}+{digito}*          {return ID;}
[>]"b"[<]                         {return SALIDA;}
%%


