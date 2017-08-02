# helloworld.asm
# Written by:  Mohsin Rizvi
# Last edited: 08/02/17
# 
# This is my first program writting in MIPS (or any assembly language),
# and I am writing it right now because it seems cool, and maybe it'll
# give me a headstart on my assembly course next semester (even though
# that uses x86-64, not MIPS).
#
# Written in MARS: http://courses.missouristate.edu/KenVollmar/mars/

# Data to be used
.data
    # Declare and initialize my_str
    my_str:
        .asciiz
        "Hello World!\n"

# Instructions to be executed
.text
main:
    # Set syscall to print string (4)
    li $v0, 4
    # Load address of my_str
    la $a0, my_str
    # Execute the syscall
    syscall