.data
	stack: .space 1000

.text
case35:
	ori $t0, $zero, 4
	ori $t1, $zero, 8
	ori $t2, $zero, 12
	ori $t3, $zero, 16
	sw $t0, 0($zero)
	# nop
	sw $t1, 0($t0)
	sw $t2, 0($t1)
	sw $t3, 4($t1)

 occasionl7:	#ld_E_RS
 	lw $t4, 0($t0)
 	lw $t5, 0($t4)
