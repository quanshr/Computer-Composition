.text
case_1_begin:
	lui $0 , 24903
	lui $11, 377
	lui $27, 2258
	lui $28, 4439
	lui $31, 61718
	jal case_1_1
	add $28, $28, $0 
	and $27, $31, $27
	jal case_1_2
	and $11, $0 , $11
	ori $0 , $0 , 0
	nop 
	lb $11, 15($0)
case_1_1:
	and $0 , $11, $11
	ori $11, $0 , 0
	lh $11, 32($11)
	jr $31
	slt $27, $27, $11
case_1_2:
	slt $27, $27, $27
	addi $27, $27, -30178
	addi $28, $31, 8788
	ori $27, $0 , 0
	lh $31, 70($27)
	jal case_1_3
	sub $27, $0 , $0 
	slt $31, $27, $0 
	jal case_1_4
	addi $0 , $27, 23017
	andi $0 , $31, 30232
case_1_3:
	sltu $28, $27, $0 
	ori $0 , $0 , 0
	lh $11, 74($0)
	jr $31
	addi $28, $31, 11695
case_1_4:
	ori $31, $0 , 0
	nop 
	nop 
	sh $27, 84($31)
	ori $27, $11, 39073
	bne $0 , $31, case_1_5
	andi $27, $27, 16378
	ori $28, $0 , 0
	nop 
	nop 
	sh $27, 56($28)
case_1_5:
	bne $27, $27, case_1_6
	slt $31, $28, $28
	ori $0 , $0 , 0
	lh $27, 58($0)
case_1_6:
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 6738
	lui $9 , 32371
	lui $18, 16442
	lui $22, 44008
	lui $31, 6765
	jal case_2_1
	andi $22, $22, 19283
	ori $18, $0 , 0
	nop 
	lw $31, 8($18)
	jal case_2_2
	addi $22, $18, -6494
	and $18, $31, $18
case_2_1:
	ori $0 , $0 , 0
	nop 
	nop 
	lw $18, 76($0)
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 28($0)
	jr $31
	and $9 , $18, $31
case_2_2:
	ori $0 , $0 , 0
	nop 
	sh $18, 80($0)
	ori $0 , $0 , 0
	sb $22, 71($0)
	ori $9 , $0 , 0
	nop 
	nop 
	lw $22, 48($9)
	ori $18, $0 , 0
	nop 
	nop 
	sb $22, 75($18)
	ori $31, $0 , 0
	nop 
	nop 
	lb $22, 79($31)
	jal case_2_3
	ori $22, $22, 43722
	ori $9 , $31, 17546
	jal case_2_4
	and $9 , $18, $9 
	sltu $0 , $0 , $18
case_2_3:
	ori $0 , $0 , 0
	nop 
	sw $0 , 12($0)
	ori $0 , $22, 62749
	jr $31
	sub $18, $9 , $18
case_2_4:
	addi $0 , $22, 10802
	ori $31, $0 , 0
	lh $31, 48($31)
	ori $18, $0 , 0
	nop 
	lw $22, 56($18)
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 4023
	lui $3 , 9880
	lui $7 , 2983
	lui $10, 7122
	lui $31, 29009
	andi $10, $3 , 42266
	addi $3 , $31, -13619
	sub $10, $31, $3 
	jal case_3_1
	andi $7 , $3 , 52487
	slt $31, $0 , $10
	jal case_3_2
	andi $31, $31, 43186
	sltu $10, $3 , $10
case_3_1:
	ori $10, $0 , 0
	nop 
	nop 
	lh $3 , 56($10)
	ori $10, $0 , 0
	lh $10, 38($10)
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	lh $0 , 24($31)
case_3_2:
	addi $31, $10, -25864
	addi $7 , $7 , -7956
	ori $10, $0 , 0
	nop 
	nop 
	lb $10, 57($10)
	ori $10, $0 , 0
	nop 
	nop 
	sw $7 , 84($10)
	jal case_3_3
	addi $10, $0 , 12003
	or $3 , $0 , $10
	jal case_3_4
	addi $10, $7 , 23894
	ori $31, $0 , 0
	sb $10, 22($31)
case_3_3:
	ori $10, $0 , 0
	nop 
	sb $0 , 2($10)
	add $10, $10, $3 
	jr $31
	ori $3 , $0 , 0
	lh $31, 34($3)
case_3_4:
	ori $0 , $0 , 0
	nop 
	lb $0 , 55($0)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 43912
	lui $5 , 40086
	lui $15, 65005
	lui $18, 9749
	lui $31, 19589
	bne $15, $15, case_4_1
	and $5 , $15, $15
	ori $15, $0 , 0
	lh $15, 10($15)
case_4_1:
	sltu $5 , $31, $31
	ori $0 , $5 , 21172
	beq $5 , $5 , case_4_2
	addi $15, $31, -27962
	sltu $18, $31, $31
case_4_2:
	jal case_4_3
	add $18, $18, $15
	andi $5 , $5 , 58916
	jal case_4_4
	sub $18, $15, $15
	and $0 , $31, $31
case_4_3:
	sltu $0 , $15, $5 
	andi $18, $15, 13170
	jr $31
	ori $31, $15, 41842
case_4_4:
	andi $15, $31, 22878
	or $31, $15, $0 
	addi $0 , $15, 241
	andi $0 , $31, 4586
	ori $15, $0 , 0
	sb $15, 62($15)
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 13709
	lui $3 , 49822
	lui $18, 47771
	lui $20, 3124
	lui $31, 47799
	ori $18, $0 , 0
	nop 
	sb $31, 80($18)
	ori $0 , $0 , 0
	lb $0 , 75($0)
	bne $0 , $0 , case_5_1
	ori $18, $0 , 60207
	andi $0 , $0 , 35018
case_5_1:
	beq $20, $31, case_5_2
	addi $3 , $0 , -24119
	ori $18, $0 , 0
	nop 
	nop 
	lw $31, 16($18)
case_5_2:
	ori $18, $20, 61847
	add $31, $31, $18
	addi $31, $0 , -7382
	ori $0 , $0 , 0
	nop 
	nop 
	sb $0 , 83($0)
	bne $20, $3 , case_5_3
	and $20, $3 , $0 
	andi $3 , $0 , 43834
case_5_3:
	ori $18, $0 , 0
	nop 
	nop 
	sb $18, 20($18)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 18162
	lui $9 , 1638
	lui $17, 16293
	lui $19, 47627
	lui $31, 50133
	ori $9 , $0 , 0
	sh $9 , 22($9)
	beq $17, $0 , case_6_1
	and $17, $9 , $31
	addi $0 , $0 , -11079
case_6_1:
	ori $31, $0 , 0
	nop 
	nop 
	lw $17, 96($31)
	bne $17, $0 , case_6_2
	slt $9 , $0 , $19
	ori $19, $0 , 0
	nop 
	nop 
	lh $9 , 72($19)
case_6_2:
	add $19, $0 , $9 
	sub $17, $0 , $31
	jal case_6_3
	addi $0 , $9 , -27672
	ori $17, $0 , 0
	nop 
	sh $17, 90($17)
	jal case_6_4
	addi $17, $17, -10029
	addi $9 , $17, 19627
case_6_3:
	ori $17, $0 , 0
	lb $17, 43($17)
	add $17, $19, $0 
	jr $31
	andi $0 , $17, 8139
case_6_4:
	ori $19, $0 , 0
	nop 
	nop 
	sw $0 , 72($19)
	beq $31, $31, case_6_5
	ori $31, $31, 62423
	ori $9 , $0 , 0
	lb $0 , 99($9)
case_6_5:
	beq $9 , $31, case_6_6
	or $19, $9 , $31
	ori $17, $0 , 0
	sw $17, 40($17)
case_6_6:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 50697
	lui $18, 56768
	lui $29, 59117
	lui $30, 25037
	lui $31, 5343
	andi $18, $29, 4791
	addi $18, $31, -3863
	ori $30, $0 , 0
	nop 
	nop 
	lw $30, 84($30)
	addi $30, $18, -3919
	ori $30, $0 , 0
	nop 
	sb $18, 92($30)
	andi $29, $31, 15585
	or $18, $18, $31
	ori $31, $0 , 0
	nop 
	nop 
	sh $0 , 40($31)
	ori $30, $0 , 0
	sh $18, 64($30)
	andi $0 , $18, 1774
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 19009
	lui $5 , 17262
	lui $22, 37754
	lui $25, 42714
	lui $31, 35472
	ori $5 , $0 , 0
	nop 
	sw $0 , 56($5)
	ori $25, $0 , 0
	lb $0 , 51($25)
	jal case_8_1
	and $22, $0 , $0 
	ori $31, $25, 21930
	jal case_8_2
	addi $22, $5 , 27524
	ori $0 , $0 , 0
	sb $25, 98($0)
case_8_1:
	addi $22, $22, 17238
	addi $0 , $25, -21370
	jr $31
	addi $22, $5 , -27988
case_8_2:
	ori $22, $0 , 0
	lh $5 , 12($22)
	add $25, $25, $0 
	bne $0 , $0 , case_8_3
	sub $0 , $5 , $5 
	andi $25, $31, 62640
case_8_3:
	ori $22, $0 , 0
	nop 
	nop 
	sh $22, 42($22)
	sltu $31, $22, $25
	beq $0 , $5 , case_8_4
	ori $25, $5 , 36880
	slt $0 , $31, $22
case_8_4:
	addi $31, $5 , -7829
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 10149
	lui $10, 20492
	lui $14, 39155
	lui $20, 19539
	lui $31, 56829
	addi $20, $14, 2435
	ori $10, $0 , 0
	nop 
	nop 
	lw $14, 68($10)
	andi $31, $10, 10083
	beq $20, $14, case_9_1
	addi $31, $10, -18228
	andi $14, $31, 19013
case_9_1:
	sub $14, $0 , $14
	andi $10, $14, 3993
	ori $31, $0 , 0
	nop 
	sw $10, 36($31)
	ori $10, $0 , 0
	nop 
	lw $20, 48($10)
	beq $31, $31, case_9_2
	addi $20, $10, 30057
	ori $20, $0 , 0
	nop 
	nop 
	sh $0 , 50($20)
case_9_2:
	ori $20, $0 , 37928
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 46999
	lui $5 , 43842
	lui $25, 35988
	lui $28, 60207
	lui $31, 36610
	ori $25, $28, 56094
	and $5 , $5 , $25
	ori $25, $0 , 0
	lh $0 , 46($25)
	jal case_10_1
	ori $28, $28, 3150
	ori $0 , $0 , 0
	nop 
	lb $28, 36($0)
	jal case_10_2
	sltu $25, $31, $5 
	andi $0 , $31, 63988
case_10_1:
	ori $25, $25, 27326
	ori $25, $0 , 0
	sh $25, 0($25)
	jr $31
	or $25, $5 , $28
case_10_2:
	ori $0 , $0 , 0
	lw $25, 40($0)
	ori $5 , $0 , 0
	lb $0 , 87($5)
	addi $0 , $5 , 18262
	addi $5 , $31, 16575
	addi $25, $0 , -6714
	jal case_10_3
	andi $28, $25, 43557
	addi $31, $28, 1098
	jal case_10_4
	addi $5 , $25, 28806
	ori $28, $0 , 0
	nop 
	nop 
	sb $0 , 4($28)
case_10_3:
	addi $28, $28, 22303
	ori $25, $0 , 0
	nop 
	lh $5 , 58($25)
	jr $31
	ori $5 , $0 , 0
	nop 
	nop 
	lw $25, 64($5)
case_10_4:
	lui $1 , 0
case_10_end:
