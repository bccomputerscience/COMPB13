/*
    Eddie Rangel
    AddAndSubtract.c
*/

#include<stdio.h>

int main(void)
{
    int w, x, y, z;

    printf("Enter two integers: ");
    scanf("%i %i",&w, &x);

    y = w + x;
    z = w - x;

    printf("sum = %i, difference = %i\n", y, z);

    return 0;
}