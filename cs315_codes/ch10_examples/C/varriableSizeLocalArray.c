#include<stdio.h>
int foo(int n) {
  int a[n];
  a[n-1] = n*10;
  return a[n-1];
}
int main() {
  printf("%d\n", foo(3));
  printf("%d\n", foo(5));
}
