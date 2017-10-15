/*
    Eddie Rangel
    Prompt.c
*/

#include<stdio.h>

int main(void)
{

    int value1;
    int value2;

    printf("Enter first integer: ");
    scanf("%d", &value1);


    printf("Enter second integer: ");
    scanf("%d", &value2);

    int sum;
    sum = value1 + value2;

    printf("The sum of %d and %d is %d\n", value1, value2, sum);

}