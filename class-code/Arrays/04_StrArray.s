# Examples for threee different use case of lb, lbu, sb instructions
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

# char str[6];
# char *ptr;
# ptr = &str[0];
# for (i = 0; i < 6; i++){
#    *ptr = 0xAB;
#    ptr++;
# }

	.data

STR:	.byte 0:6
	
	.text																
main:
    la $s0, STR
    li $s1, 0
    li $t0, 6
    li $t1, 0xAB

loop:    
    sb $t1, ($s0)
    addi $s0, $s0, 1
    addi $s1, $s1, 1
    blt  $s1, $t0, loop
	
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
