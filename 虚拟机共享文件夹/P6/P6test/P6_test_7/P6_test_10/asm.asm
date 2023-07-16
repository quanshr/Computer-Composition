.text
case_1_begin:
	lui $0 , 40469
	lui $3 , 37717
	lui $14, 24888
	lui $25, 64445
	lui $31, 1316
	ori $25, $0 , 0
	lh $3 , 74($25)
	ori $31, $0 , 0
	nop 
	sw $14, 60($31)
	jal case_1_1
	addi $0 , $25, -6314
	ori $14, $0 , 0
	nop 
	lw $0 , 40($14)
	jal case_1_2
	ori $14, $31, 36288
	andi $25, $14, 4629
case_1_1:
	ori $14, $25, 33596
	addi $3 , $3 , 26657
	jr $31
	addi $0 , $14, -28346
case_1_2:
	ori $3 , $0 , 0
	sh $31, 28($3)
	slt $25, $0 , $0 
	ori $31, $0 , 0
	lh $3 , 56($31)
	bne $25, $31, case_1_3
	addi $25, $31, -9123
	andi $25, $25, 3459
case_1_3:
	andi $14, $25, 6037
	addi $31, $0 , -9064
	jal case_1_4
	addi $25, $25, -11085
	add $3 , $25, $3 
	jal case_1_5
	ori $14, $0 , 32732
	addi $14, $14, 2674
case_1_4:
	ori $3 , $0 , 0
	nop 
	sh $25, 84($3)
	ori $14, $0 , 0
	sb $3 , 23($14)
	jr $31
	addi $14, $31, 18810
case_1_5:
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 15523
	lui $13, 21809
	lui $21, 64860
	lui $27, 54098
	lui $31, 46213
	jal case_2_1
	and $13, $13, $13
	addi $31, $13, 22492
	jal case_2_2
	and $13, $27, $31
	addi $21, $31, -26765
case_2_1:
	slt $13, $21, $21
	ori $13, $0 , 0
	sh $21, 30($13)
	jr $31
	ori $31, $0 , 0
	lw $21, 36($31)
case_2_2:
	addi $13, $21, 2599
	beq $13, $27, case_2_3
	sub $27, $21, $31
	add $21, $13, $31
case_2_3:
	jal case_2_4
	addi $21, $0 , -4915
	addi $27, $0 , -30675
	jal case_2_5
	addi $21, $31, 28750
	addi $31, $21, -14431
case_2_4:
	ori $21, $0 , 0
	nop 
	lb $21, 51($21)
	andi $21, $13, 11826
	jr $31
	addi $31, $27, -23702
case_2_5:
	ori $31, $0 , 60473
	beq $27, $31, case_2_6
	andi $27, $21, 31265
	addi $27, $21, -21586
case_2_6:
	jal case_2_7
	andi $0 , $27, 54361
	sltu $27, $27, $13
	jal case_2_8
	slt $31, $21, $13
	ori $0 , $0 , 0
	nop 
	sh $21, 16($0)
case_2_7:
	andi $21, $21, 13737
	sltu $0 , $21, $27
	jr $31
	ori $0 , $0 , 0
	sb $27, 9($0)
case_2_8:
	addi $0 , $27, -20617
	ori $21, $0 , 0
	nop 
	lb $13, 78($21)
	sub $21, $0 , $27
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 27893
	lui $3 , 36148
	lui $10, 27141
	lui $11, 9022
	lui $31, 2855
	ori $11, $10, 54690
	ori $10, $31, 21264
	jal case_3_1
	ori $10, $0 , 54699
	ori $3 , $31, 20433
	jal case_3_2
	and $0 , $3 , $0 
	or $0 , $31, $0 
case_3_1:
	or $0 , $0 , $11
	ori $0 , $0 , 0
	nop 
	nop 
	sw $10, 56($0)
	jr $31
	ori $3 , $0 , 0
	nop 
	sh $3 , 28($3)
case_3_2:
	ori $0 , $0 , 0
	nop 
	nop 
	sb $3 , 62($0)
	ori $0 , $0 , 12483
	beq $31, $10, case_3_3
	addi $31, $10, 5193
	ori $0 , $0 , 0
	nop 
	nop 
	lb $31, 48($0)
case_3_3:
	andi $31, $31, 36988
	ori $11, $0 , 0
	nop 
	nop 
	lb $11, 36($11)
	ori $0 , $0 , 0
	nop 
	sb $31, 42($0)
	and $10, $3 , $10
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 45800
	lui $6 , 45411
	lui $16, 53363
	lui $21, 64384
	lui $31, 58672
	ori $21, $16, 18616
	ori $6 , $0 , 0
	lh $21, 66($6)
	sltu $6 , $16, $6 
	addi $21, $0 , 8520
	andi $6 , $0 , 23773
	addi $31, $21, 336
	ori $31, $0 , 0
	nop 
	sw $31, 12($31)
	ori $0 , $0 , 0
	nop 
	nop 
	lb $21, 70($0)
	sltu $31, $16, $31
	addi $6 , $16, 6567
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 48989
	lui $18, 31326
	lui $21, 24095
	lui $24, 34576
	lui $31, 48363
	ori $21, $0 , 0
	nop 
	sb $31, 27($21)
	ori $31, $0 , 0
	nop 
	nop 
	sh $18, 56($31)
	beq $0 , $21, case_5_1
	ori $21, $24, 46712
	addi $18, $31, 4890
case_5_1:
	addi $31, $24, -32079
	andi $18, $24, 59997
	ori $24, $0 , 28822
	slt $0 , $21, $24
	beq $18, $31, case_5_2
	addi $0 , $18, -24256
	and $21, $21, $31
case_5_2:
	addi $18, $21, 7439
	ori $31, $21, 43162
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 41690
	lui $21, 8729
	lui $23, 33871
	lui $28, 4702
	lui $31, 10286
	ori $0 , $0 , 0
	lh $31, 14($0)
	addi $0 , $0 , 22358
	addi $23, $21, 22829
	bne $0 , $28, case_6_1
	addi $28, $0 , -30802
	addi $31, $23, -20059
case_6_1:
	sltu $23, $28, $21
	andi $28, $23, 15218
	ori $28, $0 , 0
	lh $23, 14($28)
	andi $21, $23, 50798
	ori $31, $23, 48278
	or $31, $28, $21
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 55598
	lui $23, 16455
	lui $26, 23490
	lui $30, 51670
	lui $31, 44884
	jal case_7_1
	or $23, $26, $23
	ori $30, $30, 55290
	jal case_7_2
	addi $0 , $23, -14018
	ori $30, $26, 49110
case_7_1:
	sltu $26, $0 , $30
	addi $0 , $23, 25153
	jr $31
	sltu $0 , $31, $26
case_7_2:
	sltu $30, $30, $30
	beq $0 , $30, case_7_3
	sub $26, $30, $31
	slt $26, $31, $23
case_7_3:
	or $30, $23, $23
	bne $23, $26, case_7_4
	addi $26, $23, 2995
	andi $0 , $30, 51403
case_7_4:
	bne $26, $23, case_7_5
	sub $0 , $30, $30
	slt $30, $23, $31
case_7_5:
	addi $31, $23, 24279
	ori $26, $0 , 0
	lw $30, 40($26)
	sub $0 , $30, $26
	and $23, $31, $31
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 28577
	lui $4 , 50159
	lui $9 , 64734
	lui $27, 3919
	lui $31, 60040
	addi $27, $9 , -1515
	and $27, $9 , $0 
	beq $27, $0 , case_8_1
	ori $27, $27, 32266
	ori $0 , $0 , 0
	nop 
	nop 
	lh $9 , 22($0)
case_8_1:
	ori $27, $0 , 0
	nop 
	nop 
	lw $27, 4($27)
	ori $0 , $0 , 0
	sh $27, 76($0)
	jal case_8_2
	addi $4 , $9 , -12199
	ori $4 , $31, 46368
	jal case_8_3
	addi $9 , $27, 17844
	ori $9 , $0 , 0
	nop 
	nop 
	sh $31, 68($9)
case_8_2:
	addi $9 , $9 , 25836
	ori $9 , $0 , 35156
	jr $31
	ori $9 , $0 , 0
	nop 
	nop 
	sb $0 , 95($9)
case_8_3:
	ori $0 , $27, 31876
	ori $4 , $0 , 0
	nop 
	sb $4 , 80($4)
	jal case_8_4
	ori $4 , $27, 63302
	ori $27, $27, 12873
	jal case_8_5
	andi $9 , $0 , 26236
	addi $27, $9 , -23571
