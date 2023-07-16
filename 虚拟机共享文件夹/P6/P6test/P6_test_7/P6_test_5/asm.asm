.text
case_1_begin:
	lui $0 , 17825
	lui $12, 3802
	lui $14, 63276
	lui $29, 30267
	lui $31, 42975
	andi $29, $14, 24106
	addi $31, $29, 19031
	bne $0 , $0 , case_1_1
	addi $14, $12, 13548
	ori $31, $0 , 0
	nop 
	lb $14, 3($31)
case_1_1:
	bne $31, $0 , case_1_2
	ori $31, $12, 10598
	addi $14, $29, 16662
case_1_2:
	andi $12, $0 , 50552
	andi $31, $29, 11966
	ori $0 , $0 , 0
	nop 
	lb $14, 79($0)
	ori $29, $0 , 0
	nop 
	lh $29, 30($29)
	jal case_1_3
	addi $0 , $12, 26963
	ori $14, $0 , 0
	nop 
	nop 
	sb $29, 2($14)
	jal case_1_4
	ori $14, $14, 54625
	addi $29, $0 , -21297
case_1_3:
	ori $29, $0 , 0
	lh $12, 28($29)
	ori $0 , $0 , 0
	nop 
	lb $14, 98($0)
	jr $31
	ori $12, $0 , 44164
case_1_4:
	ori $31, $0 , 0
	nop 
	lb $12, 99($31)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 38825
	lui $17, 29514
	lui $18, 51301
	lui $23, 51235
	lui $31, 46466
	jal case_2_1
	ori $0 , $17, 44274
	ori $31, $23, 39906
	jal case_2_2
	addi $23, $18, 7705
	ori $23, $23, 34872
case_2_1:
	andi $0 , $17, 39281
	ori $23, $0 , 0
	nop 
	nop 
	sb $18, 39($23)
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	lw $0 , 44($31)
case_2_2:
	and $18, $17, $17
	beq $23, $17, case_2_3
	addi $18, $0 , -26092
	addi $17, $23, -6574
case_2_3:
	addi $18, $31, -3302
	jal case_2_4
	or $23, $23, $23
	addi $18, $23, -28072
	jal case_2_5
	and $0 , $0 , $18
	addi $0 , $18, -19305
case_2_4:
	andi $0 , $0 , 30546
	and $18, $23, $18
	jr $31
	ori $17, $0 , 0
	nop 
	nop 
	sw $31, 16($17)
case_2_5:
	addi $17, $0 , 6680
	ori $31, $0 , 0
	lw $23, 24($31)
	ori $31, $0 , 65293
	beq $18, $23, case_2_6
	andi $17, $23, 64995
	addi $23, $23, 2350
case_2_6:
	beq $18, $18, case_2_7
	and $0 , $23, $0 
	or $18, $31, $31
case_2_7:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 64991
	lui $4 , 635
	lui $10, 20671
	lui $30, 51124
	lui $31, 60958
	addi $4 , $10, -30569
	ori $0 , $0 , 40693
	ori $4 , $0 , 0
	lh $30, 86($4)
	ori $30, $0 , 0
	nop 
	sb $10, 59($30)
	ori $0 , $0 , 0
	nop 
	nop 
	sb $31, 93($0)
	jal case_3_1
	slt $4 , $0 , $4 
	ori $31, $0 , 0
	nop 
	nop 
	sh $31, 74($31)
	jal case_3_2
	and $31, $0 , $31
	and $4 , $4 , $0 
case_3_1:
	addi $30, $4 , 28644
	ori $30, $0 , 0
	nop 
	sh $10, 48($30)
	jr $31
	andi $4 , $31, 42773
case_3_2:
	jal case_3_3
	ori $10, $10, 20744
	or $0 , $10, $31
	jal case_3_4
	addi $30, $30, 1900
	addi $4 , $30, 1751
