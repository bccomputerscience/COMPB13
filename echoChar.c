/*  Eddie Rangel
    echoChar.c
    ctrl + D to trigger EOF
*/


#include <unistd.h>
#include<stdio.h>

int main()
{
    char buff[1];
    int n;

    write(STDOUT_FILENO, "Enter one character: ", 21);
    n = read(STDIN_FILENO, buff, 1);

    write(STDOUT_FILENO,"You entered: ", 13);
    write(STDOUT_FILENO, buff, n);
    write(STDOUT_FILENO, "\n", 1);

    return 0;            
}