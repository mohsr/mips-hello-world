# helloworld.asm
# Written by:  Mohsin Rizvi
# Last edited: 08/02/17
# 
# This is my first program writting in MIPS (or any assembly language)!
# I am writing it because low-level programming is really cool, and maybe
# it'll give me a headstart on my assembly course next semester (even
# though that uses x86-64 and another language built for learning, not 
# MIPS).
#
# Written with MARS: http://courses.missouristate.edu/KenVollmar/mars/

# Data to be used
.data
    # Declare and initialize my_str
    my_str:
        .asciiz
        "Hello world!\n"

# Instructions to be executed
.text
main:
    # Set syscall to print string (4) using register v0
    li $v0, 4
    # Load address of my_str into argument register a0
    la $a0, my_str
    # Execute the syscall
    syscall
