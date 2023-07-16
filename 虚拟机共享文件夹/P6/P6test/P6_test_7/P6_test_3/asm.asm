.text
case_1_begin:
	lui $0 , 41429
	lui $16, 29448
	lui $20, 237
	lui $30, 28976
	lui $31, 16001
	sub $16, $16, $20
	jal case_1_1
	or $20, $20, $30
	sltu $30, $0 , $31
	jal case_1_2
	ori $0 , $31, 27058
	ori $20, $0 , 0
	nop 
	lh $20, 18($20)
case_1_1:
	ori $0 , $0 , 0
	sw $20, 80($0)
	ori $0 , $0 , 0
	nop 
	sb $30, 11($0)
	jr $31
	ori $30, $31, 19641
case_1_2:
	beq $30, $30, case_1_3
	add $20, $20, $20
	addi $20, $16, 32617
case_1_3:
	and $0 , $20, $0 
	slt $16, $16, $16
	beq $0 , $31, case_1_4
	or $30, $16, $31
	ori $20, $0 , 0
	nop 
	sh $30, 12($20)
case_1_4:
	ori $20, $0 , 0
	nop 
	nop 
	sw $20, 40($20)
	bne $20, $16, case_1_5
	andi $30, $0 , 18123
	ori $31, $0 , 0
	nop 
	nop 
	lb $31, 40($31)
case_1_5:
	ori $30, $0 , 0
	nop 
	sw $0 , 56($30)
	slt $20, $20, $30
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 49248
	lui $8 , 28376
	lui $20, 11986
	lui $21, 13628
	lui $31, 9672
	bne $0 , $0 , case_2_1
	addi $21, $20, 15384
	slt $21, $31, $20
case_2_1:
	addi $20, $31, -374
	bne $31, $20, case_2_2
	ori $21, $21, 5296
	ori $20, $0 , 0
	sb $0 , 70($20)
case_2_2:
	addi $21, $20, 12777
	sub $0 , $0 , $21
	ori $0 , $0 , 0
	nop 
	sw $0 , 84($0)
	ori $21, $8 , 12014
	bne $31, $31, case_2_3
	sub $20, $0 , $8 
	addi $31, $21, 21544
case_2_3:
	ori $20, $0 , 0
	sh $8 , 34($20)
	jal case_2_4
	addi $21, $21, 22324
	ori $8 , $0 , 0
	nop 
	nop 
	sh $20, 48($8)
	jal case_2_5
	ori $20, $20, 61226
	ori $21, $31, 3567
case_2_4:
	addi $20, $0 , 24956
	ori $0 , $8 , 29788
	jr $31
	ori $21, $0 , 0
	nop 
	lw $20, 48($21)
case_2_5:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 23300
	lui $10, 51233
	lui $16, 32609
	lui $20, 53778
	lui $31, 42688
	and $0 , $10, $31
	ori $0 , $0 , 0
	nop 
	lh $10, 88($0)
	addi $20, $10, -27109
	jal case_3_1
	slt $10, $16, $16
	ori $20, $0 , 0
	lb $20, 45($20)
	jal case_3_2
	sub $16, $16, $16
	ori $10, $0 , 0
	nop 
	sh $16, 76($10)
case_3_1:
	ori $10, $0 , 0
	nop 
	nop 
	sw $10, 68($10)
	sltu $10, $20, $16
	jr $31
	addi $31, $20, -3531
case_3_2:
	addi $16, $16, -16508
	ori $31, $0 , 0
	sb $0 , 73($31)
	ori $31, $0 , 0
	nop 
	lw $20, 4($31)
	add $20, $10, $16
	ori $0 , $0 , 0
	sw $16, 20($0)
	ori $16, $0 , 0
	nop 
	nop 
	lh $0 , 74($16)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 49317
	lui $13, 49119
	lui $20, 54938
	lui $26, 35297
	lui $31, 24423
	ori $31, $0 , 0
	nop 
	sb $13, 95($31)
	beq $0 , $13, case_4_1
	sltu $31, $0 , $13
	ori $20, $0 , 0
	sb $20, 67($20)
case_4_1:
	ori $26, $0 , 6116
	jal case_4_2
	ori $20, $0 , 41388
	ori $13, $20, 28731
	jal case_4_3
	sltu $0 , $0 , $0 
	ori $31, $0 , 0
	nop 
	lb $26, 82($31)
case_4_2:
	andi $13, $20, 1244
	andi $26, $26, 57177
	jr $31
	addi $31, $20, -7822
case_4_3:
	bne $13, $31, case_4_4
	sub $31, $31, $13
	ori $31, $0 , 0
	nop 
	lb $0 , 85($31)
case_4_4:
	ori $20, $0 , 6947
	ori $26, $0 , 0
	nop 
	nop 
	sw $13, 44($26)
	jal case_4_5
	addi $0 , $26, 15025
	sub $20, $13, $0 
	jal case_4_6
	slt $20, $0 , $13
	ori $20, $0 , 0
	nop 
	lh $26, 34($20)
case_4_5:
	sltu $13, $20, $0 
	addi $13, $20, -14570
	jr $31
	ori $26, $0 , 0
	nop 
	sh $13, 78($26)
case_4_6:
	slt $31, $31, $0 
	ori $26, $0 , 0
	nop 
	nop 
	lb $13, 2($26)
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 41388
	lui $2 , 48978
	lui $10, 32495
	lui $28, 16206
	lui $31, 26628
	addi $10, $28, 13087
	beq $10, $31, case_5_1
	addi $28, $31, -13253
	ori $0 , $0 , 0
	nop 
	sb $2 , 36($0)
case_5_1:
	ori $2 , $0 , 27782
	bne $28, $10, case_5_2
	andi $10, $10, 56826
	ori $28, $0 , 0
	nop 
	nop 
	lb $31, 33($28)
case_5_2:
	slt $0 , $28, $28
	ori $0 , $0 , 0
	nop 
	lb $2 , 70($0)
	and $31, $10, $0 
	jal case_5_3
	ori $10, $2 , 44817
	ori $2 , $31, 19971
	jal case_5_4
	andi $28, $31, 13708
	andi $2 , $31, 47801
case_5_3:
	ori $28, $0 , 0
	nop 
	nop 
	sb $28, 79($28)
	ori $28, $0 , 0
	nop 
	sw $2 , 36($28)
	jr $31
	ori $10, $0 , 34769
case_5_4:
	ori $31, $31, 49623
	jal case_5_5
	ori $0 , $10, 58373
	or $0 , $28, $28
	jal case_5_6
	sltu $2 , $31, $28
	andi $28, $31, 52622
case_5_5:
	ori $10, $0 , 0
	nop 
	lb $28, 92($10)
	and $10, $2 , $28
	jr $31
	ori $31, $2 , 62999
case_5_6:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 18251
	lui $12, 24997
	lui $25, 32812
	lui $29, 54394
	lui $31, 18883
	ori $12, $0 , 0
	nop 
	nop 
	sb $0 , 16($12)
	ori $0 , $0 , 0
	nop 
	nop 
	lw $25, 60($0)
	ori $31, $0 , 0
	nop 
	lb $12, 12($31)
	ori $0 , $29, 20241
	ori $29, $0 , 0
	nop 
	nop 
	lb $25, 98($29)
	ori $31, $0 , 0
	nop 
	lh $12, 32($31)
	andi $0 , $29, 26169
	ori $0 , $31, 52052
	sltu $25, $25, $31
	ori $29, $0 , 0
	sh $12, 92($29)
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 5027
	lui $2 , 22595
	lui $10, 19482
	lui $21, 762
	lui $31, 10108
	addi $31, $21, -20223
	sub $2 , $10, $21
	ori $10, $0 , 0
	lh $31, 54($10)
	addi $2 , $10, -21544
	sub $21, $21, $21
	slt $21, $10, $31
	ori $2 , $0 , 0
	nop 
	nop 
	sb $31, 13($2)
	bne $10, $21, case_7_1
	addi $31, $2 , -11600
	ori $31, $0 , 0
	nop 
	lw $10, 76($31)
case_7_1:
	jal case_7_2
	andi $0 , $21, 42462
	or $21, $10, $21
	jal case_7_3
	and $31, $0 , $0 
	ori $0 , $0 , 0
	nop 
	sw $21, 36($0)
case_7_2:
	ori $21, $0 , 0
	nop 
	nop 
	sb $10, 24($21)
	ori $0 , $0 , 0
	lb $2 , 53($0)
	jr $31
	addi $2 , $2 , -25174
case_7_3:
	jal case_7_4
	ori $21, $21, 49981
	ori $21, $0 , 0
	lh $0 , 18($21)
	jal case_7_5
	ori $10, $31, 15858
	ori $2 , $0 , 0
	lb $31, 30($2)
case_7_4:
	sub $2 , $2 , $0 
	slt $2 , $2 , $10
	jr $31
	and $21, $2 , $10
case_7_5:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 62461
	lui $11, 33095
	lui $22, 41629
	lui $25, 4410
	lui $31, 8938
	andi $11, $31, 48411
	ori $22, $0 , 0
	nop 
	nop 
	sb $25, 1($22)
	addi $11, $11, -31402
	addi $0 , $11, 14615
	addi $31, $11, -4018
	bne $22, $0 , case_8_1
	sub $31, $11, $11
	sub $22, $25, $31
case_8_1:
	jal case_8_2
	addi $22, $11, 921
	andi $25, $0 , 4320
	jal case_8_3
	ori $25, $31, 37723
	ori $0 , $0 , 0
	nop 
	sw $0 , 88($0)
case_8_2:
	ori $25, $0 , 0
	nop 
	nop 
	sh $25, 8($25)
	ori $11, $0 , 0
	nop 
	nop 
	sb $22, 97($11)
	jr $31
	andi $11, $31, 864
case_8_3:
	bne $11, $22, case_8_4
	addi $11, $11, -5201
	andi $0 , $11, 42058
case_8_4:
	bne $22, $11, case_8_5
	addi $25, $11, -303
	ori $11, $0 , 0
	sh $31, 60($11)
case_8_5:
	ori $31, $0 , 0
	sh $22, 38($31)
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 63345
	lui $7 , 24940
	lui $19, 2023
	lui $26, 28182
	lui $31, 30042
	andi $26, $26, 30293
	sltu $7 , $19, $7 
	jal case_9_1
	addi $7 , $0 , -31503
	ori $31, $7 , 8498
	jal case_9_2
	addi $7 , $7 , 28276
	ori $19, $26, 60514
case_9_1:
	add $7 , $0 , $26
	addi $19, $26, 30438
	jr $31
	addi $19, $19, -10958
case_9_2:
	sltu $0 , $0 , $7 
	addi $19, $19, 23490
	addi $31, $26, -9248
	sltu $26, $26, $0 
	ori $0 , $0 , 0
	lb $0 , 4($0)
	sltu $7 , $0 , $7 
	jal case_9_3
	addi $26, $19, 19770
	ori $7 , $0 , 0
	lb $31, 11($7)
	jal case_9_4
	addi $19, $26, -3879
	ori $7 , $0 , 12005
case_9_3:
	sltu $26, $0 , $7 
	or $19, $26, $0 
	jr $31
	ori $31, $0 , 0
	nop 
	lb $7 , 99($31)
case_9_4:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 18600
	lui $2 , 18104
	lui $4 , 44147
	lui $7 , 61899
	lui $31, 52164
	addi $0 , $31, 15070
	jal case_10_1
	and $4 , $2 , $0 
	sltu $0 , $31, $7 
	jal case_10_2
	ori $31, $7 , 6669
	addi $7 , $7 , 1801
case_10_1:
	add $7 , $0 , $0 
	ori $0 , $4 , 50424
	jr $31
	ori $7 , $0 , 0
	nop 
	sw $0 , 0($7)
case_10_2:
	and $31, $0 , $7 
	or $2 , $0 , $31
	slt $31, $0 , $31
	jal case_10_3
	andi $4 , $4 , 60086
	andi $7 , $31, 58722
	jal case_10_4
	andi $0 , $31, 63829
	ori $7 , $7 , 14323
case_10_3:
	addi $0 , $2 , -29006
	ori $0 , $0 , 0
	nop 
	nop 
	sb $7 , 48($0)
	jr $31
	ori $7 , $7 , 27197
case_10_4:
	sub $0 , $0 , $4 
	jal case_10_5
	sub $7 , $0 , $4 
	ori $2 , $0 , 0
	nop 
	nop 
	sh $31, 60($2)
	jal case_10_6
	or $0 , $31, $7 
	sub $2 , $4 , $31
case_10_5:
	ori $7 , $0 , 0
	nop 
	lw $0 , 36($7)
	addi $4 , $7 , -20118
	jr $31
	addi $2 , $7 , -21986
case_10_6:
	ori $31, $0 , 0
	nop 
	sw $7 , 92($31)
	addi $4 , $4 , 11896
	lui $1 , 0
case_10_end:
