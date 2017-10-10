/*
    Filename: DemoAssemblyFunctions.c
    Developer: Eddie Rangel
    Description: The program will be used to demonstrate basic functions
    of the gcc and gdb
    purpose:  demonstrate the process of compilation to execution 

    Step 1.
        translate source code DemoAssemblyFunctions.c into assembly code (DemoAssemblyFunctions.s)
        $ gcc -S DemoAssemblyFunctions.c        # gcc compiler stops after translation phase

    Step 2.
        assemble DemoAssemblyFunctions.s into machine code (DemoAssemblyFunctions.o)
        $ gcc -c DemoAssemblyFunctions.s returnIntValue.s       # gcc calls assembler 'as' with appropriate flags
    
    Step 3.
        link object code DemoAssemblyFunctions.o into executable (DemoAssemblyFunctions)
        $ gcc -o DemoAssemblyFunctions DemoAssemblyFunctions.o   # gcc calls linker 'ld' with appropriate flags

    Step 4.
        Execute code        #  OS calls the loader
        $ ./DemoAssemblyFunctions          

    Or you can call each program yourself which is a bit of a hassle since
    you have to manually tell the linker what libraries to link in:

    $ gcc -S hello.c
    $ as -o hello.o hello.s
    $ ld /usr/lib/crt1.o  /usr/lib/crti.o /usr/lib/crtn.o  -o hello hello.o -lc
    $ ./hello 

*/

/* include */
#include<stdio.h>


/* Function Prototypes */

int returnIntValue();


int main()
{
    printf("DemoFunctions.c\n");
    printf("---------------\n");
    int result = returnIntValue();
    printf("Value Returned from ASM: %d\n", result);
    
}
