/* enum type in C */
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    enum day { mo, tu, we, th, fr, sa, su };
    enum day2 { mo, tu, we, th, fr, sa, su };
    enum day today;
    today = sa;
    if (today == sa || today == su)
        printf("weekend\n");
    else
        printf("weekday\n");
    return 0;
}
