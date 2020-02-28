# Examples for translating condtional if/else statement
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
# num  -> $s0
# flag -> $s1
# max  -> $s2

# if ( num == max)
#	flag = 1;
# else if (num != 0)
#	flag -1;
# else
#	flag = 0;


main:
	# change theese values to verify
	li $s0, 0
	li $s2, 1

	bne $s0, $s2, else_if	# if ( num ==  max) (negated) if true check else_if
	li $s1, 1		# flag = 1
	j exit			# condition was met so do not check other conditions
	
else_if:
	beq $s0, $0, else	# else if(num !=0) (negated) if true must run else
	li $s1, -1		# flag = -1
	j exit			# condition was met so do not check other conditions
	
else:	
	li $s1, 0		# else flag = 0

exit:
	#print flag to verify
	move $a0, $s1
	li $v0, PRINT_INT
	syscall

	li $v0, SYS_EXIT
	syscall			# program exits.
		
