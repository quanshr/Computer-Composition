.text
case_1_begin:
	lui $0 , 58932
	lui $3 , 61171
	lui $11, 19381
	lui $23, 1952
	lui $31, 3438
	addi $0 , $11, -16465
	ori $11, $0 , 0
	nop 
	lb $3 , 64($11)
	sltu $11, $0 , $11
	beq $3 , $31, case_1_1
	addi $3 , $23, 25879
	or $11, $23, $23
case_1_1:
	slt $11, $23, $23
	bne $23, $23, case_1_2
	addi $3 , $11, -7411
	andi $0 , $23, 61691
case_1_2:
	addi $31, $31, 868
	addi $11, $3 , 7718
	add $3 , $0 , $3 
	andi $3 , $3 , 2949
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 51580
	lui $8 , 54623
	lui $10, 54654
	lui $20, 64984
	lui $31, 712
	and $8 , $10, $10
	andi $20, $0 , 31123
	andi $20, $31, 9653
	ori $31, $0 , 0
	lh $20, 78($31)
	andi $0 , $20, 19426
	jal case_2_1
	addi $10, $20, 7146
	ori $8 , $0 , 0
	nop 
	nop 
	lw $20, 80($8)
	jal case_2_2
	ori $0 , $10, 32792
	ori $31, $0 , 0
	nop 
	lb $8 , 97($31)
case_2_1:
	slt $10, $0 , $20
	ori $10, $0 , 0
	nop 
	nop 
	sh $8 , 88($10)
	jr $31
	addi $8 , $0 , -25398
case_2_2:
	ori $20, $0 , 0
	lb $0 , 12($20)
	or $31, $20, $20
	beq $20, $10, case_2_3
	sltu $0 , $8 , $31
	addi $31, $31, 3670
case_2_3:
	ori $0 , $0 , 0
	nop 
	nop 
	lh $31, 12($0)
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 41707
	lui $10, 20203
	lui $14, 51083
	lui $30, 58179
	lui $31, 40007
	ori $14, $0 , 0
	nop 
	nop 
	lb $0 , 35($14)
	ori $30, $0 , 0
	lw $30, 60($30)
	bne $14, $0 , case_3_1
	slt $0 , $14, $30
	ori $31, $0 , 0
	sb $14, 10($31)
case_3_1:
	bne $30, $10, case_3_2
	add $31, $31, $14
	ori $14, $0 , 0
	nop 
	nop 
	lw $31, 40($14)
case_3_2:
	ori $30, $0 , 0
	nop 
	nop 
	lw $30, 4($30)
	bne $30, $0 , case_3_3
	sltu $0 , $31, $14
	andi $0 , $31, 53590
case_3_3:
	ori $14, $0 , 0
	lw $10, 12($14)
	beq $31, $0 , case_3_4
	addi $30, $30, 10289
	ori $30, $0 , 0
	nop 
	nop 
	sh $10, 58($30)
case_3_4:
	ori $31, $0 , 0
	sh $10, 32($31)
	jal case_3_5
	sub $30, $30, $14
	ori $30, $0 , 0
	sw $10, 68($30)
	jal case_3_6
	addi $30, $14, -10683
	ori $30, $0 , 0
	nop 
	nop 
	sb $30, 62($30)
case_3_5:
	addi $0 , $10, 16621
	ori $14, $0 , 0
	nop 
	nop 
	lb $0 , 92($14)
	jr $31
	and $14, $0 , $14
case_3_6:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 20834
	lui $4 , 54325
	lui $9 , 50471
	lui $30, 58808
	lui $31, 48053
	jal case_4_1
	addi $30, $9 , -21545
	ori $0 , $9 , 146
	jal case_4_2
	sub $31, $0 , $30
	sub $9 , $30, $9 
case_4_1:
	addi $9 , $0 , -2088
	ori $4 , $0 , 0
	nop 
	nop 
	sb $0 , 35($4)
	jr $31
	ori $31, $30, 14797
case_4_2:
	ori $4 , $0 , 0
	lw $30, 28($4)
	ori $9 , $0 , 0
	nop 
	nop 
	lb $0 , 22($9)
	ori $31, $0 , 0
	nop 
	nop 
	sb $31, 81($31)
	bne $0 , $31, case_4_3
	andi $4 , $9 , 18692
	addi $4 , $0 , -8697
case_4_3:
	bne $30, $30, case_4_4
	ori $9 , $9 , 1124
	ori $4 , $0 , 0
	nop 
	nop 
	sh $31, 88($4)
case_4_4:
	ori $31, $0 , 0
	nop 
	nop 
	sw $0 , 48($31)
	andi $4 , $30, 21082
	ori $4 , $0 , 0
	nop 
	nop 
	sb $0 , 30($4)
	jal case_4_5
	slt $4 , $30, $9 
	ori $30, $0 , 0
	lw $9 , 92($30)
	jal case_4_6
	addi $9 , $31, 26605
	slt $9 , $0 , $30
case_4_5:
	ori $4 , $0 , 0
	lb $9 , 51($4)
	ori $9 , $0 , 0
	lb $0 , 14($9)
	jr $31
	ori $4 , $0 , 0
	nop 
	lb $0 , 13($4)
case_4_6:
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 61243
	lui $15, 65187
	lui $21, 52920
	lui $25, 28197
	lui $31, 43019
	ori $25, $25, 16834
	ori $0 , $0 , 0
	nop 
	sh $25, 32($0)
	ori $21, $0 , 0
	nop 
	nop 
	sh $31, 46($21)
	beq $15, $31, case_5_1
	ori $15, $25, 27218
	andi $15, $21, 52872
case_5_1:
	beq $25, $25, case_5_2
	and $25, $0 , $25
	addi $0 , $21, 6497
case_5_2:
	ori $21, $0 , 61555
	andi $21, $31, 12621
	bne $31, $31, case_5_3
	andi $31, $31, 9869
	ori $25, $31, 65098
case_5_3:
	bne $21, $25, case_5_4
	sltu $31, $25, $0 
	ori $15, $0 , 0
	nop 
	lh $31, 68($15)
case_5_4:
	ori $15, $0 , 0
	lh $0 , 56($15)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 51105
	lui $17, 35315
	lui $19, 43751
	lui $21, 36837
	lui $31, 34508
	slt $19, $19, $31
	slt $17, $19, $31
	add $21, $17, $21
	ori $0 , $0 , 0
	nop 
	nop 
	lb $19, 52($0)
	ori $0 , $19, 12390
	ori $17, $0 , 0
	nop 
	lw $0 , 28($17)
	sub $19, $21, $0 
	ori $17, $0 , 0
	nop 
	lw $0 , 4($17)
	ori $31, $0 , 0
	nop 
	sh $21, 6($31)
	ori $19, $17, 55867
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 41103
	lui $23, 50662
	lui $26, 37488
	lui $27, 207
	lui $31, 41576
	ori $23, $0 , 0
	nop 
	lb $27, 92($23)
	ori $27, $31, 53652
	sub $31, $31, $0 
	addi $23, $23, 25090
	ori $27, $0 , 0
	nop 
	sb $27, 65($27)
	ori $0 , $0 , 0
	nop 
	sh $0 , 4($0)
	sltu $26, $31, $31
	bne $31, $27, case_7_1
	ori $26, $31, 57672
	ori $27, $26, 57146
case_7_1:
	addi $26, $0 , -32666
	addi $0 , $0 , 19541
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 21681
	lui $3 , 15677
	lui $4 , 1053
	lui $16, 8160
	lui $31, 57594
	addi $4 , $4 , -9696
	ori $0 , $0 , 50534
	add $0 , $16, $16
	andi $16, $31, 19903
	ori $31, $0 , 4136
	jal case_8_1
	ori $4 , $4 , 7163
	ori $31, $0 , 0
	nop 
	nop 
	sb $0 , 52($31)
	jal case_8_2
	addi $16, $3 , -31614
	ori $4 , $0 , 0
	nop 
	nop 
	sh $3 , 40($4)
case_8_1:
	addi $0 , $3 , -32069
	ori $16, $0 , 0
	lb $3 , 96($16)
	jr $31
	ori $31, $0 , 0
	nop 
	sb $31, 51($31)
case_8_2:
	addi $16, $31, 22497
	bne $3 , $16, case_8_3
	sub $16, $3 , $16
	andi $16, $31, 1447
case_8_3:
	addi $0 , $3 , -20838
	ori $16, $16, 63896
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 20523
	lui $10, 41711
	lui $14, 12098
	lui $23, 35558
	lui $31, 46441
	addi $0 , $23, -30795
	ori $31, $23, 51357
	beq $23, $10, case_9_1
	andi $0 , $0 , 59749
	ori $0 , $0 , 0
	nop 
	lb $0 , 45($0)
case_9_1:
	ori $0 , $0 , 0
	nop 
	lb $31, 80($0)
	ori $31, $23, 6727
	jal case_9_2
	addi $0 , $0 , 7268
	ori $23, $0 , 0
	nop 
	nop 
	sw $31, 28($23)
	jal case_9_3
	addi $23, $23, -10669
	ori $0 , $0 , 0
	lw $31, 20($0)
case_9_2:
	ori $10, $23, 35671
	andi $14, $0 , 21809
	jr $31
	sub $23, $31, $14
case_9_3:
	jal case_9_4
	addi $0 , $0 , -11827
	ori $10, $0 , 0
	nop 
	lw $23, 12($10)
	jal case_9_5
	addi $10, $0 , -19616
	ori $31, $14, 14352
case_9_4:
	ori $14, $0 , 0
	nop 
	nop 
	sw $0 , 96($14)
	ori $0 , $0 , 0
	nop 
	nop 
	lb $14, 99($0)
	jr $31
	addi $23, $0 , -9697
case_9_5:
	ori $14, $0 , 60671
	ori $0 , $0 , 0
	sw $10, 24($0)
	jal case_9_6
	addi $0 , $0 , -4217
	ori $14, $0 , 0
	nop 
	sb $14, 34($14)
	jal case_9_7
	andi $31, $31, 8506
	sltu $31, $10, $10
case_9_6:
	ori $10, $0 , 0
	sb $14, 62($10)
	or $14, $23, $0 
	jr $31
	addi $23, $14, -23416
case_9_7:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 58962
	lui $2 , 61123
	lui $24, 47249
	lui $27, 28404
	lui $31, 23495
	addi $0 , $2 , 16278
	bne $27, $24, case_10_1
	addi $2 , $0 , -4540
	ori $2 , $0 , 0
	sh $24, 0($2)
case_10_1:
	ori $0 , $0 , 0
	nop 
	nop 
	sw $31, 56($0)
	sltu $2 , $24, $24
	beq $0 , $27, case_10_2
	ori $2 , $31, 11864
	addi $27, $24, -12149
case_10_2:
	beq $2 , $2 , case_10_3
	addi $0 , $2 , -14760
	andi $0 , $31, 7438
case_10_3:
	ori $0 , $0 , 0
	nop 
	lw $31, 52($0)
	ori $31, $0 , 0
	nop 
	lw $0 , 60($31)
	ori $27, $2 , 11246
	ori $2 , $0 , 0
	nop 
	sh $27, 68($2)
	lui $1 , 0
case_10_end:
