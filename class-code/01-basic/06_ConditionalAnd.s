# Examples for translating condtional statements with and operator
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# if ( x > y ) && (x < 0) ) flag = 23;
	# x → $s0
	# y → $s1
	# flag → $s2
	# change theese values to verify
	li $s0, -5
	li $s1, -10
	li $s2, 0
	
	ble   $s0, $s1, exit
	bge   $s0, $0, exit
	addi  $s2, $0, 23
	
exit:
	#print flag to verify
	move $a0, $s2
	li $v0, PRINT_INT
	syscall

	li $v0, SYS_EXIT
	syscall			# program exits.
		
