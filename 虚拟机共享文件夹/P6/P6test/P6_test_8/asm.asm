.text
case_1_begin:
	lui $0 , 42263
	lui $5 , 29547
	lui $11, 22563
	lui $18, 19635
	lui $31, 49456
	or $31, $5 , $18
	andi $11, $18, 7763
	bne $0 , $11, case_1_1
	addi $11, $5 , 19032
	addi $11, $11, -2042
case_1_1:
	addi $31, $31, -11885
	ori $31, $0 , 0
	nop 
	nop 
	sb $0 , 76($31)
	sub $11, $11, $31
	or $0 , $18, $0 
	ori $5 , $31, 13830
	ori $18, $0 , 0
	nop 
	nop 
	lw $18, 88($18)
	sub $0 , $11, $31
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 34816
	lui $7 , 28694
	lui $9 , 29609
	lui $20, 18849
	lui $31, 29145
	jal case_2_1
	sltu $20, $7 , $9 
	and $31, $0 , $9 
	jal case_2_2
	ori $20, $0 , 47867
	ori $0 , $0 , 0
	nop 
	nop 
	lb $31, 50($0)
case_2_1:
	add $7 , $0 , $20
	ori $20, $0 , 0
	nop 
	nop 
	sw $9 , 32($20)
	jr $31
	add $31, $20, $20
case_2_2:
	beq $7 , $0 , case_2_3
	ori $7 , $9 , 3231
	ori $0 , $0 , 0
	nop 
	nop 
	lw $7 , 28($0)
case_2_3:
	bne $20, $0 , case_2_4
	ori $0 , $0 , 3280
	ori $9 , $0 , 0
	nop 
	nop 
	sw $7 , 4($9)
case_2_4:
	ori $20, $0 , 0
	nop 
	nop 
	lh $31, 2($20)
	jal case_2_5
	andi $9 , $20, 24083
	ori $31, $0 , 0
	sw $31, 96($31)
	jal case_2_6
	addi $20, $0 , -2186
	addi $31, $31, -19202
case_2_5:
	slt $20, $20, $20
	addi $20, $20, 17307
	jr $31
	ori $9 , $0 , 0
	nop 
	nop 
	sb $9 , 15($9)
case_2_6:
	add $0 , $9 , $9 
	sltu $20, $9 , $7 
	addi $31, $0 , 29736
	ori $9 , $0 , 0
	nop 
	nop 
	sb $0 , 62($9)
	sltu $0 , $7 , $0 
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 15556
	lui $4 , 8952
	lui $7 , 55242
	lui $23, 53245
	lui $31, 61269
	slt $31, $7 , $4 
	sltu $23, $4 , $0 
	beq $4 , $23, case_3_1
	ori $23, $31, 34110
	ori $0 , $0 , 0
	sw $23, 28($0)
case_3_1:
	bne $23, $0 , case_3_2
	andi $4 , $31, 9961
	andi $31, $31, 24369
case_3_2:
	and $0 , $31, $31
	beq $23, $31, case_3_3
	addi $23, $31, -21089
	ori $23, $0 , 0
	nop 
	nop 
	lh $4 , 64($23)
case_3_3:
	jal case_3_4
	andi $7 , $7 , 52291
	ori $31, $31, 17765
	jal case_3_5
	addi $4 , $7 , 15644
	addi $7 , $4 , -23014
case_3_4:
	ori $0 , $0 , 0
	lw $23, 88($0)
	sltu $0 , $0 , $23
	jr $31
	addi $31, $0 , 32387
case_3_5:
	add $4 , $31, $23
	ori $0 , $0 , 0
	nop 
	nop 
	sw $0 , 92($0)
	or $4 , $23, $23
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 18407
	lui $7 , 57565
	lui $8 , 63801
	lui $14, 49414
	lui $31, 43910
	bne $8 , $14, case_4_1
	andi $31, $7 , 15052
	ori $0 , $0 , 0
	nop 
	lw $7 , 20($0)
case_4_1:
	addi $0 , $14, -31573
	beq $7 , $0 , case_4_2
	andi $7 , $14, 9674
	ori $31, $0 , 0
	sw $14, 40($31)
case_4_2:
	andi $7 , $0 , 42061
	beq $31, $14, case_4_3
	sub $8 , $7 , $31
	add $31, $31, $7 
case_4_3:
	beq $14, $31, case_4_4
	andi $8 , $7 , 47132
	slt $8 , $0 , $7 
case_4_4:
	or $14, $8 , $31
	ori $14, $0 , 0
	nop 
	nop 
	lh $14, 88($14)
	ori $0 , $0 , 0
	nop 
	lh $0 , 44($0)
	beq $7 , $8 , case_4_5
	sub $31, $14, $8 
	ori $0 , $14, 48657
case_4_5:
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 8594
	lui $28, 57139
	lui $29, 62771
	lui $30, 43754
	lui $31, 47620
	beq $30, $0 , case_5_1
	addi $0 , $28, 26470
	ori $31, $0 , 39543
case_5_1:
	ori $28, $0 , 0
	nop 
	sh $31, 28($28)
	jal case_5_2
	slt $30, $29, $0 
	addi $30, $31, -12851
	jal case_5_3
	addi $30, $29, -27701
	andi $29, $0 , 45786
case_5_2:
	ori $29, $0 , 0
	lb $30, 55($29)
	ori $29, $0 , 0
	nop 
	lw $28, 24($29)
	jr $31
	ori $29, $0 , 0
	nop 
	nop 
	lw $29, 16($29)
case_5_3:
	ori $29, $0 , 0
	nop 
	sb $28, 15($29)
	jal case_5_4
	sub $29, $28, $30
	ori $30, $0 , 0
	nop 
	nop 
	lb $30, 63($30)
	jal case_5_5
	andi $29, $31, 10633
	ori $29, $0 , 0
	sh $0 , 22($29)
case_5_4:
	ori $29, $0 , 0
	nop 
	nop 
	sh $29, 78($29)
	ori $29, $0 , 0
	sb $30, 18($29)
	jr $31
	addi $31, $29, -13543
case_5_5:
	or $28, $28, $28
	ori $29, $0 , 0
	nop 
	nop 
	lh $29, 66($29)
	addi $0 , $31, -22290
	ori $0 , $0 , 0
	nop 
	nop 
	lw $29, 80($0)
	jal case_5_6
	addi $29, $28, 25431
	ori $31, $0 , 0
	nop 
	sb $29, 14($31)
	jal case_5_7
	ori $0 , $0 , 15698
	andi $29, $31, 895
case_5_6:
	ori $28, $0 , 0
	nop 
	sh $30, 82($28)
	addi $0 , $29, 30426
	jr $31
	addi $29, $28, 7666
case_5_7:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 3890
	lui $8 , 63312
	lui $10, 30094
	lui $19, 18155
	lui $31, 53346
	ori $8 , $0 , 0
	nop 
	sw $10, 52($8)
	ori $19, $0 , 0
	nop 
	lh $19, 62($19)
	jal case_6_1
	ori $0 , $0 , 15330
	ori $10, $0 , 0
	nop 
	sw $10, 84($10)
	jal case_6_2
	addi $8 , $10, -20972
	ori $0 , $0 , 0
	nop 
	lh $10, 48($0)
case_6_1:
	andi $0 , $10, 15565
	ori $19, $0 , 0
	nop 
	nop 
	sh $19, 44($19)
	jr $31
	addi $19, $19, -1215
case_6_2:
	addi $0 , $8 , -31152
	andi $10, $8 , 63848
	or $8 , $10, $19
	bne $19, $19, case_6_3
	ori $10, $0 , 20989
	ori $10, $0 , 0
	sb $19, 14($10)
case_6_3:
	ori $31, $0 , 0
	nop 
	nop 
	lw $19, 72($31)
	ori $8 , $8 , 64261
	andi $31, $19, 58794
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 33846
	lui $9 , 27617
	lui $22, 65132
	lui $23, 45105
	lui $31, 60411
	andi $23, $23, 42214
	addi $9 , $22, -31930
	jal case_7_1
	andi $0 , $9 , 57311
	ori $0 , $0 , 0
	sw $31, 88($0)
	jal case_7_2
	andi $9 , $0 , 27274
	ori $23, $0 , 0
	nop 
	lw $9 , 12($23)
case_7_1:
	ori $23, $0 , 0
	nop 
	lw $9 , 88($23)
	ori $0 , $0 , 0
	nop 
	nop 
	lb $9 , 23($0)
	jr $31
	ori $0 , $0 , 40627
case_7_2:
	ori $31, $0 , 0
	nop 
	lh $0 , 8($31)
	addi $31, $0 , 8351
	jal case_7_3
	add $0 , $22, $0 
	add $0 , $31, $22
	jal case_7_4
	or $31, $23, $0 
	ori $0 , $0 , 0
	lw $22, 92($0)
case_7_3:
	addi $22, $23, -10211
	andi $0 , $0 , 64903
	jr $31
	or $22, $9 , $23
case_7_4:
	beq $23, $31, case_7_5
	slt $23, $23, $0 
	ori $0 , $0 , 0
	nop 
	nop 
	sh $31, 22($0)
case_7_5:
	addi $9 , $22, 21188
	beq $0 , $9 , case_7_6
	ori $23, $0 , 60330
	ori $31, $0 , 0
	nop 
	lb $9 , 82($31)
case_7_6:
	jal case_7_7
	andi $9 , $23, 40464
	ori $9 , $0 , 0
	sw $9 , 16($9)
	jal case_7_8
	ori $23, $9 , 1793
	ori $0 , $0 , 0
	nop 
	lw $9 , 0($0)
case_7_7:
	andi $0 , $9 , 62473
	slt $9 , $23, $23
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	sb $22, 33($31)
case_7_8:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 36180
	lui $4 , 13947
	lui $11, 16062
	lui $21, 30215
	lui $31, 53478
	ori $11, $0 , 0
	sh $31, 12($11)
	bne $4 , $21, case_8_1
	addi $21, $0 , -18436
	andi $21, $31, 41439
case_8_1:
	jal case_8_2
	ori $11, $0 , 8532
	ori $21, $0 , 0
	lw $4 , 76($21)
	jal case_8_3
	andi $4 , $0 , 4397
	ori $31, $0 , 0
	nop 
	sb $0 , 44($31)
case_8_2:
	slt $0 , $21, $11
	ori $4 , $0 , 0
	nop 
	lh $4 , 66($4)
	jr $31
	ori $11, $0 , 0
	nop 
	lh $21, 50($11)
case_8_3:
	sub $21, $21, $4 
	jal case_8_4
	sub $11, $21, $4 
	ori $0 , $0 , 0
	nop 
	nop 
	lb $21, 7($0)
	jal case_8_5
	ori $0 , $21, 34545
	slt $0 , $31, $4 
case_8_4:
	ori $11, $0 , 0
	sb $21, 40($11)
	addi $4 , $11, 6052
	jr $31
	ori $4 , $0 , 0
	nop 
	lb $31, 40($4)
case_8_5:
	beq $4 , $4 , case_8_6
	ori $4 , $0 , 35323
	ori $0 , $0 , 0
	lb $0 , 30($0)
case_8_6:
	jal case_8_7
	ori $4 , $0 , 19521
	and $4 , $4 , $4 
	jal case_8_8
	and $0 , $11, $0 
	andi $21, $0 , 44297
case_8_7:
	or $4 , $11, $11
	ori $0 , $0 , 0
	nop 
	lb $0 , 63($0)
	jr $31
	and $21, $31, $4 
case_8_8:
	addi $0 , $0 , -15071
	ori $0 , $0 , 0
	lw $4 , 36($0)
	addi $0 , $4 , -20952
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 63990
	lui $10, 40899
	lui $14, 30497
	lui $21, 34693
	lui $31, 56801
	bne $14, $10, case_9_1
	sltu $10, $14, $0 
	andi $10, $10, 12577
case_9_1:
	addi $31, $10, -10895
	add $10, $31, $0 
	jal case_9_2
	addi $21, $0 , 20398
	ori $14, $0 , 0
	nop 
	sw $31, 64($14)
	jal case_9_3
	addi $21, $31, -8906
	ori $10, $0 , 0
	lh $14, 86($10)
case_9_2:
	or $10, $10, $21
	sub $21, $0 , $14
	jr $31
	ori $21, $10, 6095
case_9_3:
	bne $10, $21, case_9_4
	andi $21, $14, 121
	ori $0 , $0 , 0
	lb $10, 11($0)
case_9_4:
	bne $10, $21, case_9_5
	add $0 , $0 , $31
	ori $14, $10, 41316
case_9_5:
	ori $21, $21, 63971
	ori $10, $21, 40411
	beq $21, $0 , case_9_6
	addi $0 , $31, 26644
	addi $10, $10, -10080
case_9_6:
	addi $21, $0 , -16340
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 51523
	lui $4 , 51591
	lui $18, 65175
	lui $19, 59706
	lui $31, 52331
	jal case_10_1
	add $0 , $19, $4 
	addi $31, $31, -10511
	jal case_10_2
	sltu $19, $19, $31
	and $19, $18, $4 
case_10_1:
	addi $0 , $0 , -2388
	sub $18, $18, $19
	jr $31
	addi $4 , $19, -17447
case_10_2:
	ori $19, $0 , 0
	lb $31, 95($19)
	beq $18, $4 , case_10_3
	ori $4 , $19, 43267
	addi $19, $4 , 3196
case_10_3:
	andi $4 , $18, 15871
	sltu $19, $31, $19
	slt $31, $31, $4 
	ori $18, $0 , 0
	nop 
	nop 
	sb $19, 92($18)
	or $19, $4 , $18
	ori $19, $0 , 0
	nop 
	nop 
	sw $31, 32($19)
	sub $19, $18, $0 
	lui $1 , 0
case_10_end:
