.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv PRINT_CHAR 11
.eqv SYS_EXIT 10

.data	

.text
		
main:
	li $a0, 2
	li $a1, 3
	jal f1
	move $s0, $v0

	move $a0, $s0
	jal f2
	
	j exit	

# sum function
# calculates sum of two numbers
# a0: first number
# a1: second number
# v0: result of the sum
f1: 
	sw $ra, -4($sp)
	sw $s0, -8($sp)
	addi $sp, $sp, -8
	
	add $s0, $a0, $a1
	move $a0, $s0
	jal f2
	
	move $v0, $s0
	
	lw $s0, ($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	jr $ra

# print function
# a0: the value to print
f2:
	li $v0, PRINT_INT
	syscall
	jr $ra

		

exit:
		li $v0, SYS_EXIT
		syscall			# program exits.
