#include <stdio.h>

void foo (char str[]) {
    str[3] = 'z';
  printf("5th char in %s is **%c**\n", str, str[3]);
  str[4] = 'c';
  printf("5th char in %s is %c\n", str, str[4]);
} // foo

void main () {
  char name[] = "Ali";
  foo (name);
  printf("5th char in %s is %c\n", name, name[4]);
}