case_3_3:
	and $0 , $0 , $30
	ori $0 , $0 , 0
	nop 
	nop 
	sh $10, 88($0)
	jr $31
	addi $4 , $30, 12022
case_3_4:
	jal case_3_5
	slt $30, $10, $0 
	addi $31, $10, -23157
	jal case_3_6
	andi $10, $10, 62708
	ori $30, $0 , 0
	nop 
	nop 
	lb $10, 62($30)
case_3_5:
	ori $10, $0 , 0
	sh $0 , 74($10)
	and $4 , $4 , $4 
	jr $31
	ori $31, $30, 18784
case_3_6:
	jal case_3_7
	sltu $10, $0 , $0 
	ori $4 , $4 , 48367
	jal case_3_8
	andi $31, $10, 38623
	ori $31, $0 , 0
	nop 
	nop 
	sw $0 , 64($31)
case_3_7:
	ori $4 , $0 , 0
	nop 
	nop 
	sb $30, 65($4)
	ori $0 , $0 , 0
	lb $0 , 19($0)
	jr $31
	addi $0 , $31, -9698
case_3_8:
	jal case_3_9
	addi $30, $30, -28194
	or $0 , $31, $4 
	jal case_3_10
	addi $31, $31, -30970
	or $10, $30, $10
case_3_9:
	ori $4 , $0 , 17971
	and $4 , $4 , $30
	jr $31
	slt $0 , $31, $0 
case_3_10:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 4259
	lui $1 , 14726
	lui $10, 30716
	lui $18, 14090
	lui $31, 37070
	ori $0 , $0 , 0
	nop 
	sw $10, 64($0)
	and $0 , $0 , $10
	ori $10, $0 , 0
	nop 
	sw $1 , 44($10)
	ori $1 , $10, 24022
	bne $31, $1 , case_4_1
	andi $31, $1 , 4418
	add $18, $1 , $1 
case_4_1:
	ori $10, $0 , 0
	nop 
	nop 
	sw $10, 92($10)
	andi $1 , $1 , 61831
	slt $1 , $1 , $0 
	ori $18, $0 , 0
	nop 
	nop 
	lb $18, 28($18)
	sub $31, $10, $0 
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 12387
	lui $4 , 53323
	lui $5 , 20068
	lui $21, 20929
	lui $31, 40781
	jal case_5_1
	ori $5 , $5 , 48678
	ori $21, $0 , 0
	lb $5 , 51($21)
	jal case_5_2
	addi $31, $0 , 1529
	sltu $5 , $0 , $31
case_5_1:
	ori $0 , $0 , 0
	nop 
	nop 
	sw $5 , 32($0)
	addi $0 , $0 , -16321
	jr $31
	addi $5 , $5 , -25606
case_5_2:
	jal case_5_3
	andi $4 , $21, 44943
	or $31, $21, $0 
	jal case_5_4
	ori $5 , $21, 61923
	ori $0 , $0 , 0
	nop 
	nop 
	sh $31, 56($0)
case_5_3:
	ori $5 , $0 , 0
	nop 
	lb $0 , 41($5)
	ori $5 , $0 , 0
	lb $21, 34($5)
	jr $31
	addi $21, $5 , -21546
case_5_4:
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 72($0)
	jal case_5_5
	and $21, $0 , $21
	ori $5 , $0 , 0
	nop 
	sb $0 , 19($5)
	jal case_5_6
	addi $0 , $4 , -3051
	ori $21, $0 , 0
	sh $4 , 28($21)
case_5_5:
	andi $5 , $21, 53103
	and $5 , $5 , $0 
	jr $31
	ori $5 , $0 , 0
	sh $31, 58($5)
case_5_6:
	jal case_5_7
	ori $21, $4 , 54125
	ori $21, $4 , 57498
	jal case_5_8
	addi $4 , $5 , -10137
	ori $31, $0 , 33272
