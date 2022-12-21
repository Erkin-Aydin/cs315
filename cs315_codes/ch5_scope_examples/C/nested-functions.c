/*
Nested function is not supported by C 
because we cannot define a function within another function in C. 

Nested functions are supported as an extension in GNU C, 
but are not supported by GNU C++.
*/

#include<stdio.h>
void sub1() {
  int x;
  void sub2() {
    int y;
    void sub3() {
      int z = 3;
      printf("In sub3, x=%d, y=%d, z=%d\n", x, y, z);
    } // sub3
    y = 2;
    sub3();
    printf("In sub2, x=%d, y=%d\n", x, y);
  } // sub2
  x = 1;
  sub2();
  printf("In sub1, x=%d\n", x);
} // sub1

void main() {
  sub1();  
}


