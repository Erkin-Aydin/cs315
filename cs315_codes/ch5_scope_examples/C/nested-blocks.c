#include<stdio.h>
main() {
  int i=1;
  printf("In main i=%d\n", i);
  { // outer block
    int i=2;
    printf("In outer block i=%d\n", i);
    { // inner block
      int i=3;
      printf("In inner block i=%d\n", i);
    }
    printf("In outer block i=%d\n", i);
  }
  printf("In main i=%d\n", i);
}
