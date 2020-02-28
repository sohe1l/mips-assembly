# Examples for threee different use case of lb, lbu, sb instructions
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data

X: 	.word 0x01234567, 0x89ABCDEF, 0x1234ABCD, 0x11223344
	
	
	.text																
main:
	la $t0, X	# load address of X into $t0
	
	# load byte examples
	lb $s1, X		# loads two bytes located at address X into $s1
	lb $s2, 2($t0)  	# offset of two
	
	lb $s3, 4($t0)  	# negative number 
	lbu $s4, 4($t0) 	# negative number loading with unsigned instruction
	
	# save byte examples
	li $s0, 0xFEDCBA98 
	sb $s0, X		# stores content 1 byte content of s0 into memory location of X
	sb $s0, 7($t0)
	
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
