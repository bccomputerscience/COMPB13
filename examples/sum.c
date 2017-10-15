/*
    Eddie Rangel
    sum.c
*/

#include<stdio.h>

int main(void)
{
    int value1 = 0;
    int value2 = 0;
    int result = 0;
    
    printf("Please enter an integer value: ");
    scanf("%d",&value1);

    printf("Please enter another integer value: ");
    scanf("%d",&value2);

    result = value1 + value2;
    printf("Your sum of %d and %d is %d\n",value1, value2, result);
}