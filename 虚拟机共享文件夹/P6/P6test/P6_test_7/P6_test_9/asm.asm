.text
case_1_begin:
	lui $0 , 57526
	lui $6 , 22699
	lui $14, 16601
	lui $20, 22354
	lui $31, 63543
	slt $6 , $0 , $20
	ori $0 , $0 , 0
	nop 
	lh $0 , 36($0)
	ori $20, $0 , 0
	sw $31, 64($20)
	sltu $20, $0 , $20
	bne $31, $20, case_1_1
	add $20, $31, $31
	ori $0 , $0 , 0
	lb $14, 89($0)
case_1_1:
	addi $20, $31, -32604
	ori $14, $0 , 0
	lh $20, 46($14)
	or $6 , $6 , $20
	jal case_1_2
	slt $14, $14, $14
	andi $31, $0 , 21675
	jal case_1_3
	addi $20, $14, -19252
	andi $20, $20, 38396
case_1_2:
	addi $14, $20, 11372
	ori $0 , $0 , 0
	sb $14, 59($0)
	jr $31
	or $20, $6 , $31
case_1_3:
	jal case_1_4
	add $14, $14, $6 
	ori $20, $0 , 0
	nop 
	nop 
	sb $20, 83($20)
	jal case_1_5
	and $0 , $0 , $31
	ori $20, $0 , 0
	nop 
	lh $14, 18($20)
case_1_4:
	add $0 , $6 , $0 
	ori $0 , $0 , 0
	lb $14, 8($0)
	jr $31
	ori $6 , $0 , 0
	nop 
	nop 
	sw $0 , 48($6)
case_1_5:
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 1436
	lui $9 , 16856
	lui $18, 10911
	lui $28, 34313
	lui $31, 16736
	andi $18, $9 , 51929
	jal case_2_1
	ori $9 , $0 , 22010
	ori $28, $0 , 0
	nop 
	lb $18, 98($28)
	jal case_2_2
	or $18, $31, $0 
	ori $18, $0 , 0
	sb $31, 75($18)
case_2_1:
	add $9 , $18, $28
	slt $9 , $28, $9 
	jr $31
	ori $28, $9 , 2655
case_2_2:
	andi $9 , $0 , 58922
	andi $18, $0 , 44965
	ori $0 , $0 , 0
	nop 
	nop 
	sb $31, 16($0)
	ori $28, $18, 3217
	ori $0 , $0 , 0
	lh $31, 94($0)
	ori $9 , $18, 33178
	ori $0 , $0 , 0
	nop 
	lh $9 , 44($0)
	addi $9 , $9 , 30590
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 13580
	lui $21, 48730
	lui $23, 40097
	lui $26, 14785
	lui $31, 29023
	ori $21, $0 , 0
	sw $31, 8($21)
	jal case_3_1
	andi $0 , $23, 23640
	andi $0 , $31, 20126
	jal case_3_2
	andi $0 , $26, 49109
	ori $23, $0 , 0
	nop 
	nop 
	lw $21, 12($23)
case_3_1:
	ori $23, $0 , 0
	nop 
	sb $21, 94($23)
	ori $26, $0 , 0
	nop 
	nop 
	lw $23, 16($26)
	jr $31
	ori $21, $0 , 0
	nop 
	nop 
	lb $31, 40($21)
case_3_2:
	and $0 , $23, $23
	ori $21, $0 , 48785
	ori $23, $0 , 0
	nop 
	nop 
	sb $0 , 54($23)
	beq $31, $0 , case_3_3
	slt $0 , $26, $0 
	ori $0 , $0 , 0
	nop 
	nop 
	sw $23, 96($0)
case_3_3:
	jal case_3_4
	addi $21, $21, 9690
	ori $26, $0 , 0
	nop 
	sh $23, 88($26)
	jal case_3_5
	andi $26, $0 , 13844
	ori $0 , $0 , 0
	lb $23, 35($0)
case_3_4:
	andi $0 , $0 , 18710
	ori $0 , $0 , 26302
	jr $31
	addi $0 , $23, -30351
case_3_5:
	sltu $26, $0 , $0 
	ori $31, $0 , 0
	sw $23, 20($31)
	jal case_3_6
	sub $21, $23, $26
	and $31, $0 , $31
	jal case_3_7
	sltu $31, $0 , $21
	ori $31, $0 , 0
	sw $21, 68($31)
case_3_6:
	addi $26, $0 , -20396
	ori $21, $0 , 33672
	jr $31
	ori $31, $0 , 0
	nop 
	lw $21, 32($31)
case_3_7:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 30763
	lui $15, 10057
	lui $21, 43193
	lui $29, 31246
	lui $31, 19368
	sltu $31, $21, $21
	ori $21, $0 , 0
	lb $31, 60($21)
	beq $31, $0 , case_4_1
	ori $31, $29, 845
	ori $15, $0 , 0
	sh $29, 98($15)
case_4_1:
	addi $0 , $21, -13747
	jal case_4_2
	slt $15, $0 , $29
	add $21, $21, $29
	jal case_4_3
	and $0 , $15, $0 
	ori $15, $0 , 0
	nop 
	nop 
	sh $31, 74($15)
case_4_2:
	ori $0 , $0 , 0
	nop 
	nop 
	sb $29, 70($0)
	andi $21, $15, 9961
	jr $31
	and $21, $29, $21
case_4_3:
	and $29, $15, $31
	ori $15, $0 , 0
	nop 
	lh $0 , 16($15)
	bne $0 , $31, case_4_4
	or $15, $29, $31
	ori $15, $15, 23809
case_4_4:
	ori $31, $0 , 0
	nop 
	nop 
	sw $31, 60($31)
	ori $29, $0 , 0
	nop 
	sh $15, 18($29)
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 28508
	lui $3 , 19704
	lui $19, 34331
	lui $22, 24587
	lui $31, 52464
	andi $31, $22, 31762
	add $3 , $3 , $0 
	bne $0 , $3 , case_5_1
	sltu $19, $31, $22
	and $22, $31, $22
case_5_1:
	and $0 , $31, $22
	and $22, $22, $22
	addi $22, $19, -6151
	sltu $19, $31, $22
	sltu $19, $3 , $31
	and $3 , $3 , $0 
	jal case_5_2
	ori $19, $0 , 19740
	addi $3 , $19, -1760
	jal case_5_3
	andi $22, $0 , 31936
	add $19, $22, $3 
case_5_2:
	ori $19, $0 , 0
	sh $3 , 84($19)
	ori $3 , $0 , 0
	nop 
	nop 
	lw $0 , 68($3)
	jr $31
	ori $3 , $0 , 0
	nop 
	sw $19, 44($3)
case_5_3:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 205
	lui $3 , 56328
	lui $21, 50938
	lui $29, 13759
	lui $31, 51389
	jal case_6_1
	or $21, $3 , $0 
	ori $0 , $29, 64
	jal case_6_2
	slt $0 , $31, $29
	ori $3 , $0 , 0
	sh $29, 46($3)
case_6_1:
	ori $0 , $0 , 0
	sh $3 , 62($0)
	ori $29, $0 , 0
	nop 
	nop 
	sh $3 , 92($29)
	jr $31
	ori $3 , $0 , 0
	nop 
	sh $21, 48($3)
case_6_2:
	add $29, $3 , $3 
	add $21, $3 , $29
	ori $31, $0 , 0
	nop 
	sw $3 , 64($31)
	beq $0 , $0 , case_6_3
	andi $21, $29, 46535
	ori $21, $0 , 0
	sb $0 , 68($21)
case_6_3:
	ori $3 , $0 , 0
	nop 
	lh $0 , 74($3)
	ori $0 , $0 , 0
	nop 
	lb $0 , 41($0)
	ori $0 , $21, 52261
	ori $21, $31, 39964
	jal case_6_4
	ori $21, $21, 7916
	andi $3 , $0 , 29897
	jal case_6_5
	add $29, $31, $0 
	andi $21, $31, 35346
case_6_4:
	addi $21, $21, -8976
	and $21, $29, $3 
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	sw $3 , 64($0)
case_6_5:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 18861
	lui $12, 41046
	lui $27, 49105
	lui $28, 43457
	lui $31, 61859
	jal case_7_1
	addi $0 , $27, -3636
	ori $28, $0 , 0
	sw $27, 96($28)
	jal case_7_2
	ori $31, $28, 61776
	ori $0 , $0 , 0
	nop 
	nop 
	lh $12, 0($0)
case_7_1:
	addi $12, $0 , -27294
	or $28, $12, $0 
	jr $31
	ori $31, $0 , 0
	nop 
	sw $12, 0($31)
case_7_2:
	jal case_7_3
	addi $12, $0 , -27080
	ori $31, $0 , 0
	nop 
	nop 
	sh $27, 2($31)
	jal case_7_4
	slt $28, $31, $12
	ori $31, $0 , 0
	nop 
	sh $12, 94($31)
case_7_3:
	ori $12, $0 , 0
	nop 
	lw $0 , 48($12)
	addi $28, $12, -5329
	jr $31
	addi $12, $12, -10880
case_7_4:
	and $0 , $28, $12
	ori $31, $0 , 0
	nop 
	sw $0 , 8($31)
	bne $0 , $0 , case_7_5
	or $28, $12, $0 
	ori $0 , $0 , 0
	nop 
	lh $28, 2($0)
case_7_5:
	ori $28, $0 , 0
	lb $28, 1($28)
	ori $27, $0 , 0
	sw $27, 64($27)
	sltu $31, $28, $31
	ori $31, $0 , 12683
	bne $28, $12, case_7_6
	addi $12, $31, -11157
	sltu $28, $12, $28
case_7_6:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 22240
	lui $5 , 32319
	lui $14, 15800
	lui $29, 20119
	lui $31, 10320
	ori $0 , $0 , 0
	lb $29, 50($0)
	jal case_8_1
	ori $5 , $0 , 62610
	andi $29, $0 , 60308
	jal case_8_2
	addi $31, $5 , 4694
	and $14, $14, $29
