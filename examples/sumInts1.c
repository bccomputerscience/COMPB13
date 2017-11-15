#include "sumInts1.h"

int sumInts(int a, int b, int *sum)
{
    int overflow = 0;

    *sum = a + b;

    if(((a > 0) && (b > 0) && (*sum < 0)) || 
        ((a < 0) && (b < 0) && (*sum > 0)))
    {
        overflow = 1;   
    }
    return overflow;
}