.text
case_1_begin:
	lui $0 , 13909
	lui $14, 16597
	lui $15, 33262
	lui $22, 62819
	lui $31, 37857
	slt $14, $31, $15
	ori $14, $0 , 0
	nop 
	nop 
	sb $0 , 19($14)
	jal case_1_1
	addi $0 , $15, 18209
	ori $0 , $0 , 0
	sb $0 , 8($0)
	jal case_1_2
	addi $22, $31, 3113
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 56($0)
case_1_1:
	addi $14, $15, -12138
	addi $15, $0 , 19389
	jr $31
	ori $22, $0 , 0
	sb $15, 76($22)
case_1_2:
	addi $15, $14, 11129
	jal case_1_3
	addi $15, $15, -23445
	ori $14, $0 , 0
	nop 
	lb $22, 99($14)
	jal case_1_4
	addi $14, $0 , -30719
	addi $14, $22, -18753
case_1_3:
	ori $0 , $22, 1424
	ori $14, $0 , 0
	sb $22, 32($14)
	jr $31
	ori $14, $0 , 0
	sb $22, 61($14)
case_1_4:
	jal case_1_5
	addi $14, $14, 8819
	ori $31, $0 , 0
	lw $22, 64($31)
	jal case_1_6
	addi $22, $0 , -32298
	ori $22, $0 , 0
	lb $31, 20($22)
case_1_5:
	ori $14, $0 , 0
	nop 
	lb $14, 68($14)
	ori $14, $22, 14522
	jr $31
	ori $22, $0 , 0
	nop 
	nop 
	sw $22, 84($22)
case_1_6:
	beq $15, $14, case_1_7
	ori $22, $22, 10658
	addi $14, $15, -18497
case_1_7:
	ori $15, $31, 4708
	beq $0 , $22, case_1_8
	addi $22, $0 , 26475
	or $31, $14, $15
case_1_8:
	and $0 , $14, $22
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 12969
	lui $15, 10231
	lui $23, 24615
	lui $25, 12465
	lui $31, 38661
	ori $23, $0 , 0
	lh $23, 48($23)
	addi $31, $0 , -9008
	bne $31, $25, case_2_1
	andi $25, $23, 52078
	ori $0 , $15, 16473
case_2_1:
	ori $0 , $0 , 0
	lh $0 , 6($0)
	ori $15, $0 , 0
	nop 
	lw $23, 68($15)
	sub $0 , $25, $15
	ori $25, $0 , 0
	lh $15, 32($25)
	add $25, $25, $15
	ori $23, $0 , 0
	nop 
	sw $25, 96($23)
	and $31, $15, $25
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 44449
	lui $9 , 41059
	lui $15, 61040
	lui $29, 33706
	lui $31, 37754
	addi $9 , $0 , -12204
	ori $0 , $0 , 0
	nop 
	nop 
	sh $15, 12($0)
	and $29, $29, $29
	beq $15, $9 , case_3_1
	andi $15, $15, 41465
	andi $9 , $9 , 41623
case_3_1:
	beq $31, $31, case_3_2
	addi $9 , $31, -3826
	addi $15, $0 , 12261
case_3_2:
	addi $15, $0 , 21799
	add $9 , $9 , $9 
	addi $15, $29, 25427
	bne $29, $9 , case_3_3
	sub $31, $29, $15
	ori $29, $0 , 0
	sw $9 , 60($29)
case_3_3:
	ori $29, $0 , 0
	nop 
	sb $0 , 98($29)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 24509
	lui $14, 4933
	lui $23, 14673
	lui $27, 27131
	lui $31, 5083
	ori $0 , $0 , 0
	sh $31, 76($0)
	ori $27, $0 , 0
	nop 
	sh $31, 12($27)
	ori $0 , $0 , 0
	nop 
	sb $31, 48($0)
	jal case_4_1
	addi $27, $23, 2746
	ori $27, $0 , 0
	lw $27, 84($27)
	jal case_4_2
	add $0 , $31, $23
	or $27, $27, $31
case_4_1:
	add $14, $0 , $23
	addi $27, $27, -5910
	jr $31
	ori $14, $14, 19349
case_4_2:
	bne $23, $14, case_4_3
	andi $0 , $27, 64500
	ori $14, $0 , 0
	sw $27, 60($14)
case_4_3:
	addi $31, $31, 28678
	bne $14, $27, case_4_4
	addi $0 , $0 , -19183
	ori $14, $0 , 0
	sw $0 , 0($14)
case_4_4:
	and $23, $0 , $14
	ori $0 , $0 , 0
	nop 
	nop 
	sw $23, 16($0)
	ori $27, $0 , 16803
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 1719
	lui $3 , 14694
	lui $13, 34688
	lui $23, 39480
	lui $31, 55936
	ori $3 , $0 , 0
	nop 
	nop 
	lh $13, 68($3)
	ori $3 , $0 , 0
	nop 
	nop 
	sh $0 , 70($3)
	jal case_5_1
	addi $3 , $3 , -29912
	ori $31, $0 , 0
	lh $0 , 34($31)
	jal case_5_2
	andi $23, $0 , 60090
	ori $23, $0 , 0
	nop 
	sw $0 , 92($23)
case_5_1:
	and $23, $3 , $3 
	ori $23, $0 , 0
	nop 
	nop 
	lh $23, 98($23)
	jr $31
	ori $23, $0 , 0
	lw $23, 96($23)
case_5_2:
	addi $31, $31, -19684
	beq $3 , $23, case_5_3
	sub $31, $23, $31
	ori $23, $0 , 0
	nop 
	nop 
	sw $0 , 44($23)
case_5_3:
	beq $13, $31, case_5_4
	sub $0 , $31, $13
	andi $23, $13, 38133
case_5_4:
	or $23, $31, $13
	ori $31, $3 , 24018
	addi $3 , $0 , 16546
	ori $13, $0 , 0
	nop 
	sh $3 , 30($13)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 54187
	lui $10, 12415
	lui $24, 28867
	lui $28, 20660
	lui $31, 17023
	jal case_6_1
	ori $10, $28, 2885
	ori $24, $0 , 0
	nop 
	nop 
	sw $10, 28($24)
	jal case_6_2
	add $28, $24, $10
	add $31, $24, $24
case_6_1:
	ori $28, $0 , 0
	nop 
	nop 
	lh $28, 40($28)
	ori $10, $28, 41785
	jr $31
	ori $10, $0 , 0
	nop 
	nop 
	lh $0 , 42($10)
case_6_2:
	jal case_6_3
	andi $28, $0 , 24023
	ori $24, $0 , 0
	sb $0 , 82($24)
	jal case_6_4
	addi $31, $0 , 31988
	ori $0 , $0 , 0
	nop 
	lw $28, 36($0)
case_6_3:
	add $0 , $24, $28
	andi $10, $24, 13771
	jr $31
	ori $28, $0 , 0
	lb $0 , 19($28)
case_6_4:
	beq $0 , $24, case_6_5
	andi $31, $24, 16000
	ori $31, $0 , 0
	nop 
	nop 
	lh $0 , 14($31)
case_6_5:
	ori $10, $0 , 0
	sh $31, 66($10)
	addi $10, $24, -23216
	ori $31, $0 , 0
	sb $24, 48($31)
	ori $10, $0 , 0
	nop 
	nop 
	sw $24, 60($10)
	jal case_6_6
	andi $28, $10, 20044
	addi $0 , $0 , 14137
	jal case_6_7
	andi $31, $0 , 11700
	ori $0 , $0 , 0
	nop 
	lh $31, 54($0)
case_6_6:
	ori $24, $0 , 0
	nop 
	sb $24, 41($24)
	sub $10, $28, $28
	jr $31
	ori $0 , $24, 25227
case_6_7:
	or $31, $10, $28
	jal case_6_8
	or $10, $24, $24
	ori $0 , $0 , 0
	nop 
	lb $0 , 66($0)
	jal case_6_9
	slt $24, $31, $0 
	or $10, $28, $31
case_6_8:
	addi $28, $24, -433
	and $28, $10, $28
	jr $31
	ori $24, $0 , 0
	nop 
	nop 
	lw $24, 64($24)
case_6_9:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 29444
	lui $3 , 13769
	lui $17, 57332
	lui $21, 22950
	lui $31, 53287
	ori $21, $0 , 0
	nop 
	nop 
	sb $31, 49($21)
	andi $17, $3 , 56788
	jal case_7_1
	slt $3 , $17, $17
	and $0 , $31, $0 
	jal case_7_2
	ori $0 , $21, 6301
	add $0 , $3 , $21
case_7_1:
	ori $0 , $0 , 0
	nop 
	nop 
	lb $3 , 59($0)
	ori $21, $0 , 0
	sb $0 , 23($21)
	jr $31
	ori $3 , $21, 61759
case_7_2:
	ori $3 , $0 , 0
	nop 
	sh $3 , 70($3)
	sub $31, $0 , $17
	ori $17, $0 , 0
	sh $21, 48($17)
	jal case_7_3
	andi $21, $17, 50954
	addi $0 , $31, -6559
	jal case_7_4
	ori $3 , $31, 21499
	addi $0 , $3 , 21706
case_7_3:
	addi $0 , $21, -21858
	andi $17, $17, 38218
	jr $31
	addi $21, $3 , 5067
case_7_4:
	addi $21, $0 , 7920
	beq $31, $17, case_7_5
	ori $17, $3 , 5317
	ori $0 , $0 , 0
	nop 
	nop 
	sb $0 , 57($0)
case_7_5:
	beq $0 , $3 , case_7_6
	andi $3 , $0 , 52051
	ori $21, $0 , 0
	nop 
	nop 
	sb $17, 61($21)
case_7_6:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 63153
	lui $6 , 13361
	lui $11, 20009
	lui $19, 444
	lui $31, 59540
	ori $11, $0 , 0
	sw $6 , 4($11)
	ori $19, $0 , 0
	nop 
	nop 
	lw $0 , 44($19)
	sub $0 , $19, $0 
	jal case_8_1
	addi $11, $19, 9714
	sltu $0 , $31, $19
	jal case_8_2
	addi $19, $19, -25511
	andi $6 , $11, 10637
case_8_1:
	ori $0 , $0 , 0
	sw $11, 28($0)
	ori $19, $0 , 0
	nop 
	nop 
	sh $6 , 52($19)
	jr $31
	addi $0 , $0 , -15761
case_8_2:
	sltu $31, $11, $11
	addi $31, $31, 9381
	addi $11, $6 , -29805
	addi $11, $19, -25072
	add $19, $31, $19
	ori $11, $0 , 0
	nop 
	sh $19, 10($11)
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 42013
	lui $7 , 3891
	lui $16, 36971
	lui $26, 9381
	lui $31, 18898
	ori $7 , $0 , 0
	nop 
	nop 
	sh $16, 24($7)
	add $26, $26, $26
	jal case_9_1
	ori $26, $16, 768
	addi $26, $0 , -7656
	jal case_9_2
	addi $16, $31, -863
	sltu $26, $7 , $7 
case_9_1:
	sub $16, $16, $7 
	addi $26, $7 , -22688
	jr $31
	ori $16, $0 , 0
	sh $7 , 18($16)
case_9_2:
	addi $0 , $31, -11694
	beq $16, $26, case_9_3
	add $7 , $16, $16
	ori $26, $0 , 0
	nop 
	nop 
	sb $0 , 41($26)
case_9_3:
	ori $26, $0 , 0
	sw $31, 24($26)
	andi $26, $0 , 14903
	jal case_9_4
	addi $0 , $16, -30264
	ori $26, $16, 30131
	jal case_9_5
	sltu $16, $16, $7 
	ori $0 , $0 , 0
	lw $26, 40($0)
case_9_4:
	ori $26, $0 , 0
	sb $0 , 43($26)
	addi $26, $7 , -12427
	jr $31
	addi $7 , $0 , -26496
case_9_5:
	ori $0 , $0 , 0
	nop 
	nop 
	sw $0 , 0($0)
	ori $7 , $0 , 0
	lw $16, 92($7)
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 51208
	lui $4 , 5393
	lui $18, 26231
	lui $23, 39289
	lui $31, 45679
	or $31, $4 , $4 
	jal case_10_1
	slt $18, $0 , $18
	or $4 , $18, $23
	jal case_10_2
	add $31, $4 , $0 
	addi $23, $23, -16975
case_10_1:
	ori $0 , $0 , 0
	sh $4 , 44($0)
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 96($0)
	jr $31
	andi $31, $0 , 46780
case_10_2:
	andi $18, $31, 59781
	andi $18, $31, 38256
	bne $18, $23, case_10_3
	addi $0 , $0 , 19530
	addi $4 , $18, 29195
case_10_3:
	andi $0 , $23, 2002
	addi $0 , $23, 29744
	ori $31, $0 , 0
	lb $31, 2($31)
	jal case_10_4
	slt $18, $0 , $4 
	ori $18, $0 , 0
	lb $18, 65($18)
	jal case_10_5
	addi $4 , $0 , 16000
	addi $4 , $23, -16021
case_10_4:
	sub $4 , $23, $18
	sltu $0 , $4 , $0 
	jr $31
	andi $31, $0 , 31230
case_10_5:
	bne $18, $23, case_10_6
	andi $31, $31, 20294
	addi $0 , $23, -5077
case_10_6:
	lui $1 , 0
case_10_end:
