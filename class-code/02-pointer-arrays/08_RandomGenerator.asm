# Random number generator
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv SYS_EXIT 10
.eqv RAND 42

.data
ARR:	.word 0:100     # random numbers, max 100 numbers
endl:	.asciiz  "\n"   # used for cout << endl;
	
.text																
main:
    	la $s0, ARR	# address of ARR
    	li $s1, 32	# count numbers to generate
    	li $s2, 100	# random upper bound



	# calculate end address of array
	# $s3 = end addres
	mul $s3, $s1, 4
	add $s3, $s3, $s0 
	
loop:    	
    	# generate a random number
        move $a1, $s2	# set the max bound
        li $v0, RAND	# set the random number signal
    	syscall		# random number is in $a0
    	
    	# saved the random number into array
    	sw $a0, ($s0)
    	
    	# move the pointer
	addi $s0, $s0, 4
	
	# go back to loop if not reached the end of array
	blt $s0, $s3, loop
	
	# reset address of ARR
	la $s0, ARR	
	
print_loop:    	
    	lw $a0, ($s0) # load element
    	li $v0, PRINT_INT
    	syscall
    	
    	li $v0, PRINT_STRING
    	la $a0, endl 
    	syscall
    	
    	# move the pointer
	addi $s0, $s0, 4
	
	# go back to loop if not reached the end of array
	blt $s0, $s3, print_loop

exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
