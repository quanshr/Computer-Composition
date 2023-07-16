.data
string: .space 100
	
.macro END
	li $v0 10
	syscall
.end_macro

.macro readchar
	li $v0 12
	syscall
.end_macro

.macro readint(%d)
	li $v0 5
	syscall
	move %d $v0
.end_macro

.macro print(%d)
	li $v0 1
	move $a0 %d
	syscall
.end_macro

# n = $a1

.text
readint($a1)
begin_for_1:
beq $t1 $a1 end_for_1
	readchar
	sll $t2 $t1 2
	sw $v0 string($t2)
	addi $t1 $t1 1
j begin_for_1
end_for_1:

li $a2 1  # ok = $a2

li $t1 0
begin_for_2:
beq $t1 $a1 end_for_2
	sub $t2 $a1 $t1
	subi $t2 $t2 1
	sll $t3 $t1 2
	lw $t4 string($t3)
	sll $t3 $t2 2
	lw $t5 string($t3)
	beq $t4 $t5 else_1
		li $a2 0
	else_1:
	addi $t1 $t1 1
j begin_for_2
end_for_2:

print($a2)