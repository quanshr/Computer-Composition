li $v0 5
syscall 
li $a0 0
move $t0 $v0  # t0=n
li $a1 4      
div $t0 $a1
mfhi $t1      # t1 = n%4

li $a1 100      
div $t0 $a1
mfhi $t2      # t2 = n%100

li $a1 400      
div $t0 $a1
mfhi $t3      # t3 = n%400

li $a1 0

li $v0 1

beq $t1 $a1 if_1
li $a0 0
j else_1
if_1:

beq $t2 $a1 if_2
li $a0 1
j else_1
if_2:
beq $t3 $a1 if_3
li $a0 0
j else_3
if_3:
li $a0 1
else_3:
else_2:
else_1:

syscall

li $v0 10
syscall

