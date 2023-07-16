.text
case_1_begin:
	lui $0 , 53077
	lui $14, 26087
	lui $28, 57874
	lui $29, 25600
	lui $31, 58330
	addi $14, $29, -26799
	ori $28, $0 , 0
	lw $31, 60($28)
	addi $28, $14, 14809
	sltu $14, $0 , $14
	ori $0 , $0 , 0
	nop 
	lw $31, 0($0)
	bne $29, $0 , case_1_1
	slt $29, $0 , $28
	ori $0 , $0 , 0
	sh $31, 0($0)
case_1_1:
	jal case_1_2
	addi $0 , $0 , -19224
	ori $14, $0 , 0
	nop 
	sw $29, 84($14)
	jal case_1_3
	slt $0 , $28, $31
	ori $31, $0 , 0
	nop 
	sw $29, 48($31)
case_1_2:
	ori $28, $0 , 0
	sb $14, 72($28)
	add $0 , $28, $29
	jr $31
	addi $29, $29, 15736
case_1_3:
	ori $28, $0 , 0
	lh $29, 30($28)
	addi $31, $14, -29285
	ori $14, $0 , 60360
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 3765
	lui $9 , 22163
	lui $16, 46985
	lui $19, 25920
	lui $31, 43607
	andi $16, $19, 26711
	beq $31, $19, case_2_1
	andi $31, $0 , 11162
	ori $9 , $0 , 0
	sw $0 , 84($9)
case_2_1:
	beq $16, $16, case_2_2
	addi $31, $19, 1933
	ori $9 , $0 , 0
	nop 
	sh $16, 56($9)
case_2_2:
	addi $31, $16, -7193
	jal case_2_3
	andi $0 , $16, 55678
	slt $0 , $16, $31
	jal case_2_4
	or $19, $0 , $31
	ori $9 , $0 , 0
	nop 
	nop 
	sb $16, 84($9)
case_2_3:
	ori $0 , $0 , 0
	sb $16, 22($0)
	ori $0 , $0 , 0
	nop 
	lh $19, 68($0)
	jr $31
	add $31, $9 , $31
case_2_4:
	addi $16, $16, -17676
	addi $16, $31, -15975
	jal case_2_5
	sltu $9 , $9 , $19
	ori $0 , $0 , 0
	nop 
	nop 
	lh $0 , 0($0)
	jal case_2_6
	ori $9 , $19, 10159
	ori $19, $0 , 0
	lh $31, 30($19)
case_2_5:
	andi $19, $16, 49478
	ori $19, $0 , 0
	nop 
	nop 
	lw $16, 32($19)
	jr $31
	ori $16, $0 , 0
	lb $0 , 76($16)
case_2_6:
	ori $9 , $0 , 0
	nop 
	nop 
	lw $31, 28($9)
	jal case_2_7
	and $16, $0 , $19
	ori $9 , $0 , 0
	nop 
	nop 
	lh $0 , 70($9)
	jal case_2_8
	and $19, $19, $16
	or $19, $19, $16
case_2_7:
	sltu $19, $16, $16
	ori $19, $0 , 53100
	jr $31
	ori $16, $0 , 0
	lw $0 , 40($16)
case_2_8:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 4129
	lui $7 , 22254
	lui $13, 56476
	lui $15, 12384
	lui $31, 49022
	andi $15, $0 , 7850
	ori $31, $0 , 0
	nop 
	sw $15, 48($31)
	or $15, $13, $7 
	bne $15, $7 , case_3_1
	andi $13, $0 , 3013
	andi $7 , $13, 17283
case_3_1:
	bne $0 , $15, case_3_2
	or $15, $13, $31
	or $0 , $7 , $15
case_3_2:
	ori $7 , $0 , 0
	nop 
	nop 
	lh $7 , 2($7)
	andi $0 , $13, 13475
	ori $15, $0 , 0
	nop 
	lh $7 , 34($15)
	ori $7 , $0 , 0
	lw $0 , 24($7)
	andi $31, $31, 1985
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 5841
	lui $25, 26122
	lui $29, 11717
	lui $30, 22198
	lui $31, 43903
	sub $29, $25, $25
	beq $0 , $31, case_4_1
	addi $30, $25, 18811
	andi $29, $30, 39175
case_4_1:
	ori $30, $0 , 0
	nop 
	nop 
	sw $25, 96($30)
	ori $30, $29, 7123
	addi $25, $31, 9560
	ori $0 , $0 , 0
	nop 
	nop 
	lb $31, 15($0)
	jal case_4_2
	add $30, $30, $25
	ori $0 , $0 , 0
	nop 
	nop 
	sb $0 , 10($0)
	jal case_4_3
	addi $0 , $31, -14987
	ori $31, $0 , 0
	nop 
	nop 
	lb $30, 38($31)
case_4_2:
	ori $25, $0 , 0
	lh $25, 46($25)
	addi $0 , $0 , -28534
	jr $31
	ori $30, $30, 31279
case_4_3:
	slt $31, $0 , $30
	ori $29, $0 , 0
	lb $0 , 20($29)
	beq $30, $30, case_4_4
	andi $29, $29, 4690
	addi $29, $29, -4023
case_4_4:
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 5218
	lui $3 , 32627
	lui $12, 34660
	lui $13, 12416
	lui $31, 36462
	addi $3 , $0 , -29208
	bne $31, $31, case_5_1
	ori $31, $0 , 53668
	ori $31, $0 , 0
	lb $31, 91($31)
case_5_1:
	ori $0 , $0 , 0
	nop 
	lh $31, 90($0)
	ori $13, $0 , 0
	lb $13, 32($13)
	bne $31, $3 , case_5_2
	and $31, $12, $3 
	ori $31, $0 , 0
	nop 
	sh $3 , 58($31)
case_5_2:
	ori $12, $0 , 0
	nop 
	nop 
	sw $31, 44($12)
	ori $13, $0 , 0
	nop 
	nop 
	lb $12, 31($13)
	addi $12, $3 , -5279
	sltu $0 , $31, $13
	ori $3 , $31, 11931
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 3166
	lui $14, 58890
	lui $20, 46527
	lui $25, 17418
	lui $31, 16753
	ori $25, $0 , 0
	nop 
	nop 
	lw $25, 40($25)
	beq $31, $0 , case_6_1
	andi $20, $20, 21543
	addi $20, $20, 2856
case_6_1:
	slt $14, $14, $25
	addi $0 , $0 , 5868
	ori $20, $0 , 0
	nop 
	sh $25, 16($20)
	ori $25, $0 , 0
	nop 
	nop 
	lh $20, 28($25)
	ori $20, $20, 4333
	beq $31, $31, case_6_2
	add $25, $20, $20
	sub $25, $14, $0 
case_6_2:
	ori $25, $0 , 0
	lh $20, 8($25)
	beq $20, $31, case_6_3
	addi $25, $25, -25419
	sub $14, $20, $0 
case_6_3:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 63728
	lui $8 , 56107
	lui $13, 17138
	lui $26, 16127
	lui $31, 58237
	ori $31, $0 , 0
	lb $26, 15($31)
	ori $13, $0 , 0
	nop 
	nop 
	sh $8 , 88($13)
	ori $0 , $31, 52960
	addi $0 , $8 , 17015
	ori $31, $13, 39007
	slt $31, $26, $31
	bne $8 , $8 , case_7_1
	addi $13, $8 , -554
	ori $13, $0 , 0
	nop 
	sb $8 , 59($13)
case_7_1:
	addi $13, $26, -23265
	sub $26, $31, $31
	addi $26, $0 , 16332
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 5547
	lui $6 , 8955
	lui $23, 60439
	lui $29, 14993
	lui $31, 56605
	or $6 , $31, $29
	beq $29, $6 , case_8_1
	sltu $31, $23, $0 
	ori $29, $0 , 0
	nop 
	lh $29, 32($29)