case_8_1:
	ori $14, $0 , 0
	sh $5 , 96($14)
	sltu $14, $5 , $14
	jr $31
	addi $14, $31, 31795
case_8_2:
	jal case_8_3
	ori $5 , $5 , 23886
	addi $29, $0 , 21558
	jal case_8_4
	sub $14, $31, $0 
	ori $29, $31, 50737
case_8_3:
	addi $5 , $5 , 14462
	addi $5 , $0 , 18718
	jr $31
	addi $29, $5 , -25863
case_8_4:
	ori $0 , $0 , 0
	nop 
	sb $31, 16($0)
	ori $5 , $29, 64005
	addi $0 , $29, -5471
	jal case_8_5
	andi $5 , $5 , 16324
	ori $14, $0 , 0
	nop 
	lh $0 , 12($14)
	jal case_8_6
	ori $5 , $29, 50760
	or $31, $29, $14
case_8_5:
	ori $0 , $0 , 17528
	ori $29, $0 , 0
	nop 
	nop 
	lh $29, 92($29)
	jr $31
	ori $0 , $0 , 0
	nop 
	lh $5 , 52($0)
case_8_6:
	ori $14, $0 , 0
	nop 
	nop 
	sb $0 , 13($14)
	slt $29, $5 , $5 
	addi $0 , $31, 26217
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 48286
	lui $6 , 57093
	lui $16, 37822
	lui $18, 35981
	lui $31, 59380
	addi $31, $16, -26845
	jal case_9_1
	andi $16, $6 , 1395
	ori $6 , $0 , 0
	nop 
	nop 
	lh $31, 94($6)
	jal case_9_2
	or $0 , $18, $31
	ori $6 , $0 , 0
	nop 
	nop 
	lh $16, 70($6)
case_9_1:
	ori $18, $0 , 0
	sh $18, 44($18)
	ori $16, $0 , 0
	nop 
	nop 
	sb $16, 55($16)
	jr $31
	ori $16, $0 , 0
	nop 
	sh $0 , 42($16)
case_9_2:
	ori $0 , $0 , 0
	nop 
	sw $0 , 92($0)
	beq $31, $31, case_9_3
	addi $31, $18, 8028
	ori $31, $16, 8557
case_9_3:
	jal case_9_4
	and $0 , $18, $16
	ori $0 , $31, 51979
	jal case_9_5
	andi $18, $16, 32025
	ori $16, $0 , 0
	sw $0 , 0($16)
case_9_4:
	ori $18, $0 , 0
	lb $0 , 68($18)
	add $0 , $0 , $18
	jr $31
	ori $16, $6 , 51761
case_9_5:
	ori $0 , $0 , 0
	nop 
	lh $6 , 92($0)
	ori $6 , $0 , 0
	nop 
	lh $6 , 46($6)
	ori $31, $0 , 0
	nop 
	nop 
	lb $18, 33($31)
	slt $0 , $6 , $6 
	addi $16, $18, -20832
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 6414
	lui $16, 40871
	lui $17, 35260
	lui $28, 48942
	lui $31, 36870
	ori $16, $0 , 0
	nop 
	nop 
	lb $0 , 85($16)
	slt $17, $28, $0 
	beq $17, $28, case_10_1
	addi $0 , $17, -13863
	ori $16, $0 , 0
	nop 
	sb $31, 41($16)
case_10_1:
	bne $28, $31, case_10_2
	addi $28, $16, 29078
	ori $28, $0 , 0
	nop 
	nop 
	lh $31, 64($28)
case_10_2:
	ori $17, $0 , 0
	nop 
	lh $31, 98($17)
	beq $17, $31, case_10_3
	sltu $0 , $17, $0 
	ori $31, $0 , 0
	nop 
	nop 
	sw $0 , 92($31)
case_10_3:
	bne $17, $17, case_10_4
	andi $31, $28, 59784
	ori $16, $0 , 0
	nop 
	nop 
	sh $28, 88($16)
case_10_4:
	jal case_10_5
	ori $0 , $16, 49512
	ori $17, $0 , 0
	nop 
	lw $28, 32($17)
	jal case_10_6
	ori $16, $16, 23257
	andi $17, $16, 19896
case_10_5:
	andi $17, $16, 61636
	sub $17, $0 , $28
	jr $31
	ori $17, $31, 10190
case_10_6:
	ori $0 , $0 , 0
	nop 
	sb $0 , 39($0)
	jal case_10_7
	slt $16, $17, $17
	ori $0 , $0 , 0
	lh $16, 46($0)
	jal case_10_8
	addi $28, $0 , -4332
	ori $0 , $0 , 0
	nop 
	lh $31, 74($0)
case_10_7:
	ori $28, $0 , 0
	lw $16, 20($28)
	ori $16, $0 , 0
	nop 
	nop 
	sw $28, 40($16)
	jr $31
	ori $28, $0 , 0
	nop 
	sh $31, 98($28)
case_10_8:
	lui $1 , 0
case_10_end:
