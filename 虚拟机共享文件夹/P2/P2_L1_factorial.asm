.data
a: .space 5000

.macro END
	li $v0 10
	syscall
.end_macro

.macro readint(%d)
	li $v0 5
	syscall
	move %d $v0
.end_macro

.macro printint(%d)
	#li $v0 1
	move $a0 %d
	syscall
.end_macro

.macro print(%d)
	
	div %d $s5
	mflo $a0
	syscall
	mfhi $a0
	
	div $a0 $s4
	mflo $a0
	syscall
	mfhi $a0
	
	div $a0 $s3
	mflo $a0
	syscall
	mfhi $a0
	
	div $a0 $s2
	mflo $a0
	syscall
	mfhi $a0
	
	div $a0 $t6
	mflo $a0
	syscall
	mfhi $a0
	
	syscall
.end_macro

.text
readint($s0)   #n
li $s7 1
li $t6 10
li $s2 100
li $s3 1000
li $s4 10000
li $s5 100000
li $s6 1000000
li $t5 200  #mx
sw $s7 a($zero)  # a[0] = 1




li $t0 1
begin_for_1:
bgt $t0 $s0 end_for_1
	#  $s1  now
	li $s1 0
	li $t2 0
	begin_for_2:
	beq $s1 $t5 end_for_2
		lw $t1 a($s1)
		mult $t1 $t0
		mflo $t1
		add $t1 $t1 $t2
		div $t1 $s6
		mflo $t2  #quotient
		mfhi $t3  #reminder
		sw $t3 a($s1)
	
	addi $s1 $s1 4
	j begin_for_2
 	end_for_2:
addi $t0 $t0 1
j begin_for_1
end_for_1:

move $s1 $t5
begin_for_3:
lw $t1 a($s1)
bnez $t1 begin_print
	subi $s1 $s1 4
j begin_for_3
begin_print:

li $v0 1
lw $a0 a($s1)
syscall
subi $s1 $s1 4

begin_for_4:
bltz $s1 end_for_4
	lw $t1 a($s1)
	print($t1)
subi $s1 $s1 4
j begin_for_4
end_for_4:
END


