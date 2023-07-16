.text
case_1_begin:
	lui $0 , 37623
	lui $9 , 56369
	lui $20, 17558
	lui $26, 20588
	lui $31, 9368
	jal case_1_1
	addi $20, $0 , -30041
	addi $0 , $20, 9615
	jal case_1_2
	ori $0 , $20, 35820
	ori $9 , $0 , 0
	nop 
	nop 
	lw $9 , 24($9)
case_1_1:
	andi $0 , $9 , 47823
	ori $9 , $0 , 1803
	jr $31
	andi $26, $31, 25532
case_1_2:
	bne $9 , $26, case_1_3
	or $9 , $0 , $20
	and $0 , $9 , $26
case_1_3:
	jal case_1_4
	ori $20, $9 , 59270
	addi $31, $20, -16347
	jal case_1_5
	ori $9 , $31, 7199
	andi $26, $31, 28408
case_1_4:
	ori $0 , $9 , 34567
	or $0 , $20, $20
	jr $31
	sub $0 , $9 , $26
case_1_5:
	ori $0 , $0 , 0
	nop 
	sh $9 , 58($0)
	andi $31, $31, 33406
	ori $31, $31, 21748
	ori $0 , $0 , 0
	sb $20, 14($0)
	ori $0 , $0 , 0
	lw $26, 84($0)
	andi $0 , $26, 21322
	ori $31, $0 , 0
	sh $20, 12($31)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 55421
	lui $3 , 5793
	lui $15, 1510
	lui $26, 45803
	lui $31, 50297
	jal case_2_1
	and $3 , $26, $0 
	ori $0 , $15, 1499
	jal case_2_2
	addi $0 , $3 , 7218
	sltu $26, $3 , $15
case_2_1:
	ori $26, $0 , 0
	nop 
	lh $3 , 64($26)
	sub $26, $15, $0 
	jr $31
	ori $31, $0 , 0
	sh $31, 32($31)
case_2_2:
	slt $3 , $26, $26
	sltu $0 , $31, $3 
	jal case_2_3
	ori $26, $15, 21379
	addi $0 , $0 , -18109
	jal case_2_4
	ori $0 , $31, 4994
	ori $3 , $26, 8650
case_2_3:
	addi $3 , $15, 17281
	ori $0 , $26, 61011
	jr $31
	andi $15, $31, 46954
case_2_4:
	bne $0 , $3 , case_2_5
	ori $26, $15, 20634
	ori $3 , $0 , 0
	nop 
	nop 
	lb $15, 18($3)
case_2_5:
	bne $0 , $0 , case_2_6
	andi $0 , $3 , 32076
	ori $26, $15, 22981
case_2_6:
	ori $26, $0 , 0
	lh $0 , 12($26)
	addi $3 , $0 , -28992
	ori $26, $0 , 0
	nop 
	nop 
	sw $26, 40($26)
	ori $15, $0 , 0
	nop 
	lb $3 , 72($15)
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 2752
	lui $2 , 56864
	lui $8 , 16182
	lui $30, 22696
	lui $31, 51034
	ori $0 , $0 , 0
	lw $31, 24($0)
	ori $31, $0 , 0
	lw $30, 28($31)
	jal case_3_1
	addi $30, $30, -2443
	ori $8 , $0 , 0
	lw $2 , 52($8)
	jal case_3_2
	ori $0 , $8 , 18259
	ori $30, $0 , 0
	nop 
	sh $2 , 78($30)
case_3_1:
	slt $30, $0 , $8 
	sub $30, $2 , $2 
	jr $31
	ori $2 , $0 , 0
	lb $2 , 54($2)
case_3_2:
	ori $31, $0 , 0
	nop 
	lh $8 , 58($31)
	addi $2 , $30, -19150
	ori $8 , $0 , 0
	nop 
	nop 
	sh $30, 14($8)
	addi $30, $8 , 23460
	andi $0 , $31, 6227
	ori $0 , $0 , 0
	nop 
	sh $2 , 24($0)
	ori $31, $0 , 0
	nop 
	nop 
	sh $2 , 10($31)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 19705
	lui $6 , 13738
	lui $10, 3813
	lui $21, 16641
	lui $31, 47219
	ori $6 , $0 , 0
	nop 
	nop 
	lb $0 , 33($6)
	jal case_4_1
	addi $0 , $0 , 16876
	ori $6 , $0 , 0
	nop 
	nop 
	sh $0 , 38($6)
	jal case_4_2
	slt $31, $31, $31
	ori $31, $0 , 0
	nop 
	nop 
	lb $21, 24($31)
case_4_1:
	ori $10, $0 , 0
	nop 
	nop 
	lb $6 , 71($10)
	ori $0 , $0 , 0
	nop 
	lw $6 , 84($0)
	jr $31
	addi $31, $0 , 28146
case_4_2:
	ori $31, $0 , 0
	nop 
	nop 
	sw $10, 80($31)
	ori $6 , $0 , 0
	nop 
	lw $21, 56($6)
	jal case_4_3
	sltu $10, $6 , $6 
	ori $21, $0 , 0
	sb $10, 43($21)
	jal case_4_4
	slt $21, $0 , $21
	ori $6 , $0 , 0
	nop 
	sw $6 , 56($6)
case_4_3:
	ori $10, $0 , 0
	nop 
	sw $0 , 24($10)
	and $10, $10, $10
	jr $31
	slt $10, $0 , $10
case_4_4:
	ori $6 , $6 , 59831
	ori $21, $31, 11179
	ori $6 , $0 , 0
	nop 
	nop 
	sh $6 , 2($6)
	ori $21, $0 , 2426
	ori $0 , $6 , 57997
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 42970
	lui $2 , 64680
	lui $15, 15310
	lui $18, 59983
	lui $31, 10047
	ori $18, $0 , 0
	sh $2 , 8($18)
	addi $18, $31, 30329
	ori $31, $0 , 0
	nop 
	nop 
	lb $18, 69($31)
	ori $18, $0 , 0
	sb $15, 2($18)
	and $2 , $0 , $2 
	ori $15, $0 , 0
	sb $0 , 23($15)
	jal case_5_1
	andi $2 , $2 , 43529
	addi $2 , $31, 31575
	jal case_5_2
	ori $18, $18, 698
	addi $0 , $31, -12928
case_5_1:
	ori $18, $0 , 0
	nop 
	lw $2 , 92($18)
	ori $18, $0 , 0
	sh $2 , 32($18)
	jr $31
	andi $31, $18, 144
case_5_2:
	ori $2 , $0 , 0
	nop 
	sb $15, 99($2)
	jal case_5_3
	addi $0 , $2 , 17473
	ori $2 , $0 , 0
	nop 
	lw $0 , 96($2)
	jal case_5_4
	addi $0 , $0 , -17269
	andi $0 , $0 , 31630
case_5_3:
	sltu $0 , $18, $18
	addi $0 , $18, -22254
	jr $31
	andi $31, $18, 53019
case_5_4:
	ori $18, $0 , 0
	sw $2 , 88($18)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 32748
	lui $12, 62332
	lui $19, 49405
	lui $22, 57465
	lui $31, 26603
	addi $12, $12, -4824
	ori $0 , $19, 53170
	ori $19, $0 , 0
	nop 
	sh $12, 10($19)
	beq $12, $12, case_6_1
	sub $31, $0 , $31
	andi $12, $19, 64583
case_6_1:
	addi $12, $12, -21552
	ori $19, $0 , 0
	nop 
	nop 
	lb $12, 24($19)
	or $31, $22, $22
	andi $22, $22, 59437
	ori $31, $0 , 0
	nop 
	lb $12, 99($31)
	or $12, $22, $22
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 42509
	lui $5 , 3336
	lui $10, 972
	lui $26, 22014
	lui $31, 1542
	ori $0 , $5 , 53071
	addi $0 , $0 , 17422
	jal case_7_1
	addi $0 , $10, -20860
	ori $26, $0 , 0
	sb $31, 26($26)
	jal case_7_2
	ori $0 , $0 , 61086
	ori $31, $0 , 0
	lw $5 , 44($31)
case_7_1:
	ori $5 , $0 , 0
	sh $10, 52($5)
	ori $5 , $0 , 0
	nop 
	nop 
	lw $10, 64($5)
	jr $31
	ori $31, $0 , 0
	sh $0 , 94($31)
case_7_2:
	ori $26, $0 , 0
	nop 
	nop 
	lb $26, 17($26)
	ori $26, $0 , 0
	nop 
	sw $10, 12($26)
	slt $5 , $5 , $5 
	ori $31, $0 , 0
	lw $31, 48($31)
	ori $10, $0 , 0
	nop 
	nop 
	sb $0 , 81($10)
	andi $10, $0 , 29070
	jal case_7_3
	addi $0 , $26, -10931
	ori $31, $0 , 0
	nop 
	lb $10, 49($31)
	jal case_7_4
	or $5 , $0 , $5 
	andi $31, $0 , 49633
case_7_3:
	addi $26, $26, -30868
	ori $0 , $0 , 0
	lh $10, 70($0)
	jr $31
	ori $5 , $0 , 0
	lb $31, 55($5)
case_7_4:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 25861
	lui $8 , 59787
	lui $27, 58259
	lui $28, 22895
	lui $31, 38327
	beq $0 , $8 , case_8_1
	addi $31, $8 , -7365
	add $0 , $31, $0 
case_8_1:
	ori $0 , $0 , 0
	lh $8 , 24($0)
	ori $0 , $0 , 0
	nop 
	nop 
	sb $28, 1($0)
	andi $0 , $27, 11677
	ori $31, $0 , 0
	nop 
	nop 
	lh $8 , 76($31)
	addi $27, $27, 20284
	andi $28, $27, 51943
	sltu $8 , $27, $27
	ori $27, $0 , 0
	nop 
	nop 
	sb $0 , 31($27)
	beq $8 , $31, case_8_2
	sltu $28, $8 , $0 
	ori $31, $27, 29826
case_8_2:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 50384
	lui $12, 30796
	lui $15, 43752
	lui $19, 32816
	lui $31, 41205
	andi $31, $19, 2918
	addi $0 , $12, -2905
	ori $15, $0 , 0
	nop 
	lw $19, 72($15)
	andi $19, $19, 6817
	or $12, $31, $12
	ori $15, $0 , 0
	nop 
	nop 
	lh $15, 74($15)
	ori $0 , $15, 2274
	ori $0 , $0 , 0
	nop 
	nop 
	sw $12, 48($0)
	addi $12, $12, -18995
	addi $12, $12, -30285
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 11770
	lui $5 , 55340
	lui $19, 37097
	lui $30, 7692
	lui $31, 54429
	and $31, $0 , $5 
	jal case_10_1
	addi $30, $5 , -29025
	ori $19, $31, 19212
	jal case_10_2
	or $5 , $31, $5 
	addi $5 , $5 , -2141
case_10_1:
	ori $0 , $0 , 0
	sb $30, 6($0)
	ori $30, $0 , 0
	nop 
	nop 
	lh $30, 58($30)
	jr $31
	ori $19, $0 , 0
	sb $19, 8($19)
case_10_2:
	ori $31, $0 , 0
	sb $19, 38($31)
	jal case_10_3
	ori $0 , $19, 28815
	addi $0 , $19, -16784
	jal case_10_4
	andi $31, $30, 38784
	ori $30, $19, 39088
case_10_3:
	addi $5 , $30, 7264
	ori $5 , $0 , 0
	nop 
	lh $5 , 86($5)
	jr $31
	and $30, $31, $19
case_10_4:
	ori $30, $5 , 7455
	ori $30, $0 , 0
	nop 
	sb $5 , 20($30)
	beq $30, $19, case_10_5
	addi $0 , $0 , -25496
	add $31, $5 , $0 
case_10_5:
	ori $5 , $0 , 0
	nop 
	nop 
	sh $0 , 4($5)
	bne $5 , $30, case_10_6
	addi $31, $31, -1738
	ori $19, $0 , 0
	sb $30, 8($19)
case_10_6:
	add $5 , $30, $30
	lui $1 , 0
case_10_end:
