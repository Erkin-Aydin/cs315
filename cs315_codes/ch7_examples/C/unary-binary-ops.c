// increment.c
#include<stdio.h>
int main() { 
  int b=5;
  b = b+++b++; /* legal */
  printf("%d\n", b);   // 11. Java prints 11 too.
  return 0;
}