case_8_1:
	addi $6 , $31, 21309
	jal case_8_2
	sltu $0 , $29, $29
	ori $0 , $0 , 0
	nop 
	nop 
	sh $31, 28($0)
	jal case_8_3
	ori $6 , $29, 58750
	ori $23, $29, 65146
case_8_2:
	ori $29, $0 , 0
	nop 
	sh $23, 56($29)
	ori $29, $0 , 0
	lh $0 , 18($29)
	jr $31
	ori $31, $0 , 0
	sb $23, 44($31)
case_8_3:
	jal case_8_4
	slt $29, $23, $0 
	addi $23, $6 , 3214
	jal case_8_5
	addi $23, $23, -16082
	ori $31, $0 , 0
	nop 
	nop 
	sh $23, 68($31)
case_8_4:
	ori $23, $0 , 43539
	ori $0 , $0 , 0
	nop 
	sb $29, 19($0)
	jr $31
	andi $6 , $6 , 64627
case_8_5:
	jal case_8_6
	addi $29, $0 , -18290
	ori $31, $0 , 7291
	jal case_8_7
	addi $0 , $0 , -3428
	add $6 , $6 , $0 
case_8_6:
	ori $6 , $0 , 0
	nop 
	nop 
	lw $29, 80($6)
	slt $23, $0 , $6 
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	sw $23, 8($0)
case_8_7:
	ori $31, $0 , 0
	sb $31, 13($31)
	sub $0 , $23, $0 
	slt $0 , $0 , $29
	jal case_8_8
	addi $29, $29, -3269
	ori $6 , $0 , 0
	nop 
	sb $23, 28($6)
	jal case_8_9
	addi $23, $0 , 10110
	ori $0 , $0 , 0
	sb $29, 11($0)
case_8_8:
	addi $23, $6 , 24342
	addi $6 , $23, 30168
	jr $31
	addi $6 , $23, -25946
case_8_9:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 13557
	lui $5 , 42853
	lui $25, 21157
	lui $30, 54727
	lui $31, 46141
	ori $0 , $0 , 0
	sb $31, 62($0)
	sltu $25, $31, $25
	bne $0 , $5 , case_9_1
	and $31, $5 , $0 
	ori $25, $0 , 0
	lw $25, 20($25)
case_9_1:
	addi $25, $5 , -18369
	ori $5 , $0 , 0
	lw $31, 4($5)
	ori $5 , $0 , 0
	nop 
	nop 
	lh $25, 80($5)
	ori $25, $0 , 0
	sb $30, 73($25)
	ori $30, $5 , 19116
	andi $31, $5 , 29454
	ori $5 , $0 , 0
	nop 
	nop 
	lh $30, 24($5)
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 47608
	lui $2 , 53056
	lui $8 , 60165
	lui $26, 61809
	lui $31, 34640
	jal case_10_1
	addi $2 , $2 , -31548
	ori $2 , $0 , 0
	nop 
	lw $31, 28($2)
	jal case_10_2
	add $2 , $26, $8 
	sltu $2 , $0 , $2 
case_10_1:
	ori $26, $26, 55687
	addi $0 , $0 , 14740
	jr $31
	addi $8 , $8 , 22231
case_10_2:
	or $8 , $31, $26
	or $0 , $2 , $31
	ori $8 , $0 , 0
	nop 
	lw $0 , 60($8)
	ori $0 , $0 , 0
	lb $2 , 35($0)
	beq $8 , $8 , case_10_3
	ori $8 , $8 , 43658
	andi $8 , $31, 13593
case_10_3:
	ori $0 , $0 , 0
	nop 
	lb $8 , 45($0)
	ori $8 , $0 , 9206
	addi $2 , $31, -12179
	bne $0 , $8 , case_10_4
	andi $0 , $0 , 46176
	ori $8 , $0 , 0
	nop 
	sh $0 , 12($8)
case_10_4:
	lui $1 , 0
case_10_end:
