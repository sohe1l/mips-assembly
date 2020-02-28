# Examples for printing to console
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv PRINT_CHAR 11
.eqv SYS_EXIT 10

	.data
	
endl:		.asciiz  "\n"   # used for cout << endl;
label_int:	.asciiz  "Printing integer: "
label_char:	.asciiz  "Printing a single character: "


	.text																
main:
		# Set an int to print
        	li $t0, 123
							
		# Print label_int into the console.
		li $v0, PRINT_STRING
		la $a0, label_int
		syscall
		
		# Print t0 into the console.
		li $v0, PRINT_INT
		move $a0, $t0
		syscall
		
		# Print a new line into the console.
		li $v0, PRINT_STRING
		la $a0, endl
		syscall
		
		# Print label_char into the console.
		li $v0, PRINT_STRING
		la $a0, label_char
		syscall
		
		# Print character into the console. 
		li $v0, PRINT_CHAR
		li $a0, 'A' 			# a0 = 65 (ascii code for character A)
		addi $a0, $a0, 1		# a0 = 66
		syscall				# Prints chracter B (ascii code of 66)
		
		li $v0, SYS_EXIT
		syscall			# program exits.
		
