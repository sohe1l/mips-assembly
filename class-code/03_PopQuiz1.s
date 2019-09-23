# Pop Quiz 1 - Adding and printing sample code
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
		
    li $t0, 0
		li $t1, 1
		
		add $t0, $t0, $t1
		add $t1, $t0, $t1
		
		add $t0, $t0, $t1
		add $t1, $t0, $t1
		
		add $t0, $t0, $t1
		add $t1, $t0, $t1
							
		# Print t0 into the console.	
		li $v0, PRINT_INT
		move $a0, $t0
		syscall
		
		# Print t0 into the console.	
		li $v0, PRINT_INT
		move $a0, $t1
		syscall
		
		li $v0, SYS_EXIT
		syscall			# program exits.
		

