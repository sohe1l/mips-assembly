# Disovering number representation
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
		# Different representation of numbers.
		# Verify the registers values.
        	li $t0, 10   		# Decimal integer
		li $t1, 010  		# Octal integer
		li $t2, 0x10 		# Hexadecimal integer
		
		# Negative numbers
		li $t3, -10   		# Decimal integer
		li $t4, -010  		# Octal integer
		li $t5, -0x10 		# Hexadecimal integer
		
		# Adding all the positive numbers and save into s0.
		# Verify the registers values.
		move $s0, $zero 	# s0 = 0
		add $s0, $s0, $t0	# s0 += t0
		add $s0, $s0, $t1	# s0 += t1
		add $s0, $s0, $t2	# s0 += t2
		
		# Adding all the negative numbers and save into s1.
		# Verify the registers values.
		move $s1, $zero 	# s1 = 0
		add $s1, $s1, $t3	# s1 += t3
		add $s1, $s1, $t4	# s1 += t4
		add $s1, $s1, $t5	# s1 += t5
		
		# Adding s0 and s1 must yields zero.
		add $s2, $s0, $s1	# s2 = s0 + s1
							
		# Print s2 into the console.	
		li $v0, PRINT_INT
		move $a0, $s2
		syscall
		
		li $v0, SYS_EXIT
		syscall			# program exits.
		
# End of program, leave a blank line afterwards to make SPIM happy
