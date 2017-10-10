/*
    Eddie Rangel
    mystack.c
*/

#include<stdio.h>


// Prototypes
void push(int);
void pop(int*);

//Globals
int theStack[100];
int *stackPointer = &theStack[100]; //Points to Top of Stack

int main(void)
{
    int firstValue = 14;
    int secondValue = 29;
    int thirdValue = 43;

    printf("Starting point for stack pointer: %p ", (void *)stackPointer);
    printf(" and first value is %i, second value is %i, and third value is %i\n",
            firstValue, secondValue, thirdValue);

    push(firstValue);
    push(secondValue);
    push(thirdValue);

    firstValue = 100;
    secondValue = 200;
    thirdValue = 300;

    printf("Now stack pointer is pointed at: %p ", (void *)stackPointer);
    printf(" and first value is %i, second value is %i, and third value is %i\n",
            firstValue, secondValue, thirdValue);


    pop(&firstValue);
    pop(&secondValue);
    pop(&thirdValue);

    printf("The stack pointer is ends at: %p ", (void *)stackPointer);
    printf(" and first value is %i, second value is %i, and third value is %i\n",
            firstValue, secondValue, thirdValue);

}   

// Function Defintions
void push(int data)
{
    stackPointer--;
    *stackPointer = data;
}

void pop(int *location)
{
    *location = *stackPointer;
    stackPointer++;
}