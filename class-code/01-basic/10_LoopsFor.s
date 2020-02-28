# Examples for translating for loop
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# int sum = 0;
	# int limit = 3;
	# for (int i = 0; i <= limit; i++){
	#	sum = sum + i
	# }
	
	# $s0: sum
	# $s1: i
	# $s2: limit
	
	li $s0, 0
	li $s1, 0
	li $s2, 3

	# initial check before starting the loop (once only)
	bgt $s1, $s2, exit
loop:
	add $s0, $s0, $s1
	addi $s1, $s1, 1
	ble   $s1, $s2, loop

	
exit:
	#print sum to verify
	move $a0, $s0
	li $v0, PRINT_INT
	syscall

	li $v0, SYS_EXIT
	syscall			# program exits.
		
