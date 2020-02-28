# Examples for threee different use case of lb, lbu, sb instructions
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

# int x[6];
# int *ptr;
# ptr = x;
# for (i=0;i<6;i++) {
#   *ptr    =    i;
#   ptr++;
# }

	.data

X:	.byte 0:6
	
	.text																
main:

#ptr is in $s0
#i is in $s1
    .text
    li    $s1, 0
    la    $s0, X
    li    $t0, 6
loop:
    sw   $s1, ($s0)
    addi $s0, $s0, 4
    addi $s1, $s1, 1
    blt  $s1, $t0, loop

	
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
