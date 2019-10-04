# Examples for translating for loop
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# do{
	#  sum = sum + 1;
	# } while ( sum < 100);
	
	li $s0, 0 		# sum
	li $t0, 100
loop:
	addi $s0, $s0, 1
	blt $s0, $t0, loop
	
	#print sum to verify
	move $a0, $s0
	li $v0, PRINT_INT
	syscall
	
	
	# while (sum < 100{
	#  sum = sum + 1;
	# }

	li $s0, 0 		# sum
	li $t0, 100
	
	bge $s0, $t0, loop2_end	# initial check
loop2:
	addi $s0, $s0, 1
	blt $s0, $t0, loop2
	
loop2_end:
	#print sum to verify
	move $a0, $s0
	li $v0, PRINT_INT
	syscall
		
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
