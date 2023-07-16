.data
a: .space 1000
c: .space 1000
space: .asciiz " "
line: .asciiz "\n"

.macro getindex(%ans,%a,%b,%h)
	mult %a %h
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

readint($s0)   #n
readint($s1)   #m
readint($s2)   #kernel_n
readint($s3)   #kernel_m

li $t1 0
begin_for_1:
beq $t1 $s0 end_for_1
	li $t2 0
	begin_for_2:
	beq $t2 $s1 end_for_2
		getindex($t3,$t1,$t2,$s1)
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
beq $t1 $s2 end_for_3
	li $t2 0
	begin_for_4:
	beq $t2 $s3 end_for_4
		getindex($t3,$t1,$t2,$s3)
		readint($t4)
		sw $t4 c($t3)
	addi $t2 $t2 1
	j begin_for_4
	end_for_4:
addi $t1 $t1 1
j begin_for_3
end_for_3:


sub $s4 $s0 $s2
sub $s5 $s1 $s3
addi $s4 $s4 1
addi $s5 $s5 1
li $t1 0
begin_for_5:
beq $t1 $s4 end_for_5
	li $t2 0
	begin_for_6:
	beq $t2 $s5 end_for_6
		li $t5 0
		li $t3 0
		begin_for_7:
		beq $t3 $s2 end_for_7
			li $t4 0
			begin_for_8:
			beq $t4 $s3 end_for_8
				add $t8 $t1 $t3
				add $t9 $t2 $t4
				getindex($t6,$t8,$t9,$s1)
				getindex($t7,$t3,$t4,$s3)
				lw $t6 a($t6)
				lw $t7 c($t7)
				mult $t6 $t7
				mflo $s6
				add $t5 $t5 $s6
			addi $t4 $t4 1
			j begin_for_8
			end_for_8:
		addi $t3 $t3 1
		j begin_for_7
		end_for_7:

		printint($t5)
		printspace
	addi $t2 $t2 1
	j begin_for_6
	end_for_6:
	printline
addi $t1 $t1 1
j begin_for_5
end_for_5:

END


