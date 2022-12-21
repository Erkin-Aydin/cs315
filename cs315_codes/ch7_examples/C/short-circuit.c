#include<stdio.h>
main() {
  int a=5, b=3;
  printf("Expression: %d\n", (a > b) || (a++ > 0));
  printf("a=%d\n",a);
  printf("Expression: %d\n", (a++ > 0) || (a > b++) );
  printf("a=%d\n",a);
  printf("b=%d\n",b);
}
