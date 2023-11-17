/*
   a
*/
#include <stdio.h>
char*s="/*%c   a%c*/%c#include <stdio.h>%cchar*s=%c%s%c;void b(){printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10);}int main(void){%c/*%c    b%c*/%cb();}%c";void b(){printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10);}int main(void){
/*
    b
*/
b();}
