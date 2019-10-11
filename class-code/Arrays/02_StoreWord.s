# Examples for threee different use case of sw instruction
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data

X: 	.word 0x01234567, 0x89ABCDEF, 0x1234ABCD, 0x11223344
	
	
	.text																
main:
	# first method, using the label
	li $s0, 0x11111111
	sw $s0, X		# content of s0 will be saved into memory location X
	
	# second method, using a register for memory address
	add $s1, $s0, $s0	# define a new value
	la $t0, X		# loads the address of X into t0
	sw $s1, ($t0)		# store content of s0 into the memory address that is stored in t0
	
	# same as second method, using an offset
	add $s2, $s1, $s0	# define a new value
	add $s3, $s2, $s0	# define a new value
	la $t0, X
	sw $s2, 4($t0)
	sw $s3, 8($t0)
	
	# using negative offset
	add $s4, $s3, $s0	# define a new value
	addi $t0, $t0, 16
	sw $s4, -4($t0)	# s6 = 0x01234567
	
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
