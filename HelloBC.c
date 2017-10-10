/*
    Eddie Rangel
    HelloBC.c
*/

#include <unistd.h>

int main(void)
{
    write(STDOUT_FILENO, "Hello BC!\n", 10);

    return 0;
}