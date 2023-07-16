.text
case_1_begin:
	lui $0 , 62519
	lui $1 , 62070
	lui $4 , 28791
	lui $27, 13653
	lui $31, 19082
	ori $27, $0 , 0
	lw $27, 20($27)
	andi $1 , $1 , 61207
	ori $0 , $0 , 0
	nop 
	sw $31, 8($0)
	ori $4 , $0 , 0
	sh $1 , 56($4)
	ori $4 , $0 , 0
	nop 
	lh $0 , 12($4)
	beq $4 , $0 , case_1_1
	ori $1 , $1 , 10865
	addi $1 , $31, -3204
case_1_1:
	jal case_1_2
	andi $27, $1 , 40932
	addi $27, $1 , 4041
	jal case_1_3
	addi $1 , $0 , 11685
	add $4 , $31, $31
case_1_2:
	andi $27, $27, 55640
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 72($0)
	jr $31
	sltu $4 , $4 , $0 
case_1_3:
	sub $1 , $0 , $1 
	sltu $4 , $1 , $1 
	ori $4 , $4 , 25983
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 17937
	lui $6 , 7967
	lui $7 , 48451
	lui $19, 36502
	lui $31, 16536
	ori $6 , $0 , 0
	nop 
	nop 
	sb $0 , 40($6)
	beq $7 , $7 , case_2_1
	or $6 , $19, $31
	sub $6 , $6 , $7 
case_2_1:
	ori $6 , $0 , 0
	nop 
	sb $19, 75($6)
	bne $19, $31, case_2_2
	addi $0 , $0 , 1584
	andi $19, $19, 30876
case_2_2:
	sub $7 , $19, $6 
	ori $6 , $0 , 0
	nop 
	lb $19, 37($6)
	ori $6 , $0 , 0
	nop 
	nop 
	lb $7 , 77($6)
	ori $31, $0 , 0
	nop 
	nop 
	lb $19, 99($31)
	ori $19, $0 , 0
	nop 
	lb $6 , 61($19)
	ori $19, $0 , 4021
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 41302
	lui $11, 42489
	lui $24, 4003
	lui $30, 60673
	lui $31, 48862
	jal case_3_1
	sltu $11, $11, $30
	andi $31, $0 , 30923
	jal case_3_2
	and $30, $24, $11
	and $0 , $31, $30
case_3_1:
	add $11, $30, $24
	ori $11, $0 , 0
	nop 
	lh $24, 24($11)
	jr $31
	ori $24, $0 , 0
	nop 
	lh $30, 46($24)
case_3_2:
	bne $24, $31, case_3_3
	add $30, $31, $30
	ori $30, $0 , 0
	nop 
	nop 
	sw $0 , 4($30)
case_3_3:
	ori $0 , $0 , 0
	nop 
	sh $24, 56($0)
	ori $24, $0 , 0
	nop 
	lh $0 , 78($24)
	or $30, $30, $31
	bne $30, $24, case_3_4
	addi $11, $0 , -11846
	addi $24, $24, 9786
case_3_4:
	ori $30, $0 , 0
	nop 
	sb $31, 92($30)
	jal case_3_5
	and $30, $11, $24
	add $0 , $24, $11
	jal case_3_6
	add $24, $24, $11
	ori $31, $0 , 49028
case_3_5:
	andi $24, $24, 26143
	and $24, $11, $24
	jr $31
	ori $11, $0 , 0
	nop 
	lw $31, 48($11)
case_3_6:
	ori $31, $0 , 0
	nop 
	nop 
	lh $30, 50($31)
	ori $0 , $0 , 0
	nop 
	lw $0 , 88($0)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 35540
	lui $12, 64175
	lui $13, 29090
	lui $27, 29709
	lui $31, 26012
	jal case_4_1
	andi $12, $0 , 57674
	ori $27, $12, 57687
	jal case_4_2
	andi $13, $27, 53915
	ori $13, $0 , 0
	nop 
	nop 
	lw $13, 92($13)
case_4_1:
	slt $0 , $27, $13
	ori $27, $0 , 0
	nop 
	nop 
	lh $12, 76($27)
	jr $31
	addi $12, $13, -21470
case_4_2:
	ori $31, $0 , 0
	nop 
	nop 
	lw $0 , 84($31)
	ori $31, $0 , 0
	sw $31, 76($31)
	beq $0 , $12, case_4_3
	add $13, $31, $27
	add $13, $13, $31
case_4_3:
	andi $13, $13, 63708
	ori $0 , $0 , 0
	nop 
	sh $27, 86($0)
	ori $0 , $31, 51292
	sub $31, $13, $0 
	beq $31, $27, case_4_4
	and $12, $31, $31
	ori $27, $12, 59052
case_4_4:
	andi $0 , $27, 57560
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 61047
	lui $19, 24254
	lui $23, 42308
	lui $27, 11394
	lui $31, 39845
	bne $27, $27, case_5_1
	addi $19, $0 , 8417
	addi $0 , $19, -20239
case_5_1:
	bne $19, $0 , case_5_2
	ori $0 , $19, 63030
	ori $23, $0 , 0
	lb $27, 16($23)
case_5_2:
	addi $31, $23, 32539
	beq $0 , $31, case_5_3
	sltu $27, $31, $27
	addi $27, $23, 31770
case_5_3:
	ori $19, $0 , 0
	nop 
	lb $0 , 77($19)
	sltu $23, $31, $19
	addi $23, $0 , -11278
	beq $19, $31, case_5_4
	sub $19, $0 , $27
	ori $31, $0 , 0
	nop 
	sw $23, 16($31)
case_5_4:
	andi $0 , $31, 56875
	ori $27, $0 , 0
	nop 
	nop 
	sb $19, 18($27)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 42489
	lui $4 , 43498
	lui $7 , 25791
	lui $29, 36137
	lui $31, 52124
	add $7 , $31, $0 
	jal case_6_1
	and $7 , $7 , $7 
	or $31, $29, $29
	jal case_6_2
	addi $0 , $29, 14390
	andi $7 , $4 , 60918
case_6_1:
	addi $4 , $7 , -7115
	addi $7 , $0 , -4152
	jr $31
	ori $4 , $7 , 37165
case_6_2:
	addi $7 , $7 , -21430
	jal case_6_3
	addi $29, $4 , -11011
	ori $31, $0 , 0
	nop 
	sb $0 , 47($31)
	jal case_6_4
	ori $29, $7 , 33595
	ori $7 , $0 , 0
	sw $29, 64($7)
case_6_3:
	ori $4 , $0 , 0
	sw $4 , 92($4)
	ori $4 , $0 , 0
	nop 
	lb $4 , 27($4)
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	lw $7 , 68($0)
case_6_4:
	add $4 , $4 , $29
	ori $0 , $0 , 0
	lb $29, 70($0)
	ori $29, $0 , 0
	nop 
	nop 
	lh $29, 68($29)
	jal case_6_5
	addi $4 , $4 , -24927
	addi $29, $31, -21885
	jal case_6_6
	sltu $4 , $31, $4 
	andi $29, $31, 13837
case_6_5:
	andi $29, $4 , 26238
	addi $29, $4 , 7284
	jr $31
	ori $7 , $0 , 0
	nop 
	sw $0 , 16($7)
case_6_6:
	jal case_6_7
	addi $0 , $4 , -29186
	andi $4 , $0 , 5352
	jal case_6_8
	or $0 , $29, $31
	or $4 , $4 , $0 
case_6_7:
	ori $29, $0 , 0
	nop 
	sw $7 , 0($29)
	addi $7 , $0 , 20106
	jr $31
	or $7 , $0 , $0 
case_6_8:
	beq $0 , $4 , case_6_9
	sltu $31, $0 , $4 
	addi $4 , $31, 24599
case_6_9:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 40426
	lui $1 , 63951
	lui $17, 11780
	lui $28, 40835
	lui $31, 48455
	addi $1 , $31, 23776
	ori $31, $0 , 0
	nop 
	sw $17, 40($31)
	ori $28, $0 , 0
	nop 
	sh $1 , 32($28)
	ori $0 , $17, 54830
	ori $17, $0 , 0
	nop 
	lb $31, 74($17)
	andi $28, $0 , 46014
	jal case_7_1
	ori $0 , $0 , 46102
	ori $31, $0 , 0
	nop 
	sh $28, 2($31)
	jal case_7_2
	andi $1 , $31, 42055
	addi $28, $0 , 2211
case_7_1:
	andi $17, $28, 49240
	ori $28, $0 , 0
	nop 
	lw $1 , 16($28)
	jr $31
	ori $0 , $0 , 16612
case_7_2:
	ori $1 , $0 , 0
	lw $28, 84($1)
	addi $0 , $28, 15992
	ori $1 , $0 , 0
	nop 
	nop 
	sh $31, 28($1)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 15206
	lui $3 , 31349
	lui $22, 27795
	lui $23, 58564
	lui $31, 70
	ori $23, $22, 41101
	beq $3 , $3 , case_8_1
	ori $22, $22, 6412
	sub $22, $22, $3 
case_8_1:
	jal case_8_2
	ori $23, $22, 46981
	ori $22, $0 , 0
	nop 
	sh $22, 6($22)
	jal case_8_3
	and $31, $23, $23
	slt $31, $31, $22
case_8_2:
	ori $22, $0 , 0
	nop 
	nop 
	sh $22, 22($22)
	addi $22, $22, 18458
	jr $31
	ori $22, $23, 56001
case_8_3:
	ori $3 , $0 , 0
	nop 
	nop 
	sb $23, 73($3)
	or $22, $3 , $31
	sltu $0 , $23, $0 
	ori $31, $0 , 0
	nop 
	nop 
	lb $3 , 92($31)
	ori $31, $0 , 0
	nop 
	nop 
	lh $0 , 56($31)
	ori $22, $0 , 0
	nop 
	sw $3 , 56($22)
	jal case_8_4
	and $0 , $0 , $3 
	ori $22, $0 , 0
	nop 
	nop 
	lb $0 , 36($22)
	jal case_8_5
	sub $31, $23, $31
	andi $0 , $22, 19449
case_8_4:
	and $22, $22, $0 
	ori $3 , $0 , 0
	sw $3 , 12($3)
	jr $31
	ori $31, $23, 65287
case_8_5:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 62612
	lui $7 , 7714
	lui $13, 21372
	lui $17, 10566
	lui $31, 57983
	sltu $17, $31, $31
	andi $0 , $17, 1807
	andi $13, $0 , 16630
	beq $31, $7 , case_9_1
	ori $17, $0 , 32953
	sltu $31, $13, $31
case_9_1:
	bne $13, $31, case_9_2
	andi $7 , $0 , 5326
	ori $17, $17, 11536
case_9_2:
	ori $17, $0 , 0
	sw $0 , 44($17)
	addi $17, $31, 22777
	andi $0 , $17, 34860
	jal case_9_3
	andi $7 , $13, 17281
	addi $7 , $31, 12091
	jal case_9_4
	addi $13, $17, 20529
	ori $7 , $0 , 0
	nop 
	sw $17, 76($7)
case_9_3:
	ori $17, $0 , 0
	nop 
	sh $13, 0($17)
	addi $13, $17, -9944
	jr $31
	andi $0 , $17, 61122
case_9_4:
	bne $7 , $0 , case_9_5
	sltu $0 , $0 , $17
	sltu $31, $13, $7 
case_9_5:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 21534
	lui $5 , 10013
	lui $6 , 29480
	lui $24, 37666
	lui $31, 4982
	andi $0 , $6 , 57187
	ori $5 , $0 , 0
	nop 
	nop 
	lw $31, 84($5)
	and $6 , $6 , $24
	beq $31, $6 , case_10_1
	addi $24, $31, -19869
	slt $5 , $5 , $0 
case_10_1:
	addi $5 , $0 , 15787
	ori $6 , $0 , 0
	nop 
	nop 
	lh $24, 10($6)
	ori $24, $31, 27338
	beq $24, $5 , case_10_2
	addi $31, $24, 3943
	addi $31, $6 , -5905
case_10_2:
	ori $6 , $0 , 0
	nop 
	nop 
	lh $5 , 86($6)
	bne $0 , $0 , case_10_3
	addi $6 , $31, -32699
	addi $5 , $31, -17137
case_10_3:
	lui $1 , 0
case_10_end:
