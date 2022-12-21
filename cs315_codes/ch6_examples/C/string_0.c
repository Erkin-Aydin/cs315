#include <stdio.h>
foo (char str[]) {
  printf("5th char in %s is *%c*\n", str, str[4]);
} // foo

main () {
  char name[] = "Ali";
  foo (name); 
}
