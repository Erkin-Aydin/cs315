/* vla.c: Variable Length Array */
#include<stdio.h>

foo() {
  printf("In foo, Enter number: ");
  int n;
  scanf("%d", &n);
  int array[n];    // array is a variable length array
  array[n-1]=17;
  printf("In foo, %d\n",array[n-1]);
  printf("Size of array is %d\n", sizeof(array) / sizeof(int));
} // foo

main() {
  foo();
}
