#include <stdio.h>

void foo(float a) {
    printf("a: %g and square(a): %g\n", a, a * a);    
}

int main(int argc, char const *argv[])
{
    char x = 'a';
    foo(x);
    return 0;
}
