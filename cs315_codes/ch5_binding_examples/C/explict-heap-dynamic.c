#include<stdio.h>
#include<stdlib.h>  

main() {
  	//allocation
	float *x = (float *)malloc(sizeof(float));
  	*x = 5.7;

	printf("x is %d, *x is %f\n", x, *x);

  	//deallocation
  	free(x);
	printf("x is freed\n");

 	printf("*x is %f\n", *x);
  	printf("x is %d\n", x);
}
