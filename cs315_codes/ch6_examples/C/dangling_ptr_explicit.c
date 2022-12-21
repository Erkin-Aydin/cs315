#include <stdio.h>
#include <stdlib.h>
int *p, *q, *r;

main() {
  p = (int *) malloc(1 * sizeof(int));
  *p = 5;  // A value is assigned to variable whose address is in p
  printf("p is %p\n", p);  
  q = p;
  printf("q is %p\n", q); 
  free(q); // Now q is null, p is dangling
  printf("after free(q):\n");
  printf("q is %p\n", q); 
  printf("p is %p\n", p); 
  r = (int *) malloc(1 * sizeof(int));
  *r = 7;  // A value is assigned to variable whose address is in r
  printf(" is %p\n", r); 
  printf("*p is %d\n", *p);  // Value of *p is shown as 7 !!!
}
