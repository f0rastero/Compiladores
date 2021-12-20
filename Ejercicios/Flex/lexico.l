%{ /* definiciones de lenguaje C */
   /* lenguaje C */
  #include<stdio.h>

 /*
   Ejemplo de flex
*/
%}
letras   [a-z] 
vocales  [ueioa]
digito   [0-9]
espacios [ \n\t]
%%
int                             { printf("<palabra reservada>"); }
char                            { printf("<palabra reservada>"); }
float                        { printf("<palabra reservada>"); }
{letras}({letras}|{digito})*    { printf("<id>"); } 
";"                             { printf("<separador>"); }
[1-9]{digito}*                  { printf("<cte>"); }    
{digito}+"."{digito}+           { printf("<cte flotante>"); }
"+"|"*"|"="                     { printf("<separador>"); }
%% 


