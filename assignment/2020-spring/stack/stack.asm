.eqv PRINT_INT 1
.eqv PRINT_STRING 4
.eqv PRINT_CHAR 11
.eqv INPUT_INT 5
.eqv SYS_EXIT 10

.data

arr: .word 0:100
	
endl:		.asciiz  "\n" 
space:		.asciiz  " "
label_arr:	.asciiz  "Current elemnets: "
label_inst:	.asciiz  "Enter 1 to push, 2 to pop, 3 to find max, 4 to rotate, 0 to exit\n"
label_invalid:	.asciiz  "Invalid option \n"
label_empty:	.asciiz  "Array is empty \n"
label_max:	.asciiz  "Max is: "

.text														
main:						
		li $v0, PRINT_STRING
		la $a0, label_inst
		syscall
			
exit:

print_arr:
		
push:

pop:

max:

rotate:
