	.globl start
	.text

start: li $v0 0
li $a0 -10
while: 
addi $t0 $a0 1
srl $a0 $a0 1
add $v0 $v0 $t0
bnez $a0 while
