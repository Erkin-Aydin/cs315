#include <stdio.h>
int *ip;

void foo() { 
  int i=3;
  ip = &i;
} /* foo */

void moo() {
  int j=5;
} /* moo */

main() {
  foo();
  /* now ip is a dangling pointer */
  moo();
  printf("*ip is %d\n", *ip);
  /* prints 5 */
}
