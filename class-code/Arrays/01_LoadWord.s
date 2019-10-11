# Examples for threee different use case of lw instruction
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data

X: 	.word 0x01234567, 0x89ABCDEF, 0x1234ABCD, 0x11223344
	
	
	.text																
main:
	# first method, using the label
	lw $s0, X		# content of memory location X will be loaded into $s0
	
	
	# second method, using a register for memory address
	la $t0, X		# loads the address of X into t0
	lw $s1, ($t0)		# loads the content of address stored in t0 into s1	
	
	# same as second method, using an offset
	la $t0, X
	lw $s2, 4($t0)		# s2 = 0x89ABCDEF
	lw $s3, 8($t0)		# s3 = 0x1234ABCD
	
	# also we can manually add to t0 and modify the target address
	addi $t0, $t0, 0xC
	lw $s4, ($t0)		# s4 = 0x11223344
	
	# also we can manually add to t0 and modify the target address
	addi $t0, $t0, 0x4
	lw $s5, ($t0)		# s5 = unknown content
	
	# using negative offset (we could write it as 0x10 also)
	lw $s6, -16($t0)	# s6 = 0x01234567
	
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
