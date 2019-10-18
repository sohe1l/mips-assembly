# Pop Quiz 2
# First we are defining system calls for better readability
.eqv PRINT_INT 1
.eqv SYS_EXIT 10

	.data
	
	.text																
main:
	# Translate following c++ code
	# int a = 3
	# int b = 2
	# int c = 1

	li $s0, 3
	li $s1, 2
	li $s2, 1
	
	# if (b < a && c < b){
	#  int t = a;
	#  a = c;
	#  c = t;	
	# }
	
	bge $s1, $s0, AFTER_IF_1
	bge $s3, $s2, AFTER_IF_1
	move $t0, $s0
	move $s0, $s2
	move $s2, $t0
	
AFTER_IF_1:

	# if (a < 10 || b > 10){
	#  c = 20;
	# } else {
	#  c = 15;	
	# }

	li $t1, 10
	blt $s0, $t1, IF2
	ble $s1, $t1, IF2_ELSE
IF2:
	li $s2, 20
	j exit
IF2_ELSE:
	li $s2, 15
		
exit:
	li $v0, SYS_EXIT
	syscall			# program exits.
