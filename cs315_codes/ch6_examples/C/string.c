#include <stdio.h>
#include <string.h>
int main() {
  char str[5] = "abc";
  int i;
  for(i=0; i<10; i++)
    printf("%d-",str[i]);
  printf("\n");

  strcpy(str, "abcdef");
  for(i=0; i<10; i++)
    printf("%d-",str[i]);
  printf("\n");
  return 0;
}
