#include <stdio.h>
#include "sumInts1.h"

int main(void)
{
    int x, y, z;
    int overflow;

    printf("Enter tow integers: ");
    scanf("%i %i", &x, &y);
    overflow = sumInts(x, y, &z);
    printf("%i + %i = %i\n", x, y, z);
    if(overflow)
        printf("*** Overflow occurred ***\n");
    return 0;
}