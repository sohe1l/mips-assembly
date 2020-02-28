# Examples for translating condtional statements with and operator
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# if ((a < 11) && (b < 12) && (c < 13) && (d < 14) && (e < 15)) flag = 5;

	# 1,2,3,4 → $s1
	li $t0, 11
	li $t1, 12
	li $t2, 13
	li $t3, 14
	li $t4, 15
	
	# flag → $t5
	li $t5, 0
	
	# a,b,c,d,e → $s0 to $s4
	li $s0, 0
	li $s1, 1
	li $s2, 2
	li $s3, 3
	li $s4, 4
	
	bge $s0, $t0, exit
	bge $s1, $t1, exit
	bge $s2, $t2, exit
	bge $s3, $t3, exit
	bge $s4, $t4, exit

	addi $t5, $zero, 5
	
exit:
	#print flag to verify
	move $a0, $t5
	li $v0, PRINT_INT
	syscall

	li $v0, SYS_EXIT
	syscall			# program exits.
		
