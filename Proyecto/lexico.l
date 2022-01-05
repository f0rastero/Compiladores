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

"dragon"	                {return INT;}             
"hada"	                {return CHAR;}       
"carameloraro"	        {return INC;}           
"nivel"[+]{2}	            {return SUMA;}   
["nivel"][-]{2}		        {return RESTA;}
["piedraeterna"]		    {return DEC;}
[-][>]	                    {return ASING;}
[>]{2}		                {return MAYORQ;}
[<]{2}		                {return MENORQ;}
["reflejo"]		            {return IGUAL;}  
["psyduck"]			        {return FOR;}
["mewtwo"]			        {return IF;}
["antiparalizador"]			{return ELSE;}
[\n]	                    {return '\n';}
[>][&][<]                   {return AND;}
[>][|][<]		            {return OR;}
[>][!][<]	                {return NOT;}
[|][|][|]	                {return CONCAT;}
[1-9]+	                    {yylval=atoi(yytext); return NUMERO;}
{letras}+	                {return ID;}
{letras}+{digito}*          {return ID;}
[b]{1}                         {return SALIDA;}
%%