# Reverse an array using stacks
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv SYS_EXIT 10


	.data
ARR:	.word 1,2,3,4,5,6,7,8,9
SIZE:	.word 9
space:	.asciiz  " "   # used for space;
	
	.text																
main:
	lw $s0, SIZE
	la $s1, ARR
	
	
	# save the numbers to the stack
	# working copy
	move $t0, $s0
	move $t1, $s1
loop:
	# load the next number
	lw $t2, ($t1)
	
	# save it to stack
	sw $t2, -4($sp)
	addi $sp, $sp, -4
	
	# update counters
	addi $t1, $t1, 4
	addi $t0, $t0, -1
	
	bgt $t0, 0, loop


	# pop back from the stack to the array
	# working copy
	move $t0, $s0
	move $t1, $s1
loop2:
	# load the number from stack
	lw $t2, 0($sp)
	addi $sp, $sp, 4
	
	# save to the array
	sw $t2, ($t1)
	
	# update counters
	addi $t1, $t1, 4
	addi $t0, $t0, -1
	
	bgt $t0, 0, loop2
	
	
	# Print the array
	# working copy
	move $t0, $s0
	move $t1, $s1
loop_print:
	lw $t2, ($t1)
	
	li $v0, PRINT_INT
	move $a0, $t2
	syscall	
	
	# Print a new line into the console.
	li $v0, PRINT_STRING
	la $a0, space
	syscall
	
	addi $t1, $t1, 4
	addi $t0, $t0, -1 # reduce the counter
	
	bgt $t0, 0, loop_print
	
			
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
