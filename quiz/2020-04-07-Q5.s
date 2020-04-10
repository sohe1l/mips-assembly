.eqv PRINT_INT 1
.eqv PRINT_STR 4
.eqv SYS_EXIT 10
	.data
SPACE: .asciiz " "
	
	.text																
main:
    # Translate the following C++ code into MIPS Assembly
    # // q: $s0
    # // y: $s1
    # // x: $s2
    # if (q < 10){
    #   q = x;
    # } else if(y > 0 && y < 10) {
    #   y = q;
    # }else {
    #   x = q - y
    # }

    li $s0, 5
    li $s1, 17
    li $s2, 77
 
    bge $s0, 10, elseif
    move $s0, $s2         # q = x;
    j endif

elseif:
    ble $s1, $0, else
    bge $s1, 10, else
    move $s1, $s0	# y = q ;
    j endif
    
else:
    sub $s2, $s0, $s1	# x = q - y;
    
endif:


exit:
    # print q
    li $v0, PRINT_INT
    move $a0, $s0
    syscall
    
    # print space
    li $v0, PRINT_STR
    la $a0, SPACE
    syscall
    
    # print y
    li $v0, PRINT_INT
    move $a0, $s1
    syscall
    
    # print space
    li $v0, PRINT_STR
    la $a0, SPACE
    syscall	

    # print x
    li $v0, PRINT_INT
    move $a0, $s2
    syscall
    
    # exit program
    li $v0, SYS_EXIT
    syscall			
