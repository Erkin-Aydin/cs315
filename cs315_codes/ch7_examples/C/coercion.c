#include <stdio.h>
int twice(int i) {
    return 2 * i;
}

void main() {
    int a = 2.7;
    printf("a=%d\n", a);
    
    float b = twice(a + 3.6);
    printf("b=%g\n", b);
}
