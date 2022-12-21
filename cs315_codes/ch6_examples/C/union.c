#include <stdio.h>
#include <string.h>
 
union Data {
  int i;
  float f;
  char str[20];
};
 
int main() {

  union Data data;        

  data.i = 12;
  data.f = 123.45;
  strcpy( data.str, "C Programming");
  //  data.i = 70;

  printf( "data.i : %d\n", data.i);
  printf( "data.f : %f\n", data.f);
  printf( "data.str : %s\n", data.str);

  printf( "Memory size of a Data: %lu\n", sizeof(data));

  return 0;
}
