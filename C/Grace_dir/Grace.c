/*
   a
*/
#include <stdio.h>
#define A(x) int main(){x};
#define B "/*%c   a%c*/%c#include <stdio.h>%c#define A(x) int main(){x};%c#define B %c%s%c%c#define C 34%cA(fprintf(fopen(%cGrace_kid.c%c,%cw%c),B,10,10,10,10,10,C,B,C,10,10,C,C,C,C,10);)%c"
#define C 34
A(fprintf(fopen("Grace_kid.c","w"),B,10,10,10,10,10,C,B,C,10,10,C,C,C,C,10);)
