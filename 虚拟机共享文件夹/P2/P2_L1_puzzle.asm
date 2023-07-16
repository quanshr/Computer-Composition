.data
a: .space 1000

.macro readint(%d)
	li $v0 5
	syscall
	move %d $v0
.end_macro

.macro getindex(%ans,%a,%b)
	mult %a $s4
	mflo %ans
	add %ans %ans %b
	sll %ans %ans 2
.end_macro

.macro printint(%d)
	li $v0 1
	move $a0 %d
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

readint($s0)
readint($s1)
addi $s4 $s1 1

li $t3 1
begin_for_1:
bgt $t3 $s0 end_for_1
	li $t4 1
	begin_for_2:
	bgt $t4 $s1 end_for_2
		getindex($t5,$t3,$t4)
		readint($t6)
		sw $t6 a($t5)
		
	addi $t4 $t4 1
	j begin_for_2
	end_for_2:

addi $t3 $t3 1
j begin_for_1
end_for_1:

readint($a1)  #start
readint($a2)
readint($s6)  #terminal
readint($s7)

li $t0 0
addi $t1 $s0 1
addi $t2 $s1 1

li $s5 1

li $t3 0
begin_for_3:
bgt $t3 $t2 end_for_3
	getindex($t4,$t0,$t3)
	sw $s5 a($t4)
	getindex($t4,$t1,$t3)
	sw $s5 a($t4)

addi $t3 $t3 1
j begin_for_3
end_for_3:

li $t3 0
begin_for_4:
bgt $t3 $t1 end_for_4
	getindex($t4,$t3,$t0)
	sw $s5 a($t4)
	getindex($t4,$t3,$t2)
	sw $s5 a($t4)

addi $t3 $t3 1
j begin_for_4
end_for_4:

jal dfs


printint($t9)
END

dfs:	
	#printint($a1)
	#printint($a2)

	push($ra)
	push($t1)
	push($t2)
	
	move $t1 $a1
	move $t2 $a2
	
	getindex($t8,$t1,$t2)
	lw $t7 a($t8)
	bnez $t7 return
	bne $t1 $s6 else_1
		bne $t2 $s7 else_1
			addi $t9 $t9 1
			j return
	else_1:
	getindex($t8,$t1,$t2)
	sw $s5 a($t8)
	
	subi $a1 $t1 1
	move $a2 $t2
	jal dfs
	addi $a1 $t1 1
	move $a2 $t2
	jal dfs
	move $a1 $t1
	subi $a2 $t2 1
	jal dfs
	move $a1 $t1
	addi $a2 $t2 1
	jal dfs 
	
	
	getindex($t8,$t1,$t2)
	sw $zero a($t8)
	
	return:
	
	pop($t2)
	pop($t1)
	pop($ra)
jr $ra





