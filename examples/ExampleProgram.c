/*
    Eddie Rangel
    Example Program in C
*/

#include<stdio.h>

int doSomething(int value)
{
    return value + 1;
}

int main(void)
{
    int value = 0;

    printf("Please enter an integer value: ");
    scanf("%d",&value);

    value = doSomething(value);
    printf("Your new value: %d\n",value);

}