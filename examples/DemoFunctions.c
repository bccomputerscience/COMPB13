/*
    Filename: DemoFunctions.c
    Developer: Eddie Rangel
    Description: The program will be used to demonstrate basic functions
    of the gcc and gdb
*/

/* include */
#include<stdio.h>


/* Function Prototypes */

void doesnothing();
int returnIntValueDoubled(int);


int main()
{
    printf("DemoFunctions.c\n");
    printf("---------------\n");
    doesnothing();
    printf("Value Doubled: %d\n", returnIntValueDoubled(5));
    
}

void doesnothing()
{
    return;
}

int returnIntValueDoubled(int value)
{
    return value * value;
}