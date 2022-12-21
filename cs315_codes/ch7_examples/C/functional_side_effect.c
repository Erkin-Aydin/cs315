#include<stdio.h>

int foo(int *x) {
  *x = *x * 2;
  return *x;
}

int bar(int *x) {
  *x = *x * 3;
  return *x;
}

int main() {
  int n = 5;
  printf("result is %d\n", foo(&n) + bar(&n));
  n=5;
  printf("result is %d\n", bar(&n) + foo(&n));
}
