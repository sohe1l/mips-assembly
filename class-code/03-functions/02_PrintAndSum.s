# Examples for printing to console
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv PRINT_CHAR 11
.eqv SYS_EXIT 10

	.data
	
endl:		.asciiz  "\n"   # used for cout << endl;

	.text
		
main:
	li $a0, 2
	li $a1, 3
	jal f1
	move $s0, $v0

	move $a0, $s0
	jal f2
	
	j exit	
	
f1:
	sw $ra, -4($sp)
	addi $sp, $sp, -4
	
	add $a0, $a0, $a1
	jal f2
	
	lw $ra, ($sp)
	addi $sp, $sp, 4
	move $v0, $a0
	jr $ra

f2:
	li $v0, PRINT_INT
	syscall
	jr $ra

		

exit:
		li $v0, SYS_EXIT
		syscall			# program exits.
		