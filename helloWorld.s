// X0-X2 - parameters to Linux function services
// X8 - Linux function number


.global_start
_start : mov    X0, #1              // 1=Stdout
         ldr    X1, =helloworld     // string to print
         mov    X2, #13             // length of the string
         mov    X8, #64             // Call Linux to output the string

// Setup the parametesr to exit the program
// and then call Linux to do it

         mov    X0, #0              // Use 0 return code
         mov    X8, #93             // Service code 93 terminates
         svc    0                   // Call Linux to terminate

.data
hellowworld: .ascii "Hello World\n"