#include "sintactico.tab.h"
int main(void) 
{
	//yylex();
	yyparse();
	return 0;
}
