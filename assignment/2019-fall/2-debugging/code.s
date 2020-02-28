    .data
        endl:    .asciiz  "\n"   # used for cout << endl;
    .text
# w --> $s0
# x --> $s1
# y --> $s2
# z --> $s3
main:
    li  $s0, -1
    li  $s1, 0
    li  $s2, 10
    li  $s3, 5

loop:   add  $s3, $s3, $s0
        add  $s0, $s1, $s2

inc:    addi $s1, $s1, 1
        blt  $s1, $s2, loop

exit:   move $a0, $s0       # puts w into arg0 (a0 register) for cout
        addi $v0, $0, 1     # puts 1 in v0 which denotes we are printing an int
        syscall             # make a syscall to system
       
        la  $a0, endl       # puts the address of the string endl into a0
        addi $v0, $0, 4     # puts 4 into v0 saying we are printing a string
        syscall
       
        move $a0, $s1       # puts x into arg0 (a0 register) for cout
        addi $v0, $0, 1     # puts 1 in v0 which denotes we are printing an int
        syscall             # make a syscall to system
       
        la  $a0, endl       # puts the address of the string endl into a0
        addi $v0, $0, 4     # puts 4 into v0 saying we are printing a string
        syscall
        
        move $a0, $s2       # puts y into arg0 (a0 register) for cout
        addi $v0, $0, 1     # puts 1 in v0 which denotes we are printing an int
        syscall             # make a syscall to system
        
        la  $a0, endl       # puts the address of the string endl into a0
        addi $v0, $0, 4     # puts 4 into v0 saying we are printing a string
        syscall
        
        move $a0, $s3       # puts z into arg0 (a0 register) for cout
        addi $v0, $0, 1     # puts 1 in v0 which denotes we are printing an int
        syscall             # make a syscall to system
        
        la  $a0, endl       # puts the address of the string endl into a0
        addi $v0, $0, 4     # puts 4 into v0 saying we are printing a string
        syscall

        addi $v0,$0, 10
        syscall