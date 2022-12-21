#include<stdio.h>
main() {
  int i=1;
  printf("In main, i=%d\n", i);
  { // block 1
    int j=2;
    printf("In block1, i=%d, j=%d\n", i, j);
  }
  { // block2
    int k=3;
    printf("In block2, i=%d, k=%d\n", i, k);
  }
  printf("In main i=%d\n", i);
}
