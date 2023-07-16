.data
a: .space 1000
c: .space 1000
space: .asciiz " "
line: .asciiz "\n"

.macro getindex(%ans,%a,%b)
	mult %a $a1
	mflo %ans
	add %ans %ans %b
	sll %ans %ans 2
.end_macro

.macro END
	li $v0 10
	syscall
.end_macro

.macro readint(%d)
	li $v0 5
	syscall
	move %d $v0
.end_macro

.macro printspace
	li $v0 4
	la $a0 space
	syscall
.end_macro

.macro printline
	li $v0 4
	la $a0 line
	syscall
.end_macro

.macro printint(%d)
	li $v0 1
	move $a0 %d
	syscall
.end_macro

.text

readint($a1)   #n

li $t1 0
begin_for_1:
beq $t1 $a1 end_for_1
	li $t2 0
	begin_for_2:
	beq $t2 $a1 end_for_2
		getindex($t3,$t1,$t2)
		readint($t4)
		sw $t4 a($t3)
	addi $t2 $t2 1
	j begin_for_2
	end_for_2:
addi $t1 $t1 1
j begin_for_1
end_for_1:

li $t1 0
begin_for_3:
beq $t1 $a1 end_for_3
	li $t2 0
	begin_for_4:
	beq $t2 $a1 end_for_4
		getindex($t3,$t1,$t2)
		readint($t4)
		sw $t4 c($t3)
	addi $t2 $t2 1
	j begin_for_4
	end_for_4:
addi $t1 $t1 1
j begin_for_3
end_for_3:


li $t1 0
begin_for_5:
beq $t1 $a1 end_for_5
	li $t2 0
	begin_for_6:
	beq $t2 $a1 end_for_6
		li $t4 0
		li $t3 0
		begin_for_7:
		beq $t3 $a1 end_for_7
			getindex($t5,$t1,$t3)
			getindex($t6,$t3,$t2)
			lw $t5 a($t5)
			lw $t6 c($t6)
			mult $t5 $t6
			mflo $t7
			add $t4 $t4 $t7
		
		addi $t3 $t3 1
		j begin_for_7
		end_for_7:
		
		printint($t4)
		printspace
	addi $t2 $t2 1
	j begin_for_6
	end_for_6:
	printline
addi $t1 $t1 1
j begin_for_5
end_for_5:

END