case_5_7:
	ori $21, $0 , 0
	lw $5 , 52($21)
	ori $0 , $0 , 0
	nop 
	sb $5 , 24($0)
	jr $31
	ori $31, $4 , 13975
case_5_8:
	ori $4 , $0 , 0
	sw $21, 52($4)
	beq $21, $0 , case_5_9
	addi $31, $5 , 11177
	addi $31, $4 , -23843
case_5_9:
	sltu $5 , $4 , $4 
	beq $21, $4 , case_5_10
	ori $4 , $4 , 62135
	ori $5 , $0 , 0
	lw $21, 16($5)
case_5_10:
	addi $0 , $4 , -17768
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 22242
	lui $1 , 12673
	lui $9 , 60567
	lui $11, 54740
	lui $31, 2555
	jal case_6_1
	or $1 , $1 , $9 
	ori $0 , $0 , 0
	nop 
	nop 
	lh $9 , 52($0)
	jal case_6_2
	slt $9 , $11, $11
	and $31, $9 , $9 
case_6_1:
	andi $11, $0 , 23463
	ori $0 , $0 , 0
	sh $9 , 16($0)
	jr $31
	ori $9 , $11, 17778
case_6_2:
	beq $11, $31, case_6_3
	ori $11, $31, 16786
	addi $11, $9 , 20482
case_6_3:
	ori $9 , $0 , 0
	sb $1 , 8($9)
	or $1 , $11, $9 
	ori $11, $0 , 0
	nop 
	nop 
	sb $31, 31($11)
	ori $11, $0 , 0
	lb $0 , 28($11)
	bne $9 , $11, case_6_4
	ori $0 , $9 , 43859
	ori $11, $11, 2360
case_6_4:
	add $0 , $0 , $31
	ori $31, $11, 531
	addi $0 , $0 , 8695
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 46886
	lui $10, 63920
	lui $24, 29787
	lui $26, 28455
	lui $31, 43375
	ori $10, $0 , 0
	sb $0 , 80($10)
	jal case_7_1
	slt $0 , $0 , $26
	ori $31, $0 , 0
	nop 
	nop 
	sb $26, 4($31)
	jal case_7_2
	andi $10, $10, 12503
	add $0 , $0 , $26
case_7_1:
	addi $0 , $26, -18963
	sub $24, $26, $10
	jr $31
	ori $26, $31, 62313
case_7_2:
	ori $24, $0 , 0
	lw $10, 32($24)
	sltu $31, $10, $24
	ori $0 , $0 , 0
	nop 
	lh $10, 82($0)
	sub $26, $26, $31
	ori $24, $0 , 0
	nop 
	nop 
	lw $26, 44($24)
	ori $24, $0 , 0
	nop 
	lh $31, 54($24)
	addi $26, $31, 18192
	addi $10, $26, 9528
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 10378
	lui $8 , 63471
	lui $11, 1538
	lui $12, 6408
	lui $31, 59306
	bne $12, $11, case_8_1
	addi $8 , $12, -27834
	ori $8 , $0 , 0
	nop 
	sh $31, 70($8)
case_8_1:
	beq $31, $0 , case_8_2
	sltu $0 , $0 , $12
	ori $0 , $0 , 0
	sb $8 , 9($0)
case_8_2:
	addi $0 , $8 , -24471
	ori $11, $0 , 0
	nop 
	sh $31, 68($11)
	sub $8 , $8 , $11
	and $12, $31, $8 
	jal case_8_3
	addi $8 , $12, 20945
	ori $0 , $8 , 39299
	jal case_8_4
	and $11, $12, $8 
	ori $0 , $0 , 0
	nop 
	nop 
	lb $8 , 54($0)
case_8_3:
	ori $0 , $0 , 0
	lw $12, 8($0)
	ori $12, $8 , 60633
	jr $31
	sltu $11, $8 , $12
case_8_4:
	sub $12, $12, $0 
	bne $0 , $31, case_8_5
	addi $11, $12, -8007
	addi $0 , $12, 6076
case_8_5:
	jal case_8_6
	slt $0 , $12, $0 
	ori $11, $0 , 0
	nop 
	nop 
	sb $0 , 78($11)
	jal case_8_7
	andi $8 , $31, 24759
	or $31, $0 , $8 
case_8_6:
	and $12, $12, $0 
	addi $8 , $8 , -25708
	jr $31
	and $8 , $12, $11
case_8_7:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 36739
	lui $4 , 33390
	lui $21, 32534
	lui $22, 42983
	lui $31, 176
	sub $31, $4 , $0 
	ori $31, $0 , 0
	lb $0 , 50($31)
	jal case_9_1
	andi $21, $22, 21622
	addi $0 , $0 , 10083
	jal case_9_2
	addi $0 , $22, 5224
	andi $4 , $31, 6340
case_9_1:
	addi $21, $0 , 24638
	ori $22, $0 , 0
	nop 
	sw $21, 80($22)
	jr $31
	ori $21, $31, 55375
case_9_2:
	andi $4 , $0 , 46538
	ori $31, $0 , 0
	nop 
	nop 
	lh $22, 58($31)
	add $22, $31, $21
	jal case_9_3
	or $21, $22, $22
	ori $22, $0 , 0
	nop 
	sb $31, 83($22)
	jal case_9_4
	ori $31, $31, 45065
	addi $0 , $31, 661
case_9_3:
	addi $4 , $22, 15302
	ori $21, $0 , 0
	nop 
	nop 
	sw $22, 76($21)
	jr $31
	addi $21, $31, -28805
case_9_4:
	addi $0 , $4 , -19907
	ori $0 , $0 , 0
	lh $0 , 74($0)
	jal case_9_5
	sltu $0 , $4 , $22
	ori $21, $0 , 45706
	jal case_9_6
	addi $0 , $21, -25490
	ori $0 , $0 , 0
	nop 
	nop 
	sh $31, 40($0)
case_9_5:
	add $4 , $0 , $21
	addi $0 , $21, 5656
	jr $31
	ori $31, $0 , 0
	lb $21, 46($31)
case_9_6:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 62850
	lui $11, 52778
	lui $16, 58984
	lui $26, 4377
	lui $31, 61181
	addi $16, $31, -1826
	andi $11, $0 , 36060
	ori $0 , $0 , 0
	nop 
	sb $26, 71($0)
	sltu $31, $16, $16
	beq $26, $31, case_10_1
	addi $0 , $16, -24954
	ori $11, $31, 1280
case_10_1:
	ori $31, $0 , 0
	nop 
	nop 
	sb $11, 78($31)
	ori $26, $0 , 0
	nop 
	nop 
	sh $31, 14($26)
	ori $26, $0 , 0
	lw $16, 52($26)
	jal case_10_2
	sub $16, $0 , $0 
	ori $16, $0 , 0
	nop 
	nop 
	lw $16, 28($16)
	jal case_10_3
	ori $11, $16, 1341
	add $26, $31, $0 
case_10_2:
	ori $0 , $0 , 0
	nop 
	nop 
	lw $0 , 20($0)
	addi $0 , $11, 7556
	jr $31
	addi $16, $16, -23863
case_10_3:
	jal case_10_4
	slt $16, $11, $11
	ori $26, $0 , 0
	nop 
	nop 
	sb $0 , 50($26)
	jal case_10_5
	addi $31, $26, 18648
	ori $26, $0 , 0
	lw $16, 72($26)
case_10_4:
	ori $16, $0 , 0
	nop 
	nop 
	lh $11, 30($16)
	ori $0 , $0 , 0
	nop 
	sw $16, 96($0)
	jr $31
	ori $26, $0 , 0
	nop 
	nop 
	lw $16, 24($26)
case_10_5:
	lui $1 , 0
case_10_end:
