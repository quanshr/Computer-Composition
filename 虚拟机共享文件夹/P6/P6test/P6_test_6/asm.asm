.text
case_1_begin:
	lui $0 , 53472
	lui $8 , 49584
	lui $24, 59602
	lui $29, 54052
	lui $31, 34502
	beq $29, $8 , case_1_1
	ori $0 , $29, 42674
	ori $0 , $0 , 0
	sb $29, 70($0)
case_1_1:
	beq $24, $8 , case_1_2
	addi $8 , $0 , 4338
	ori $31, $0 , 0
	nop 
	nop 
	sw $0 , 32($31)
case_1_2:
	ori $0 , $0 , 0
	nop 
	sh $24, 88($0)
	ori $8 , $24, 56529
	beq $29, $8 , case_1_3
	addi $29, $29, 27749
	andi $29, $8 , 33412
case_1_3:
	addi $29, $31, -31003
	addi $8 , $29, -16207
	jal case_1_4
	slt $24, $0 , $24
	andi $24, $0 , 44197
	jal case_1_5
	addi $24, $29, -91
	andi $0 , $8 , 11990
case_1_4:
	ori $0 , $0 , 0
	nop 
	nop 
	lb $24, 0($0)
	andi $29, $29, 6159
	jr $31
	addi $24, $29, -7043
case_1_5:
	and $29, $0 , $31
	ori $0 , $29, 64914
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 8752
	lui $7 , 21852
	lui $19, 49156
	lui $27, 48486
	lui $31, 25595
	and $7 , $27, $27
	ori $7 , $0 , 0
	sb $19, 34($7)
	ori $0 , $0 , 0
	nop 
	lw $27, 96($0)
	ori $19, $31, 10570
	slt $31, $31, $31
	addi $19, $19, -23322
	jal case_2_1
	addi $0 , $7 , 13220
	ori $27, $0 , 0
	nop 
	lb $27, 99($27)
	jal case_2_2
	andi $27, $0 , 19996
	and $0 , $31, $31
case_2_1:
	ori $19, $0 , 0
	nop 
	nop 
	lw $27, 96($19)
	addi $7 , $7 , 31091
	jr $31
	andi $27, $0 , 36420
case_2_2:
	addi $27, $31, -3334
	ori $19, $0 , 0
	lw $27, 24($19)
	jal case_2_3
	addi $7 , $19, -2395
	ori $27, $0 , 0
	nop 
	nop 
	lb $7 , 10($27)
	jal case_2_4
	addi $19, $7 , 506
	andi $19, $7 , 37815
case_2_3:
	slt $0 , $7 , $27
	ori $27, $0 , 0
	lb $27, 64($27)
	jr $31
	ori $7 , $27, 1850
case_2_4:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 22651
	lui $28, 32804
	lui $29, 51621
	lui $30, 16260
	lui $31, 30194
	ori $28, $0 , 0
	sb $0 , 44($28)
	addi $30, $29, -19748
	addi $0 , $30, 14058
	ori $30, $31, 45415
	addi $29, $28, -13196
	addi $28, $31, 30753
	beq $30, $31, case_3_1
	andi $29, $0 , 57067
	sub $31, $0 , $0 
case_3_1:
	ori $0 , $0 , 0
	nop 
	nop 
	sh $30, 4($0)
	ori $0 , $0 , 17540
	ori $29, $0 , 0
	nop 
	nop 
	lb $31, 10($29)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 22614
	lui $17, 52760
	lui $19, 30100
	lui $21, 36451
	lui $31, 53040
	jal case_4_1
	sltu $21, $17, $0 
	ori $19, $0 , 0
	nop 
	nop 
	lw $21, 68($19)
	jal case_4_2
	andi $31, $31, 65158
	ori $17, $0 , 13743
case_4_1:
	ori $17, $0 , 19470
	ori $19, $19, 56875
	jr $31
	addi $19, $31, -26802
case_4_2:
	sltu $19, $0 , $21
	beq $17, $31, case_4_3
	ori $19, $31, 60738
	addi $17, $31, 29005
case_4_3:
	ori $21, $31, 32986
	beq $17, $19, case_4_4
	ori $0 , $0 , 113
	andi $0 , $0 , 24544
case_4_4:
	beq $19, $19, case_4_5
	or $0 , $21, $31
	add $31, $31, $31
case_4_5:
	ori $21, $0 , 0
	nop 
	nop 
	sh $21, 90($21)
	addi $21, $17, 27695
	andi $19, $0 , 7251
	ori $21, $0 , 0
	nop 
	nop 
	lh $31, 24($21)
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 1864
	lui $13, 53427
	lui $27, 4158
	lui $30, 34844
	lui $31, 47143
	ori $0 , $0 , 0
	sw $27, 60($0)
	ori $0 , $0 , 0
	nop 
	nop 
	sh $27, 22($0)
	jal case_5_1
	addi $0 , $27, 31091
	addi $13, $30, -11453
	jal case_5_2
	addi $27, $31, -19298
	ori $31, $0 , 0
	lh $27, 64($31)
case_5_1:
	andi $13, $30, 8350
	ori $0 , $0 , 0
	nop 
	nop 
	lh $13, 36($0)
	jr $31
	addi $31, $27, 20731
case_5_2:
	ori $31, $0 , 0
	nop 
	nop 
	lh $0 , 68($31)
	bne $30, $27, case_5_3
	andi $30, $30, 54643
	ori $27, $0 , 0
	nop 
	sh $0 , 6($27)
case_5_3:
	ori $27, $0 , 0
	lb $0 , 53($27)
	bne $30, $27, case_5_4
	addi $0 , $0 , -17359
	ori $27, $0 , 0
	nop 
	nop 
	sh $27, 46($27)
case_5_4:
	ori $0 , $0 , 0
	nop 
	lw $27, 84($0)
	addi $13, $31, 20920
	or $30, $27, $0 
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 40380
	lui $13, 35776
	lui $17, 50870
	lui $24, 33818
	lui $31, 15311
	ori $31, $0 , 0
	nop 
	sb $24, 87($31)
	jal case_6_1
	sltu $13, $0 , $13
	addi $0 , $0 , -21147
	jal case_6_2
	slt $24, $31, $24
	ori $24, $0 , 11430
case_6_1:
	ori $17, $0 , 0
	nop 
	nop 
	sb $13, 45($17)
	ori $24, $0 , 0
	nop 
	nop 
	lh $13, 36($24)
	jr $31
	ori $24, $0 , 0
	nop 
	nop 
	sh $13, 46($24)
case_6_2:
	ori $24, $0 , 0
	nop 
	sh $0 , 90($24)
	addi $31, $17, 12138
	addi $0 , $24, 12308
	ori $31, $0 , 0
	nop 
	nop 
	sh $17, 6($31)
	ori $0 , $0 , 0
	nop 
	nop 
	sb $13, 27($0)
	andi $13, $17, 13598
	andi $13, $24, 25023
	ori $13, $0 , 0
	sb $13, 42($13)
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 18105
	lui $9 , 20339
	lui $21, 30759
	lui $25, 40461
	lui $31, 53504
	or $25, $25, $31
	ori $0 , $0 , 0
	nop 
	lw $9 , 4($0)
	addi $0 , $25, 18334
	sub $31, $25, $25
	addi $25, $31, 3401
	jal case_7_1
	addi $25, $9 , -13564
	ori $9 , $21, 9825
	jal case_7_2
	addi $0 , $25, -23970
	ori $9 , $0 , 0
	sb $21, 65($9)
case_7_1:
	add $0 , $25, $9 
	ori $25, $0 , 0
	lb $25, 45($25)
	jr $31
	ori $25, $0 , 0
	sb $21, 62($25)
case_7_2:
	and $31, $21, $25
	ori $21, $0 , 0
	nop 
	nop 
	lw $31, 64($21)
	sub $0 , $21, $0 
	ori $25, $0 , 0
	nop 
	sw $31, 84($25)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 50741
	lui $2 , 60810
	lui $13, 60783
	lui $18, 53615
	lui $31, 36261
	ori $13, $2 , 52416
	ori $18, $31, 55042
	addi $13, $0 , 16816
	sltu $0 , $0 , $13
	jal case_8_1
	addi $0 , $2 , 7352
	add $2 , $2 , $13
	jal case_8_2
	or $2 , $18, $0 
	ori $13, $0 , 19544
case_8_1:
	ori $18, $0 , 0
	nop 
	nop 
	lh $2 , 56($18)
	ori $18, $0 , 45439
	jr $31
	sltu $18, $0 , $0 
case_8_2:
	ori $0 , $31, 62547
	beq $2 , $0 , case_8_3
	andi $18, $18, 40097
	addi $0 , $0 , 29255
case_8_3:
	jal case_8_4
	addi $13, $2 , -5751
	ori $2 , $0 , 0
	nop 
	nop 
	lw $13, 12($2)
	jal case_8_5
	sltu $13, $31, $2 
	andi $0 , $31, 24014
case_8_4:
	ori $0 , $0 , 0
	nop 
	lw $0 , 12($0)
	addi $18, $2 , 17622
	jr $31
	ori $18, $0 , 0
	nop 
	nop 
	lb $0 , 31($18)
case_8_5:
	jal case_8_6
	ori $2 , $18, 62032
	ori $2 , $0 , 0
	lb $18, 38($2)
	jal case_8_7
	or $31, $2 , $0 
	add $18, $13, $13
case_8_6:
	ori $13, $13, 22944
	ori $0 , $0 , 0
	nop 
	lb $2 , 56($0)
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	sb $18, 39($0)
case_8_7:
	ori $0 , $2 , 6768
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 64099
	lui $5 , 11908
	lui $8 , 38342
	lui $11, 6320
	lui $31, 55460
	andi $31, $0 , 34349
	ori $8 , $31, 14567
	sltu $11, $8 , $31
	add $5 , $31, $5 
	sub $0 , $0 , $31
	ori $31, $0 , 0
	nop 
	sh $0 , 54($31)
	add $0 , $31, $8 
	jal case_9_1
	or $5 , $5 , $8 
	ori $11, $0 , 0
	lh $31, 30($11)
	jal case_9_2
	andi $31, $5 , 683
	ori $0 , $0 , 0
	nop 
	sw $31, 72($0)
case_9_1:
	addi $11, $8 , -7621
	addi $5 , $5 , -21282
	jr $31
	ori $11, $0 , 0
	nop 
	lh $8 , 76($11)
case_9_2:
	ori $11, $0 , 0
	sh $0 , 22($11)
	jal case_9_3
	addi $0 , $5 , 9179
	andi $31, $11, 17645
	jal case_9_4
	addi $8 , $5 , -12755
	ori $0 , $0 , 0
	lw $8 , 40($0)
case_9_3:
	ori $8 , $0 , 0
	lb $5 , 55($8)
	slt $5 , $5 , $11
	jr $31
	add $11, $11, $31
case_9_4:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 24965
	lui $1 , 30361
	lui $4 , 45392
	lui $28, 11510
	lui $31, 51289
	jal case_10_1
	sltu $4 , $28, $0 
	ori $28, $0 , 0
	nop 
	sh $0 , 8($28)
	jal case_10_2
	addi $1 , $31, 7175
	ori $1 , $0 , 0
	nop 
	lw $4 , 36($1)
case_10_1:
	ori $28, $28, 3399
	ori $1 , $0 , 0
	nop 
	nop 
	sb $1 , 1($1)
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	lb $1 , 53($31)
case_10_2:
	or $0 , $28, $28
	ori $31, $0 , 0
	nop 
	lw $0 , 72($31)
	or $4 , $0 , $1 
	ori $1 , $0 , 0
	lb $28, 38($1)
	ori $31, $0 , 0
	nop 
	lw $31, 64($31)
	ori $31, $0 , 0
	nop 
	nop 
	lw $31, 32($31)
	or $4 , $1 , $28
	andi $1 , $31, 37731
	andi $1 , $1 , 57989
	lui $1 , 0
case_10_end:
