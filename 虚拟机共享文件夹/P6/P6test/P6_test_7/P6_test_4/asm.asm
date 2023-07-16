.text
case_1_begin:
	lui $0 , 59283
	lui $1 , 44945
	lui $9 , 14017
	lui $12, 13020
	lui $31, 10252
	ori $1 , $0 , 0
	nop 
	nop 
	sh $1 , 4($1)
	ori $9 , $0 , 0
	nop 
	nop 
	lb $12, 2($9)
	andi $1 , $12, 26017
	ori $31, $0 , 0
	sb $1 , 69($31)
	ori $1 , $0 , 0
	nop 
	nop 
	sw $31, 96($1)
	sub $1 , $0 , $12
	sub $1 , $9 , $0 
	addi $12, $31, -6603
	slt $0 , $9 , $0 
	ori $9 , $0 , 0
	nop 
	lw $31, 56($9)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 15889
	lui $6 , 39279
	lui $24, 43913
	lui $30, 7153
	lui $31, 45852
	sltu $6 , $31, $31
	beq $30, $6 , case_2_1
	ori $6 , $0 , 38429
	add $24, $0 , $24
case_2_1:
	sltu $30, $30, $30
	jal case_2_2
	addi $6 , $6 , 3687
	slt $30, $31, $0 
	jal case_2_3
	addi $0 , $6 , -30422
	slt $30, $24, $31
case_2_2:
	ori $24, $0 , 0
	nop 
	nop 
	lw $30, 12($24)
	ori $6 , $0 , 0
	lh $6 , 42($6)
	jr $31
	or $6 , $24, $30
case_2_3:
	ori $6 , $0 , 0
	nop 
	sh $30, 36($6)
	andi $24, $24, 29366
	andi $6 , $31, 30898
	ori $24, $0 , 0
	sh $0 , 80($24)
	and $31, $6 , $30
	and $31, $31, $31
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 59742
	lui $11, 53024
	lui $18, 22661
	lui $26, 26529
	lui $31, 61647
	slt $26, $31, $26
	addi $0 , $18, -13430
	add $18, $11, $0 
	sltu $0 , $0 , $0 
	ori $11, $0 , 0
	nop 
	nop 
	lb $31, 81($11)
	jal case_3_1
	and $0 , $18, $0 
	add $0 , $11, $11
	jal case_3_2
	and $0 , $11, $26
	or $18, $18, $26
case_3_1:
	ori $26, $0 , 0
	nop 
	lw $26, 48($26)
	ori $11, $0 , 0
	lh $0 , 44($11)
	jr $31
	ori $11, $26, 2823
case_3_2:
	jal case_3_3
	ori $11, $11, 24799
	ori $11, $0 , 0
	nop 
	sh $11, 70($11)
	jal case_3_4
	sltu $31, $0 , $31
	add $0 , $31, $0 
case_3_3:
	ori $11, $0 , 0
	nop 
	nop 
	sb $0 , 68($11)
	ori $26, $0 , 63854
	jr $31
	ori $0 , $0 , 0
	sb $31, 42($0)
case_3_4:
	jal case_3_5
	addi $18, $11, -3165
	andi $11, $26, 59779
	jal case_3_6
	and $31, $0 , $0 
	andi $31, $11, 9040
case_3_5:
	andi $11, $11, 17774
	addi $18, $18, -7521
	jr $31
	ori $31, $0 , 0
	nop 
	sh $31, 0($31)
case_3_6:
	ori $11, $0 , 0
	lw $0 , 92($11)
	addi $18, $31, -2617
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 39220
	lui $3 , 51582
	lui $14, 26135
	lui $22, 28286
	lui $31, 35858
	bne $22, $31, case_4_1
	ori $3 , $0 , 22203
	addi $3 , $14, -18278
case_4_1:
	ori $3 , $0 , 0
	sw $3 , 64($3)
	andi $0 , $22, 27543
	ori $0 , $0 , 0
	nop 
	nop 
	sh $22, 24($0)
	addi $14, $3 , -8970
	jal case_4_2
	addi $0 , $14, 23705
	ori $3 , $31, 65209
	jal case_4_3
	addi $14, $3 , 24205
	andi $3 , $3 , 60425
case_4_2:
	addi $14, $0 , 31667
	ori $0 , $0 , 0
	nop 
	nop 
	sb $3 , 27($0)
	jr $31
	sltu $3 , $3 , $0 
case_4_3:
	jal case_4_4
	andi $14, $0 , 25081
	ori $14, $0 , 0
	lw $0 , 8($14)
	jal case_4_5
	addi $0 , $3 , -31812
	addi $31, $22, -21999
case_4_4:
	ori $0 , $0 , 0
	sw $22, 44($0)
	ori $22, $0 , 0
	nop 
	nop 
	sh $3 , 32($22)
	jr $31
	addi $22, $22, 14680
case_4_5:
	jal case_4_6
	ori $14, $0 , 47515
	ori $31, $0 , 0
	sw $0 , 84($31)
	jal case_4_7
	and $0 , $14, $14
	ori $3 , $0 , 37921
case_4_6:
	ori $0 , $0 , 0
	lh $14, 48($0)
	andi $14, $0 , 52488
	jr $31
	slt $31, $0 , $0 
case_4_7:
	addi $0 , $31, -25148
	addi $14, $14, 32292
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 26033
	lui $7 , 1811
	lui $17, 38297
	lui $24, 4543
	lui $31, 25159
	bne $0 , $24, case_5_1
	or $31, $31, $31
	sub $31, $7 , $7 
case_5_1:
	ori $17, $0 , 0
	nop 
	nop 
	lb $31, 43($17)
	addi $0 , $17, -13729
	bne $0 , $7 , case_5_2
	sub $31, $17, $17
	ori $7 , $0 , 0
	nop 
	nop 
	lw $0 , 24($7)
case_5_2:
	ori $31, $0 , 0
	nop 
	nop 
	lw $24, 68($31)
	ori $24, $0 , 0
	lh $17, 12($24)
	slt $24, $17, $17
	addi $31, $0 , -27540
	ori $0 , $0 , 0
	nop 
	sb $0 , 26($0)
	andi $0 , $17, 8140
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 55311
	lui $7 , 38417
	lui $12, 42736
	lui $21, 4703
	lui $31, 21231
	addi $0 , $21, -21354
	jal case_6_1
	addi $12, $7 , -25536
	ori $0 , $12, 38049
	jal case_6_2
	addi $31, $21, -16371
	add $31, $12, $12
case_6_1:
	addi $21, $12, 32612
	and $12, $21, $12
	jr $31
	ori $7 , $0 , 33235
case_6_2:
	slt $12, $31, $0 
	ori $0 , $0 , 0
	nop 
	sw $0 , 4($0)
	bne $7 , $21, case_6_3
	andi $31, $12, 47695
	andi $7 , $21, 8440
case_6_3:
	sltu $21, $21, $21
	beq $31, $21, case_6_4
	or $31, $0 , $31
	ori $12, $31, 61858
case_6_4:
	jal case_6_5
	and $21, $12, $7 
	sub $31, $12, $0 
	jal case_6_6
	addi $21, $12, -4928
	sub $21, $7 , $12
case_6_5:
	sltu $21, $21, $0 
	addi $12, $7 , 30404
	jr $31
	ori $31, $0 , 0
	nop 
	lw $7 , 20($31)
case_6_6:
	bne $12, $7 , case_6_7
	or $0 , $21, $12
	ori $0 , $0 , 0
	sb $7 , 27($0)
case_6_7:
	ori $12, $0 , 0
	nop 
	sh $7 , 86($12)
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 11888
	lui $9 , 37582
	lui $18, 49044
	lui $20, 34885
	lui $31, 9474
	slt $20, $0 , $9 
	jal case_7_1
	and $20, $18, $9 
	ori $0 , $0 , 0
	lw $9 , 52($0)
	jal case_7_2
	addi $18, $0 , -16197
	andi $9 , $31, 1118
case_7_1:
	ori $0 , $0 , 0
	nop 
	nop 
	sb $20, 30($0)
	ori $9 , $0 , 0
	lw $9 , 60($9)
	jr $31
	addi $18, $18, -1426
case_7_2:
	addi $9 , $20, 14361
	ori $31, $31, 41085
	bne $9 , $18, case_7_3
	addi $20, $18, -11565
	ori $0 , $0 , 0
	lh $20, 42($0)
case_7_3:
	ori $31, $0 , 0
	sw $18, 8($31)
	andi $0 , $31, 10130
	ori $20, $0 , 0
	nop 
	sh $20, 30($20)
	jal case_7_4
	andi $18, $9 , 59558
	ori $9 , $0 , 0
	nop 
	nop 
	sw $0 , 48($9)
	jal case_7_5
	or $9 , $20, $31
	or $31, $9 , $31
case_7_4:
	addi $20, $9 , -16605
	ori $0 , $0 , 0
	sh $9 , 72($0)
	jr $31
	ori $31, $0 , 0
	nop 
	sb $18, 28($31)
case_7_5:
	ori $31, $0 , 0
	nop 
	sw $18, 44($31)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 1220
	lui $8 , 23562
	lui $13, 43049
	lui $23, 9272
	lui $31, 50022
	jal case_8_1
	addi $8 , $23, 21156
	addi $8 , $8 , 20232
	jal case_8_2
	and $23, $31, $31
	andi $8 , $31, 35760
case_8_1:
	andi $8 , $13, 6108
	andi $0 , $13, 35924
	jr $31
	ori $31, $23, 24601
case_8_2:
	beq $31, $23, case_8_3
	addi $8 , $8 , 23441
	ori $23, $0 , 0
	sb $31, 45($23)
case_8_3:
	andi $8 , $23, 7115
	addi $31, $31, 10324
	ori $31, $0 , 0
	nop 
	sh $13, 42($31)
	ori $8 , $0 , 0
	sb $13, 81($8)
	ori $0 , $0 , 0
	nop 
	nop 
	sb $23, 11($0)
	jal case_8_4
	add $0 , $0 , $23
	ori $31, $0 , 0
	nop 
	nop 
	lh $8 , 48($31)
	jal case_8_5
	and $8 , $8 , $31
	sub $23, $0 , $31
case_8_4:
	ori $13, $0 , 0
	nop 
	lh $8 , 42($13)
	ori $0 , $13, 48278
	jr $31
	addi $23, $23, 23798
case_8_5:
	andi $0 , $13, 19748
	add $31, $0 , $0 
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 36322
	lui $9 , 58184
	lui $10, 14851
	lui $30, 12589
	lui $31, 32879
	and $10, $9 , $9 
	jal case_9_1
	and $9 , $0 , $10
	ori $31, $0 , 0
	nop 
	lh $0 , 30($31)
	jal case_9_2
	add $0 , $30, $10
	ori $31, $0 , 0
	nop 
	sw $10, 52($31)
case_9_1:
	ori $9 , $10, 5554
	ori $10, $0 , 0
	nop 
	nop 
	lh $0 , 20($10)
	jr $31
	ori $0 , $0 , 0
	lw $31, 4($0)
case_9_2:
	and $31, $31, $10
	ori $31, $0 , 0
	lh $10, 50($31)
	jal case_9_3
	addi $30, $9 , -29903
	ori $9 , $0 , 0
	sb $0 , 65($9)
	jal case_9_4
	andi $0 , $10, 27344
	and $31, $9 , $0 
case_9_3:
	ori $30, $0 , 0
	nop 
	nop 
	sb $10, 26($30)
	ori $9 , $0 , 0
	nop 
	nop 
	sw $30, 88($9)
	jr $31
	or $9 , $9 , $9 
case_9_4:
	jal case_9_5
	sltu $10, $9 , $10
	andi $31, $31, 54376
	jal case_9_6
	and $9 , $0 , $9 
	and $10, $0 , $31
case_9_5:
	addi $0 , $30, -3591
	ori $30, $0 , 0
	nop 
	nop 
	sw $9 , 28($30)
	jr $31
	add $10, $31, $31
case_9_6:
	addi $30, $31, -22506
	ori $9 , $0 , 0
	nop 
	nop 
	lw $31, 32($9)
	ori $30, $0 , 0
	nop 
	sh $9 , 0($30)
	addi $31, $30, 15907
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 43499
	lui $1 , 39248
	lui $15, 28285
	lui $23, 28554
	lui $31, 12497
	andi $31, $15, 15182
	bne $1 , $23, case_10_1
	or $0 , $0 , $1 
	ori $23, $0 , 0
	lw $23, 92($23)
case_10_1:
	addi $1 , $0 , -6293
	ori $15, $0 , 0
	sh $15, 82($15)
	addi $15, $15, 2326
	ori $15, $0 , 0
	nop 
	lw $15, 80($15)
	beq $23, $1 , case_10_2
	addi $1 , $31, -3371
	andi $1 , $15, 65041
case_10_2:
	jal case_10_3
	andi $1 , $15, 38728
	ori $0 , $1 , 30923
	jal case_10_4
	ori $15, $0 , 41656
	ori $1 , $0 , 0
	nop 
	nop 
	lw $23, 24($1)
case_10_3:
	ori $1 , $0 , 0
	nop 
	sb $1 , 66($1)
	ori $23, $0 , 0
	nop 
	sh $0 , 34($23)
	jr $31
	ori $23, $0 , 0
	nop 
	nop 
	sh $0 , 20($23)
case_10_4:
	bne $0 , $15, case_10_5
	or $23, $23, $31
	ori $31, $0 , 0
	nop 
	lb $23, 68($31)
case_10_5:
	ori $1 , $0 , 0
	nop 
	nop 
	sh $0 , 72($1)
	lui $1 , 0
case_10_end:
