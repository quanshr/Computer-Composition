.text
case_1_begin:
	lui $0 , 61736
	lui $2 , 64354
	lui $11, 15257
	lui $23, 50093
	lui $31, 61507
	jal case_1_1
	sub $2 , $11, $11
	addi $2 , $0 , -245
	jal case_1_2
	ori $11, $0 , 3172
	ori $31, $0 , 0
	nop 
	nop 
	lh $31, 94($31)
case_1_1:
	sub $2 , $0 , $11
	ori $2 , $0 , 0
	nop 
	sh $0 , 96($2)
	jr $31
	addi $2 , $23, 8826
case_1_2:
	ori $23, $0 , 0
	nop 
	nop 
	lw $31, 72($23)
	addi $23, $11, -28992
	bne $2 , $23, case_1_3
	and $23, $23, $11
	addi $31, $31, -2037
case_1_3:
	addi $11, $23, -8227
	ori $2 , $0 , 0
	nop 
	nop 
	sw $2 , 4($2)
	ori $23, $0 , 0
	nop 
	lb $23, 35($23)
	ori $31, $0 , 0
	nop 
	nop 
	sh $2 , 18($31)
	addi $0 , $0 , 24923
	ori $31, $0 , 0
	nop 
	sb $31, 17($31)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 38788
	lui $24, 446
	lui $25, 38269
	lui $28, 49394
	lui $31, 12233
	addi $28, $25, -26311
	beq $25, $0 , case_2_1
	addi $28, $0 , -25961
	addi $0 , $25, -10955
case_2_1:
	and $0 , $31, $31
	bne $25, $28, case_2_2
	addi $0 , $25, 30676
	and $24, $24, $0 
case_2_2:
	beq $0 , $0 , case_2_3
	andi $31, $0 , 32627
	and $0 , $31, $31
case_2_3:
	ori $31, $0 , 0
	sw $28, 44($31)
	ori $25, $0 , 0
	lh $28, 54($25)
	ori $24, $0 , 0
	nop 
	nop 
	lb $25, 71($24)
	ori $24, $0 , 0
	lw $31, 56($24)
	ori $0 , $0 , 0
	nop 
	sb $0 , 18($0)
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 59504
	lui $2 , 31774
	lui $4 , 9249
	lui $23, 29165
	lui $31, 58133
	jal case_3_1
	slt $4 , $4 , $2 
	addi $31, $2 , 27791
	jal case_3_2
	slt $2 , $2 , $2 
	ori $31, $0 , 0
	nop 
	nop 
	lh $23, 94($31)
case_3_1:
	andi $0 , $2 , 2002
	ori $2 , $0 , 0
	nop 
	sb $4 , 86($2)
	jr $31
	ori $4 , $0 , 0
	nop 
	sb $0 , 84($4)
case_3_2:
	addi $31, $31, -1271
	beq $2 , $0 , case_3_3
	and $0 , $23, $2 
	ori $4 , $0 , 0
	sh $0 , 42($4)
case_3_3:
	addi $31, $4 , -10247
	jal case_3_4
	ori $4 , $23, 12700
	ori $31, $4 , 55343
	jal case_3_5
	slt $4 , $23, $23
	ori $4 , $4 , 57059
case_3_4:
	addi $23, $2 , -3194
	or $23, $23, $0 
	jr $31
	sltu $4 , $0 , $0 
case_3_5:
	bne $31, $0 , case_3_6
	or $23, $4 , $4 
	addi $23, $2 , -18317
case_3_6:
	jal case_3_7
	addi $23, $23, 20556
	ori $31, $0 , 0
	nop 
	sh $0 , 36($31)
	jal case_3_8
	slt $23, $2 , $4 
	addi $23, $4 , 27093
case_3_7:
	ori $2 , $0 , 0
	nop 
	nop 
	sh $4 , 44($2)
	addi $0 , $4 , -11100
	jr $31
	and $0 , $0 , $4 
case_3_8:
	ori $23, $0 , 0
	lw $2 , 96($23)
	jal case_3_9
	ori $4 , $23, 6944
	addi $4 , $0 , -18915
	jal case_3_10
	addi $23, $4 , -24466
	addi $2 , $0 , -24861
case_3_9:
	and $0 , $0 , $4 
	sub $23, $0 , $4 
	jr $31
	ori $2 , $0 , 0
	nop 
	nop 
	sb $4 , 95($2)
case_3_10:
	ori $2 , $0 , 0
	nop 
	nop 
	lb $4 , 54($2)
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 34164
	lui $12, 47854
	lui $14, 50570
	lui $26, 28815
	lui $31, 7100
	jal case_4_1
	andi $12, $14, 64622
	ori $26, $0 , 0
	nop 
	nop 
	lb $14, 83($26)
	jal case_4_2
	andi $0 , $26, 23762
	ori $14, $12, 25495
case_4_1:
	ori $26, $0 , 0
	nop 
	nop 
	lw $12, 48($26)
	addi $12, $0 , -21656
	jr $31
	add $12, $14, $12
case_4_2:
	ori $14, $0 , 0
	nop 
	nop 
	sh $14, 34($14)
	sub $26, $14, $0 
	ori $14, $0 , 0
	sb $0 , 95($14)
	beq $31, $14, case_4_3
	and $0 , $31, $0 
	ori $0 , $14, 43507
case_4_3:
	ori $0 , $0 , 0
	sb $31, 46($0)
	andi $26, $12, 60223
	addi $0 , $0 , -27117
	slt $31, $14, $12
	and $31, $26, $0 
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 37641
	lui $9 , 21897
	lui $13, 25473
	lui $24, 62371
	lui $31, 2980
	bne $0 , $31, case_5_1
	addi $0 , $9 , 20191
	ori $13, $0 , 0
	nop 
	lb $24, 71($13)
case_5_1:
	bne $0 , $31, case_5_2
	and $13, $24, $0 
	ori $24, $0 , 0
	nop 
	sw $13, 88($24)
case_5_2:
	addi $9 , $9 , 10826
	andi $24, $31, 23996
	addi $31, $24, -5102
	sltu $13, $24, $24
	ori $31, $0 , 0
	nop 
	nop 
	lh $31, 96($31)
	ori $31, $31, 55567
	ori $13, $0 , 0
	nop 
	sb $0 , 9($13)
	jal case_5_3
	sltu $24, $0 , $13
	sub $31, $0 , $31
	jal case_5_4
	ori $13, $9 , 14636
	andi $0 , $0 , 4741
case_5_3:
	andi $0 , $13, 25626
	or $13, $13, $9 
	jr $31
	addi $0 , $0 , -11719
case_5_4:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 18333
	lui $3 , 28200
	lui $20, 1434
	lui $24, 18689
	lui $31, 4942
	sltu $20, $31, $0 
	ori $3 , $0 , 19712
	jal case_6_1
	addi $0 , $20, 15496
	addi $3 , $3 , -16741
	jal case_6_2
	addi $0 , $0 , 13426
	addi $31, $3 , -11738
case_6_1:
	ori $24, $0 , 0
	nop 
	nop 
	sw $0 , 92($24)
	ori $24, $0 , 0
	sb $20, 33($24)
	jr $31
	ori $3 , $31, 34255
case_6_2:
	andi $31, $3 , 54301
	ori $20, $0 , 0
	nop 
	nop 
	lb $20, 45($20)
	bne $0 , $24, case_6_3
	sltu $0 , $31, $0 
	ori $3 , $20, 48102
case_6_3:
	slt $3 , $3 , $20
	sub $24, $31, $3 
	jal case_6_4
	slt $20, $0 , $3 
	addi $3 , $0 , 22577
	jal case_6_5
	slt $31, $20, $20
	ori $3 , $0 , 0
	sw $0 , 4($3)
case_6_4:
	ori $3 , $0 , 0
	nop 
	nop 
	sw $0 , 0($3)
	addi $20, $3 , -31975
	jr $31
	ori $31, $0 , 0
	nop 
	lw $0 , 16($31)
case_6_5:
	ori $31, $0 , 0
	nop 
	lw $0 , 60($31)
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 44706
	lui $9 , 63112
	lui $16, 38876
	lui $30, 35557
	lui $31, 37927
	sub $30, $16, $9 
	ori $16, $0 , 0
	sb $9 , 69($16)
	and $31, $31, $30
	ori $0 , $16, 58407
	add $16, $31, $9 
	ori $31, $0 , 0
	nop 
	nop 
	lw $16, 80($31)
	ori $30, $0 , 0
	lb $30, 27($30)
	beq $9 , $9 , case_7_1
	addi $31, $0 , -26674
	addi $9 , $9 , 21989
case_7_1:
	ori $16, $0 , 0
	nop 
	lb $16, 83($16)
	ori $16, $0 , 26917
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 64091
	lui $1 , 25347
	lui $23, 58984
	lui $29, 28124
	lui $31, 48055
	andi $1 , $0 , 15741
	addi $31, $0 , 13768
	sub $29, $1 , $1 
	or $29, $0 , $31
	ori $1 , $23, 37381
	addi $1 , $29, 21035
	jal case_8_1
	addi $0 , $1 , -3219
	ori $23, $0 , 0
	nop 
	nop 
	sb $23, 3($23)
	jal case_8_2
	sltu $1 , $31, $23
	ori $23, $0 , 0
	nop 
	sw $31, 12($23)
case_8_1:
	sltu $0 , $0 , $29
	ori $1 , $0 , 0
	nop 
	nop 
	sh $29, 84($1)
	jr $31
	ori $0 , $0 , 0
	nop 
	sh $0 , 94($0)
case_8_2:
	sub $0 , $31, $23
	ori $23, $0 , 0
	nop 
	nop 
	sw $31, 84($23)
	addi $23, $1 , -24706
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 36695
	lui $4 , 59464
	lui $20, 53040
	lui $29, 30423
	lui $31, 54774
	slt $4 , $0 , $20
	ori $0 , $29, 16516
	andi $0 , $4 , 44305
	jal case_9_1
	addi $0 , $4 , -8528
	ori $31, $0 , 0
	sw $4 , 76($31)
	jal case_9_2
	andi $0 , $29, 15537
	ori $4 , $0 , 0
	nop 
	nop 
	lh $29, 92($4)
case_9_1:
	ori $0 , $4 , 24051
	sltu $20, $29, $29
	jr $31
	ori $20, $0 , 0
	nop 
	nop 
	sb $31, 18($20)
case_9_2:
	jal case_9_3
	slt $29, $0 , $29
	or $4 , $31, $4 
	jal case_9_4
	ori $0 , $20, 57989
	andi $4 , $29, 28494
case_9_3:
	ori $29, $0 , 0
	nop 
	lw $20, 84($29)
	ori $4 , $0 , 0
	nop 
	nop 
	sw $20, 24($4)
	jr $31
	ori $31, $0 , 0
	nop 
	sb $20, 94($31)
case_9_4:
	andi $20, $4 , 13860
	ori $4 , $0 , 60261
	ori $0 , $0 , 0
	nop 
	nop 
	lw $29, 12($0)
	addi $29, $29, -27459
	bne $0 , $0 , case_9_5
	andi $20, $0 , 20071
	ori $0 , $0 , 0
	sh $29, 90($0)
case_9_5:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 24146
	lui $8 , 11815
	lui $24, 57689
	lui $28, 31222
	lui $31, 17713
	addi $31, $24, -9316
	jal case_10_1
	slt $0 , $0 , $8 
	andi $8 , $31, 42346
	jal case_10_2
	add $31, $31, $0 
	ori $0 , $0 , 0
	nop 
	nop 
	sb $0 , 19($0)
case_10_1:
	addi $8 , $8 , 4194
	addi $28, $28, 30560
	jr $31
	add $31, $24, $8 
case_10_2:
	ori $8 , $0 , 0
	sh $8 , 52($8)
	bne $31, $24, case_10_3
	or $24, $24, $8 
	addi $8 , $28, 28215
case_10_3:
	or $24, $28, $8 
	ori $24, $0 , 0
	nop 
	sh $28, 26($24)
	addi $8 , $24, 26163
	jal case_10_4
	add $24, $0 , $24
	addi $28, $8 , 29772
	jal case_10_5
	andi $0 , $28, 13683
	andi $28, $8 , 8800
case_10_4:
	ori $28, $0 , 0
	nop 
	nop 
	sb $0 , 62($28)
	addi $0 , $8 , 12994
	jr $31
	or $24, $8 , $0 
case_10_5:
	addi $0 , $0 , 20161
	andi $28, $8 , 26663
	lui $1 , 0
case_10_end:
