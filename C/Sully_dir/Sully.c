#include <stdio.h>
#include <stdlib.h>
#define B "#include <stdio.h>%c#include <stdlib.h>%c#define B %c%s%c%cint main(){%c  int i = %d;%cif(i==0)return 0;char s[99];snprintf(s,99,%cSully_%%d.c%c,i-1);char t[99];snprintf(t,99,%cclang Sully_%%d.c -o Sully_%%d%c,i-1,i-1);FILE*f=fopen(s,%cw%c);(fprintf(f,B,10,10,34,B,34,10,10,i-1,10,34,34,34,34,34,34,34,34,10));fclose(f);system(t);char r[400];snprintf(r,400,%c./Sully_%%d%c,i-1);system(r);}%c"
int main(){
  int i = 5;
if(i==0)return 0;char s[99];snprintf(s,99,"Sully_%d.c",i-1);char t[99];snprintf(t,99,"clang Sully_%d.c -o Sully_%d",i-1,i-1);FILE*f=fopen(s,"w");(fprintf(f,B,10,10,34,B,34,10,10,i-1,10,34,34,34,34,34,34,34,34,10));fclose(f);system(t);char r[400];snprintf(r,400,"./Sully_%d",i-1);system(r);}
