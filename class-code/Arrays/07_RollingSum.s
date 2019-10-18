# Csalculating rolling sum of an array
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv SYS_EXIT 10


	.data

NUMS:	.word 1,2,3,4,5,6,7,8,9,10
RES:	.word 0:10
endl:	.asciiz  "\n"   # used for cout << endl;
	
	.text																
main:
    	la $s0, NUMS ## address of current SOURCE element
    	la $s1, RES ## address of current RES element
    	li $s2, 10 # $t0 -> count array
    	

loop:
	lw $t0, ($s0)
	add $t1, $t1, $t0
	sw $t1, ($s1)
	
	addi $s0, $s0, 4 # move the pointers
	addi $s1, $s1, 4
	addi $s2, $s2, -1 # reduce the counter
	
	bgt $s2, 0, loop


	# print RES array
	la $s1, RES ## address of current RES element
	li $s2, 10 # $t0 -> count array
	
loop_print:
	lw $t0, ($s1)
	
	# Print running sum
	li $v0, PRINT_INT
	move $a0, $t0
	syscall	
	
	# Print a new line into the console.
	li $v0, PRINT_STRING
	la $a0, endl
	syscall
	
	addi $s1, $s1, 4
	addi $s2, $s2, -1 # reduce the counter
	
	bgt $s2, 0, loop_print
	

	
			
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
