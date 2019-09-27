# Examples for getting input from the console
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv INPUT_INT 5
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
		# Read into and stores in $v0
		li $v0, INPUT_INT
		syscall			
		move $s0, $v0
		
		# Print $s0 into the console.
		li $v0, PRINT_INT
		move $a0, $s0
		syscall
		
		li $v0, SYS_EXIT
		syscall			# program exits.
		
