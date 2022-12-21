#include <stdio.h>
main() {
  int count1=5, count2=5;
  (3<5 ? count1 : count2) = 0;
  printf("count1=%d, count2=%d\n", count1, count2);
}
