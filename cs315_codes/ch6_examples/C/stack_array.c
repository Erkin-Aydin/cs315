#include <stdio.h>
void foo(int inc) {
  int arr[3] = {3, 5, 7};
  int i;
  if(inc)
    for(i=0; i<3; i++)
      arr[i]++;

  for(i=0; i<3; i++)
    printf("%d ",arr[i]);
  printf("\n");
}

int main(void){
  foo(0);
  foo(5);
  foo(0);
  return 0;
}
