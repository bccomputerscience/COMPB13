/*
    Filename: DemoCodeGDB.c
    Developer: Eddie Rangel
    Description: The program will be used to demonstrate basic functions
    of the gcc and gdb

    Step 1: gcc -g -o DemoCodeGDB DemoCodeGDB.c

    Step 2: gdb ./DemoCodeGDB

    Step 3: Use the br command followed by the line number
    of the printf statement in the main method.

    Step 4: run
    
    Step 5: gdb print iValue

    
*/

#include <stdio.h>

int main(void)
{
    int iValue = 1801191305;
    float fValue = 1801191.305;

    printf("The value of the integer is %i and the float is %f\n",iValue,fValue);

    return 0;
}