case_8_4:
	slt $27, $0 , $0 
	ori $4 , $0 , 0
	nop 
	lw $27, 40($4)
	jr $31
	addi $27, $9 , 2689
case_8_5:
	andi $31, $0 , 33612
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 65199
	lui $2 , 36225
	lui $10, 18921
	lui $12, 925
	lui $31, 8816
	jal case_9_1
	addi $12, $0 , 14326
	ori $31, $0 , 0
	nop 
	nop 
	lh $2 , 14($31)
	jal case_9_2
	addi $12, $2 , 28659
	andi $31, $0 , 51122
case_9_1:
	ori $2 , $0 , 0
	nop 
	nop 
	lw $10, 48($2)
	ori $2 , $0 , 0
	nop 
	nop 
	lw $2 , 56($2)
	jr $31
	ori $12, $0 , 0
	lh $2 , 82($12)
case_9_2:
	beq $2 , $2 , case_9_3
	add $0 , $12, $0 
	or $31, $31, $12
case_9_3:
	bne $0 , $31, case_9_4
	sub $31, $10, $0 
	slt $12, $2 , $10
case_9_4:
	ori $12, $0 , 0
	nop 
	lw $0 , 4($12)
	ori $0 , $0 , 0
	sh $0 , 12($0)
	add $0 , $2 , $31
	and $31, $12, $12
	ori $0 , $0 , 0
	nop 
	nop 
	sh $12, 32($0)
	add $0 , $10, $0 
	ori $31, $0 , 0
	nop 
	nop 
	sh $12, 36($31)
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 19980
	lui $19, 51096
	lui $20, 41803
	lui $25, 32857
	lui $31, 3939
	beq $25, $0 , case_10_1
	sltu $20, $0 , $25
	ori $31, $0 , 0
	nop 
	nop 
	sw $31, 52($31)
case_10_1:
	jal case_10_2
	or $25, $0 , $25
	and $0 , $25, $31
	jal case_10_3
	addi $19, $31, -1067
	ori $0 , $0 , 0
	nop 
	sb $25, 48($0)
case_10_2:
	addi $0 , $19, -9737
	andi $25, $0 , 41165
	jr $31
	ori $20, $0 , 0
	nop 
	lh $0 , 78($20)
case_10_3:
	jal case_10_4
	ori $25, $19, 61452
	ori $20, $0 , 0
	nop 
	sb $20, 71($20)
	jal case_10_5
	andi $0 , $19, 48304
	ori $31, $19, 61585
case_10_4:
	ori $20, $20, 41978
	ori $0 , $0 , 0
	lw $19, 64($0)
	jr $31
	ori $20, $0 , 46771
case_10_5:
	beq $19, $25, case_10_6
	addi $20, $25, -30984
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 64($0)
case_10_6:
	and $31, $19, $19
	ori $0 , $0 , 0
	nop 
	nop 
	lh $0 , 26($0)
	jal case_10_7
	add $0 , $25, $20
	ori $19, $0 , 0
	nop 
	sw $20, 72($19)
	jal case_10_8
	ori $20, $25, 59019
	andi $31, $31, 47737
case_10_7:
	ori $25, $0 , 0
	nop 
	lb $20, 22($25)
	or $20, $25, $0 
	jr $31
	ori $25, $0 , 0
	nop 
	nop 
	lb $31, 92($25)
case_10_8:
	jal case_10_9
	andi $20, $20, 28774
	ori $0 , $0 , 0
	nop 
	lw $19, 88($0)
	jal case_10_10
	add $31, $20, $0 
	add $20, $25, $0 
case_10_9:
	andi $19, $0 , 6935
	addi $19, $0 , 25431
	jr $31
	ori $20, $20, 35626
case_10_10:
	jal case_10_11
	addi $20, $19, -3849
	ori $31, $0 , 0
	lw $0 , 40($31)
	jal case_10_12
	addi $25, $0 , 24374
	ori $0 , $0 , 0
	nop 
	lh $20, 90($0)
case_10_11:
	ori $0 , $0 , 0
	lw $20, 72($0)
	add $25, $20, $0 
	jr $31
	ori $31, $0 , 0
	nop 
	sb $0 , 62($31)
case_10_12:
	beq $19, $25, case_10_13
	addi $31, $31, 17570
	ori $25, $20, 43993
case_10_13:
	lui $1 , 0
case_10_end:
