.text
case_1_begin:
	lui $0 , 8845
	lui $1 , 37829
	lui $10, 27481
	lui $19, 49215
	lui $31, 11345
	ori $31, $1 , 30259
	ori $19, $0 , 0
	sh $31, 66($19)
	andi $0 , $0 , 23557
	ori $0 , $0 , 0
	nop 
	sh $19, 96($0)
	bne $0 , $31, case_1_1
	addi $31, $10, -15719
	ori $10, $1 , 16700
case_1_1:
	andi $0 , $10, 58352
	jal case_1_2
	andi $1 , $10, 10542
	ori $19, $0 , 0
	nop 
	lh $10, 28($19)
	jal case_1_3
	andi $1 , $31, 61260
	addi $31, $10, -13521
case_1_2:
	ori $1 , $0 , 0
	nop 
	sb $1 , 70($1)
	ori $19, $0 , 0
	nop 
	nop 
	sb $19, 30($19)
	jr $31
	sub $10, $19, $31
case_1_3:
	ori $10, $31, 17004
	ori $1 , $0 , 0
	sb $10, 87($1)
	ori $1 , $0 , 0
	lb $31, 86($1)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 462
	lui $3 , 24816
	lui $13, 54269
	lui $15, 24227
	lui $31, 46689
	sltu $31, $31, $15
	andi $31, $0 , 51641
	jal case_2_1
	or $15, $3 , $3 
	ori $0 , $13, 26292
	jal case_2_2
	addi $13, $15, -9236
	andi $3 , $13, 62837
case_2_1:
	addi $15, $13, 4464
	addi $13, $13, -1312
	jr $31
	addi $31, $31, 28871
case_2_2:
	ori $31, $0 , 0
	nop 
	nop 
	sw $0 , 56($31)
	beq $3 , $13, case_2_3
	addi $0 , $31, 22009
	ori $15, $0 , 33512
case_2_3:
	bne $3 , $15, case_2_4
	addi $3 , $0 , 30594
	addi $31, $15, -26810
case_2_4:
	sub $31, $31, $0 
	ori $13, $0 , 0
	nop 
	sb $31, 46($13)
	ori $15, $0 , 0
	nop 
	sw $15, 92($15)
	addi $0 , $15, -4777
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 9371
	lui $6 , 5536
	lui $8 , 7547
	lui $20, 8569
	lui $31, 64288
	sub $31, $0 , $6 
	bne $31, $6 , case_3_1
	slt $6 , $31, $31
	ori $0 , $0 , 0
	nop 
	nop 
	lb $6 , 24($0)
case_3_1:
	add $0 , $20, $0 
	ori $20, $31, 49648
	bne $6 , $8 , case_3_2
	addi $31, $0 , -19274
	ori $20, $0 , 0
	nop 
	nop 
	lh $0 , 54($20)
case_3_2:
	addi $0 , $6 , -888
	ori $6 , $0 , 0
	nop 
	sw $8 , 4($6)
	andi $8 , $6 , 29172
	ori $6 , $0 , 0
	nop 
	nop 
	sb $20, 69($6)
	ori $20, $0 , 0
	sh $20, 60($20)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 65522
	lui $8 , 7963
	lui $14, 41393
	lui $24, 51621
	lui $31, 2004
	bne $8 , $31, case_4_1
	addi $14, $8 , -24342
	sltu $0 , $0 , $8 
case_4_1:
	and $0 , $8 , $8 
	andi $8 , $14, 11734
	andi $31, $8 , 48086
	ori $24, $0 , 0
	nop 
	nop 
	lw $0 , 24($24)
	jal case_4_2
	andi $14, $24, 43828
	andi $0 , $31, 25646
	jal case_4_3
	ori $0 , $0 , 59069
	add $8 , $14, $0 
case_4_2:
	addi $24, $24, 8992
	ori $0 , $0 , 0
	sb $0 , 56($0)
	jr $31
	ori $14, $14, 5912
case_4_3:
	bne $0 , $24, case_4_4
	andi $8 , $0 , 36596
	ori $8 , $0 , 0
	sb $31, 81($8)
case_4_4:
	add $31, $14, $14
	jal case_4_5
	addi $14, $0 , 9786
	ori $0 , $0 , 0
	nop 
	sb $14, 79($0)
	jal case_4_6
	andi $14, $31, 32275
	andi $0 , $24, 43009
case_4_5:
	andi $24, $24, 43698
	ori $0 , $0 , 0
	nop 
	nop 
	sb $24, 49($0)
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	sb $8 , 16($31)
case_4_6:
	addi $8 , $31, -9675
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 25050
	lui $8 , 55771
	lui $25, 25766
	lui $29, 9583
	lui $31, 47426
	jal case_5_1
	addi $25, $25, 4137
	ori $8 , $0 , 0
	nop 
	nop 
	lb $8 , 50($8)
	jal case_5_2
	addi $31, $31, 20770
	ori $0 , $8 , 19246
case_5_1:
	ori $8 , $0 , 0
	nop 
	nop 
	sb $8 , 83($8)
	or $8 , $8 , $0 
	jr $31
	ori $8 , $0 , 0
	nop 
	nop 
	sb $25, 45($8)
case_5_2:
	jal case_5_3
	andi $8 , $8 , 43647
	addi $31, $29, -17334
	jal case_5_4
	and $25, $8 , $29
	addi $25, $0 , -8133
case_5_3:
	ori $8 , $0 , 0
	nop 
	lb $8 , 47($8)
	ori $0 , $0 , 0
	lw $0 , 24($0)
	jr $31
	addi $25, $0 , -9167
case_5_4:
	beq $29, $8 , case_5_5
	andi $8 , $8 , 64616
	ori $25, $8 , 2451
case_5_5:
	andi $25, $29, 49460
	ori $8 , $0 , 0
	sh $29, 46($8)
	andi $31, $8 , 46548
	ori $8 , $0 , 0
	nop 
	lw $25, 16($8)
	ori $25, $25, 52313
	bne $8 , $8 , case_5_6
	or $29, $8 , $8 
	andi $29, $31, 8466
case_5_6:
	beq $8 , $8 , case_5_7
	andi $31, $0 , 63495
	ori $31, $0 , 0
	sh $31, 14($31)
case_5_7:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 24903
	lui $11, 36575
	lui $15, 51013
	lui $30, 60866
	lui $31, 11546
	ori $15, $0 , 0
	nop 
	lh $31, 90($15)
	ori $15, $0 , 0
	nop 
	lh $31, 36($15)
	addi $30, $0 , 19397
	ori $30, $0 , 0
	sb $31, 69($30)
	jal case_6_1
	sltu $30, $15, $11
	ori $15, $30, 50583
	jal case_6_2
	slt $30, $0 , $30
	slt $0 , $11, $31
case_6_1:
	addi $15, $15, -2782
	ori $15, $0 , 0
	nop 
	lw $15, 32($15)
	jr $31
	or $11, $11, $15
case_6_2:
	bne $31, $15, case_6_3
	addi $0 , $0 , -2628
	ori $0 , $0 , 0
	nop 
	lw $31, 36($0)
case_6_3:
	ori $11, $0 , 0
	lw $31, 72($11)
	jal case_6_4
	add $15, $15, $11
	ori $0 , $0 , 0
	nop 
	nop 
	lb $31, 58($0)
	jal case_6_5
	addi $30, $30, -27642
	ori $15, $15, 20430
case_6_4:
	ori $11, $0 , 0
	lw $30, 36($11)
	ori $15, $0 , 0
	sh $15, 50($15)
	jr $31
	and $30, $11, $31
case_6_5:
	or $31, $31, $0 
	andi $15, $11, 43123
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 6811
	lui $2 , 699
	lui $16, 55960
	lui $25, 28753
	lui $31, 9655
	andi $2 , $31, 37690
	beq $31, $16, case_7_1
	addi $25, $2 , -1118
	andi $25, $16, 30730
case_7_1:
	addi $0 , $0 , 29174
	ori $31, $0 , 22574
	slt $31, $25, $16
	jal case_7_2
	or $16, $2 , $2 
	ori $16, $16, 43083
	jal case_7_3
	ori $31, $16, 56479
	ori $16, $0 , 0
	sb $16, 59($16)
case_7_2:
	ori $16, $0 , 0
	sh $0 , 76($16)
	sltu $16, $25, $2 
	jr $31
	or $0 , $31, $25
case_7_3:
	jal case_7_4
	ori $16, $25, 30257
	slt $25, $16, $0 
	jal case_7_5
	ori $25, $25, 2802
	ori $25, $0 , 0
	lh $31, 52($25)
case_7_4:
	or $16, $2 , $2 
	ori $0 , $0 , 0
	sw $0 , 72($0)
	jr $31
	andi $16, $0 , 16606
case_7_5:
	addi $0 , $16, 19401
	ori $25, $0 , 0
	nop 
	nop 
	lb $16, 42($25)
	ori $25, $0 , 0
	sw $16, 36($25)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 3641
	lui $10, 11457
	lui $15, 9303
	lui $28, 15650
	lui $31, 15398
	beq $15, $0 , case_8_1
	addi $10, $0 , -19870
	andi $15, $15, 43488
case_8_1:
	beq $28, $31, case_8_2
	sltu $31, $15, $28
	ori $10, $0 , 0
	nop 
	nop 
	lw $10, 88($10)
case_8_2:
	ori $28, $0 , 0
	nop 
	nop 
	lw $15, 44($28)
	ori $31, $0 , 0
	nop 
	nop 
	lw $15, 12($31)
	jal case_8_3
	and $15, $10, $0 
	slt $10, $0 , $15
	jal case_8_4
	or $0 , $28, $10
	ori $15, $0 , 0
	nop 
	nop 
	sh $31, 98($15)
case_8_3:
	addi $15, $28, -20313
	ori $10, $0 , 0
	sw $0 , 60($10)
	jr $31
	slt $31, $28, $10
case_8_4:
	andi $15, $10, 35821
	ori $10, $0 , 0
	nop 
	lh $15, 24($10)
	jal case_8_5
	addi $10, $10, -8785
	ori $31, $31, 21073
	jal case_8_6
	and $10, $10, $10
	ori $15, $0 , 0
	nop 
	nop 
	sb $0 , 46($15)
case_8_5:
	ori $10, $0 , 0
	lh $15, 66($10)
	addi $15, $28, -2633
	jr $31
	or $10, $0 , $31
case_8_6:
	add $10, $15, $28
	jal case_8_7
	add $15, $15, $0 
	or $0 , $0 , $0 
	jal case_8_8
	addi $10, $31, -5612
	sub $0 , $0 , $28
case_8_7:
	ori $0 , $0 , 0
	nop 
	sh $0 , 48($0)
	addi $28, $15, 1753
	jr $31
	or $0 , $31, $15
case_8_8:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 59948
	lui $14, 22127
	lui $16, 952
	lui $29, 57846
	lui $31, 42704
	ori $29, $0 , 0
	nop 
	nop 
	sb $0 , 70($29)
	beq $31, $29, case_9_1
	addi $14, $29, -5619
	ori $31, $31, 50253
case_9_1:
	add $14, $29, $0 
	ori $16, $0 , 0
	nop 
	nop 
	lb $16, 41($16)
	add $29, $14, $31
	ori $0 , $0 , 0
	sb $14, 41($0)
	ori $31, $0 , 0
	lh $31, 14($31)
	addi $31, $0 , -5646
	andi $0 , $31, 44982
	ori $16, $0 , 0
	lb $0 , 76($16)
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 7240
	lui $15, 61235
	lui $26, 14134
	lui $28, 2264
	lui $31, 42679
	ori $0 , $0 , 0
	sh $28, 30($0)
	ori $0 , $0 , 0
	nop 
	sb $28, 95($0)
	addi $28, $26, 3167
	beq $31, $0 , case_10_1
	addi $15, $31, -17943
	ori $28, $0 , 0
	nop 
	nop 
	lh $0 , 68($28)
case_10_1:
	add $0 , $28, $26
	addi $31, $0 , -7067
	sltu $26, $28, $31
	jal case_10_2
	or $0 , $15, $0 
	ori $26, $0 , 0
	sh $15, 56($26)
	jal case_10_3
	andi $28, $26, 22248
	addi $26, $28, -31658
case_10_2:
	sltu $28, $26, $15
	ori $0 , $0 , 0
	sw $28, 92($0)
	jr $31
	addi $28, $28, -9378
case_10_3:
	ori $26, $0 , 0
	nop 
	lw $26, 52($26)
	ori $0 , $0 , 0
	nop 
	lw $15, 96($0)
	lui $1 , 0
case_10_end:
