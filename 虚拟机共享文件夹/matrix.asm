.data
matrix: .space 10000
enter: .asciiz "\n"
space: .asciiz " "

.macro getindex(%ans,%i,%j)
	mult %i $a2
	mflo %ans
	add %ans %ans %j
	sll %ans %ans 2
.end_macro

.text
li $v0 5
syscall
move $a1 $v0
li $v0 5
syscall
move $a2 $v0

li $t1 0
for_1_begin:
beq $t1 $a1 for_1_end
li $t2 0
for_2_begin:
beq $t2 $a2 for_2_end

getindex($t3,$t1,$t2)
li $v0 5
syscall
sw $v0 matrix($t3)

addi $t2 $t2 1
j for_2_begin
for_2_end:

addi $t1 $t1 1
j for_1_begin
for_1_end:



li $t9 0

move $t1 $a1
for_3_begin:
beq $t1 $t9 for_3_end
move $t2 $a2
for_4_begin:
beq $t2 $t9 for_4_end

subi $t4 $t1 1
subi $t5 $t2 1

getindex($t3,$t4,$t5)
lw $t4 matrix($t3)
beq $t4 $t9 if

li $v0 1
move $a0 $t1
syscall

li $v0 4
la $a0 space
syscall

li $v0 1
move $a0 $t2
syscall

li $v0 4
la $a0 space
syscall

li $v0 1
move $a0 $t4
syscall

li $v0 4
la $a0 enter
syscall

if:


subi $t2 $t2 1
j for_4_begin
for_4_end:

subi $t1 $t1 1
j for_3_begin
for_3_end: