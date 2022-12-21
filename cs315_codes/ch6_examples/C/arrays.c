#include <stdio.h>
#include <stdlib.h>
void bar() {
  int sda[10]; // stack-dynamic array
  sda[2] = 22;
  printf("bar, sda[0]=%d sda[1]=%d sda[2]=%d sda[3]=%d\n",
	 sda[0], sda[1], sda[2], sda[3]);
}

void foo () {
  static int sa[10];  // static array
  sa[3] = 33;
  printf("foo, sa[0]=%d sa[1]=%d sa[2]=%d sa[3]=%d\n",
	 sa[0], sa[1], sa[2], sa[3]); 
  int *ehda = malloc(6);  // explicit heap dynamic array
  ehda[4] = 44;
  printf("foo, ehda[0]=%d ehda[4]=%d\n", ehda[0], ehda[4]);
}

void main() {
  static int sa[] = {3, 5, 7, 9}; // static array, initialized
  if (1) foo ();
  bar();
  printf("main, sa[0]=%d sa[1]=%d sa[2]=%d sa[3]=%d\n",
	 sa[0], sa[1], sa[2], sa[3]); 
}
