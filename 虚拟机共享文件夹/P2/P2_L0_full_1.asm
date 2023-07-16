.data
a: .space 100
v: .space 100
space: .asciiz " "
line: .asciiz "\n"

.macro readint(%d)
	li $v0 5
	syscall
	move %d $v0
.end_macro

.macro printint(%d)
	li $v0 1
	move $a0 %d
	syscall
	li $v0 4
	la $a0 space
	syscall
.end_macro

.macro nxtline
	li $v0 4
	la $a0 line
	syscall
.end_macro

.macro END
	li $v0 10
	syscall
.end_macro

.macro push(%d)
	sw %d 0($sp)
	subi $sp $sp 4
.end_macro

.macro pop(%d)
	addi $sp $sp 4
	lw %d 0($sp)
.end_macro

.text

li $k1 1
readint($a1)  #n
jal dfs
END

dfs:
	push($ra)
	push($t0)
	push($t1)
	push($t2)
	
	move $t0 $a0
	
	bne $a1 $t0 else_1
	if_1:
		li $t1 0
		begin_for_1:
		beq $t1 $a1 end_for_1
			sll $t2 $t1 2
			lw $t3 a($t2)
			printint($t3)
			
			addi $t1 $t1 1
		j begin_for_1
		end_for_1:
		nxtline
		j return
		
	else_1:
	
	li $t1 1
	begin_for_2:
	bgt $t1 $a1 end_for_2
		sll $t2 $t1 2
		lw $t3 v($t2)
		bnez $t3 else_2
		if_2:
			sw $k1 v($t2)
			sll $t4 $t0 2
			sw $t1 a($t4)
			addi $a0 $t0 1
			jal dfs
			sw $zero v($t2)
		j if_2_end
		else_2:
		
		
		if_2_end:
	
		addi $t1 $t1 1
	j begin_for_2
	end_for_2:
	
	
	return:
	pop($t2)
	pop($t1)
	pop($t0)
	pop($ra)
	jr $ra