# Examples for translating condtional statements with or operator.
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# if (a != 0) || (b < 10) ) grade = -1;
	# a -> $s0
	# b -> $s1
	# grade -> $s2
	# 10 -> $t0
	li $t0, 10
	
	# Change this to verify
	li $s0, 0
	li $s1, 5
	li $s2, 0
	
	bne    $s0, $0, in_if
	bge    $s1, $t0, exit
in_if:
	addi   $s2, $0, -1
	
exit:
	#print grade to verify
	move $a0, $s2
	li $v0, PRINT_INT
	syscall

	li $v0, SYS_EXIT
	syscall			# program exits.
		
