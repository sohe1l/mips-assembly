#
# CSc 256 Example 4.1: Power function
# Name: William Hsu
# Date: 6/22/2010
# Description:  Computes x^p, y^q

	.data
endl:	.asciiz	"\n"

# x		$s0
# p		$s1
# result	$s2
# y		$s3
# q		$s4

	.text
main:	li	$s0, 3		# int x = 3;
	li	$s1, 4		# int p = 4;
	li	$s3, 5		# int y = 5;
	li	$s4, 6		# int q = 6;

	add	$a0, $s0, $0	#  result = pow(x, p);
	add	$a1, $s1, $0
	jal	pow
	move	$s2, $v0

	move	$a0, $v0	#  cout << result << endl;
	li	$v0, 1		
	syscall

	li	$v0, 4
	la	$a0, endl
	syscall

	add	$a0, $s3, $0	#  result = pow(y, q);
	add	$a1, $s4, $0
	jal	pow
	move	$s2, $v0

	move	$a0, $v0	#  cout << result << endl;
	li	$v0, 1		
	syscall

	li	$v0, 4
	la	$a0, endl
	syscall

	li	$v0, 10
	syscall			#}


# int pow(int arg0, int arg1)
# arg0		$a0
# arg1		$a1
# return result in $v0

# Computes arg0 to the arg1-th power
# i		$t0
# product	$t1

pow:	li	$t1, 1		#  int product = 1;
	li	$t0, 0		#  for (int i=0; i<arg1; i++) {
	bge	$t0, $a1, endpow
for:	mul	$t1, $t1, $a0	#    product *= arg0;
	addi	$t0, $t0, 1	#  }
	blt	$t0, $a1, for

endpow:	move	$v0, $t1	#  return product;
	jr	$ra		#}
