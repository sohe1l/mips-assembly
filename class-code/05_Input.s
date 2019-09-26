# Examples for getting input from the console
# First we are defining system calls for better readability
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
		# TODO
		
		li $v0, SYS_EXIT
		syscall			# program exits.
		
