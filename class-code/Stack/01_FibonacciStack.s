# Csalculating Fibonacci seeunece using stack
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv SYS_EXIT 10


	.data

endl:	.asciiz  "\n"   # used for cout << endl;
	
	.text																
main:
	li $s0, 10  # calc next x num in seq
	li $s1, 0  # first number in seq
	li $s2, 1  # second number in seq
	
	# init stack 
	sw $s1, -4($sp)
	sw $s2, -8($sp)
	addi $sp, $sp, -8
	
	# counter
	move $t2, $s0
loop:
	# get last 2 numbers on the stack
	addi $sp, $sp, 8
	lw $t0, -4($sp)
	lw $t1, -8($sp)
	
	# calculate the next in seq
	add $t0, $t0, $t1
	
	# Print t0 into the console.
	li $v0, PRINT_INT
	move $a0, $t0
	syscall
		
	# Print a new line into the console.
	li $v0, PRINT_STRING
	la $a0, endl
	syscall
	
	# push back to stack
	sw $t1, -4($sp)
	sw $t0, -8($sp)
	addi $sp, $sp, -8
	
	# update counter
	addi $t2, $t2, -1
	bgt $t2, 0, loop
	
			
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
