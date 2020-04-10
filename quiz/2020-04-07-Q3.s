.eqv PRINT_INT 1
.eqv SYS_EXIT 10
	.data
	
	.text																
main:
    # Translate following c++ code
    # // x is in $s1 and y is in $s2
    # // assume x and y already defined and initialized
    # if (x < -5 || x > 15) {
    #   x = 4 * x + y * -5
    # }

    li $s1, 20
    li $s2, 2
	
    blt $s1, -5, in_if_1
    ble $s1, 15, after_if_1

in_if_1:

    mul $t0, $s1, 4
    mul $t1, $s2, -5
    add $s1, $t0, $t1

after_if_1:

exit:
    # print x
    li $v0, PRINT_INT
    move $a0, $s1
    syscall	

    # exit program
    li $v0, SYS_EXIT
    syscall			
