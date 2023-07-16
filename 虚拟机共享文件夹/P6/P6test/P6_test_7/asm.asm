.text
case_1_begin:
	lui $0 , 31750
	lui $8 , 60197
	lui $21, 40156
	lui $27, 32081
	lui $31, 55399
	ori $21, $0 , 0
	lb $0 , 41($21)
	addi $31, $8 , 17586
	ori $27, $0 , 0
	sb $31, 73($27)
	sub $8 , $31, $0 
	jal case_1_1
	andi $21, $21, 34310
	andi $21, $21, 17168
	jal case_1_2
	addi $31, $8 , 4823
	or $31, $0 , $21
case_1_1:
	ori $8 , $21, 30996
	ori $27, $0 , 0
	nop 
	lh $21, 62($27)
	jr $31
	ori $27, $0 , 0
	nop 
	nop 
	sh $27, 40($27)
case_1_2:
	bne $21, $27, case_1_3
	add $0 , $31, $27
	slt $21, $21, $0 
case_1_3:
	addi $8 , $27, 16477
	ori $27, $0 , 0
	lw $8 , 32($27)
	ori $27, $0 , 0
	nop 
	lh $21, 46($27)
	beq $8 , $8 , case_1_4
	add $27, $21, $8 
	ori $8 , $31, 11482
case_1_4:
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 39419
	lui $2 , 33470
	lui $19, 52591
	lui $26, 30857
	lui $31, 11704
	slt $19, $19, $31
	sltu $26, $31, $26
	jal case_2_1
	ori $2 , $0 , 16113
	ori $31, $0 , 0
	sw $31, 8($31)
	jal case_2_2
	or $31, $2 , $31
	addi $0 , $2 , -16279
case_2_1:
	addi $0 , $0 , -3909
	addi $19, $26, 30996
	jr $31
	andi $31, $26, 14194
case_2_2:
	ori $2 , $0 , 0
	nop 
	lw $26, 12($2)
	addi $19, $2 , 16181
	or $19, $31, $19
	slt $31, $2 , $2 
	sltu $0 , $2 , $31
	jal case_2_3
	add $19, $26, $0 
	andi $26, $19, 28055
	jal case_2_4
	slt $31, $2 , $26
	addi $0 , $2 , -18685
case_2_3:
	addi $0 , $0 , -20046
	sltu $0 , $0 , $0 
	jr $31
	ori $2 , $0 , 0
	lw $2 , 80($2)
case_2_4:
	jal case_2_5
	add $2 , $0 , $2 
	addi $2 , $2 , 21729
	jal case_2_6
	and $0 , $26, $31
	sltu $0 , $19, $0 
case_2_5:
	ori $19, $0 , 0
	nop 
	nop 
	sb $19, 53($19)
	slt $0 , $2 , $19
	jr $31
	ori $26, $0 , 0
	nop 
	sw $19, 80($26)
case_2_6:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 6780
	lui $10, 14346
	lui $11, 36619
	lui $22, 34572
	lui $31, 39331
	sltu $10, $0 , $22
	add $22, $31, $31
	ori $22, $31, 51253
	jal case_3_1
	ori $10, $0 , 63322
	ori $0 , $0 , 0
	nop 
	nop 
	lb $10, 16($0)
	jal case_3_2
	sltu $10, $0 , $10
	andi $22, $22, 33651
case_3_1:
	andi $0 , $11, 64043
	ori $11, $0 , 0
	nop 
	sw $22, 76($11)
	jr $31
	andi $11, $11, 32791
case_3_2:
	ori $22, $0 , 0
	nop 
	nop 
	sw $0 , 32($22)
	addi $22, $11, -26598
	addi $11, $10, 5814
	andi $10, $22, 1461
	jal case_3_3
	addi $10, $10, -27871
	ori $0 , $0 , 0
	nop 
	lw $0 , 12($0)
	jal case_3_4
	andi $31, $22, 64826
	addi $11, $10, 25768
case_3_3:
	ori $0 , $0 , 0
	lh $22, 92($0)
	ori $11, $0 , 0
	nop 
	lb $22, 96($11)
	jr $31
	ori $31, $0 , 0
	nop 
	sw $11, 60($31)
case_3_4:
	jal case_3_5
	ori $22, $0 , 10939
	ori $11, $0 , 0
	nop 
	nop 
	lh $11, 12($11)
	jal case_3_6
	sub $11, $11, $22
	ori $10, $0 , 0
	nop 
	lb $10, 64($10)
case_3_5:
	addi $22, $11, -24200
	ori $22, $0 , 0
	nop 
	nop 
	lb $0 , 28($22)
	jr $31
	addi $0 , $31, 25892
case_3_6:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 36727
	lui $10, 56825
	lui $14, 52096
	lui $23, 35361
	lui $31, 34737
	addi $10, $31, 4610
	addi $10, $31, -18629
	ori $10, $0 , 0
	nop 
	nop 
	sw $10, 60($10)
	addi $14, $23, -2871
	bne $14, $10, case_4_1
	ori $10, $0 , 51615
	addi $0 , $10, 12166
case_4_1:
	add $14, $10, $23
	ori $10, $0 , 0
	nop 
	lw $23, 64($10)
	ori $23, $0 , 0
	nop 
	lb $31, 81($23)
	ori $0 , $0 , 0
	nop 
	nop 
	lw $23, 60($0)
	addi $31, $14, 17716
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 46650
	lui $1 , 27235
	lui $5 , 8185
	lui $8 , 36058
	lui $31, 58440
	ori $1 , $0 , 0
	nop 
	sb $1 , 50($1)
	addi $31, $31, -30502
	addi $31, $0 , 9866
	addi $5 , $0 , -28564
	ori $0 , $0 , 0
	nop 
	lb $8 , 55($0)
	addi $8 , $0 , -22083
	addi $0 , $0 , 20288
	ori $5 , $5 , 1243
	beq $0 , $0 , case_5_1
	sub $1 , $31, $31
	ori $5 , $0 , 0
	nop 
	sw $31, 68($5)
case_5_1:
	ori $31, $0 , 0
	lh $5 , 86($31)
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 22718
	lui $1 , 31794
	lui $21, 55857
	lui $23, 26024
	lui $31, 45936
	beq $21, $21, case_6_1
	andi $21, $0 , 16385
	addi $23, $21, 24162
case_6_1:
	bne $31, $21, case_6_2
	addi $31, $21, 23806
	ori $21, $0 , 0
	sw $23, 72($21)
case_6_2:
	ori $23, $0 , 0
	lh $23, 90($23)
	bne $21, $1 , case_6_3
	addi $23, $0 , -2906
	or $21, $23, $23
case_6_3:
	add $23, $21, $31
	bne $31, $0 , case_6_4
	sltu $31, $21, $1 
	ori $23, $0 , 0
	nop 
	lh $21, 24($23)
case_6_4:
	ori $23, $0 , 0
	nop 
	sb $23, 57($23)
	bne $31, $1 , case_6_5
	addi $1 , $23, -10824
	ori $1 , $23, 34701
case_6_5:
	ori $31, $0 , 0
	sb $0 , 15($31)
	jal case_6_6
	addi $0 , $21, 22803
	addi $23, $21, 8126
	jal case_6_7
	addi $0 , $21, -1186
	and $23, $21, $21
case_6_6:
	ori $21, $0 , 0
	nop 
	nop 
	lb $21, 52($21)
	ori $23, $0 , 0
	nop 
	sw $0 , 20($23)
	jr $31
	sub $1 , $31, $1 
case_6_7:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 37971
	lui $13, 26435
	lui $16, 29710
	lui $17, 39463
	lui $31, 318
	addi $16, $17, -1013
	addi $17, $31, -20955
	bne $17, $17, case_7_1
	andi $16, $31, 44029
	ori $17, $0 , 0
	sw $16, 36($17)
case_7_1:
	jal case_7_2
	ori $0 , $16, 65034
	sltu $17, $0 , $31
	jal case_7_3
	ori $17, $16, 45985
	addi $16, $0 , -13808
case_7_2:
	ori $0 , $0 , 0
	sb $16, 17($0)
	addi $17, $17, -23527
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	lb $17, 42($31)
case_7_3:
	bne $17, $31, case_7_4
	andi $17, $13, 2062
	ori $16, $0 , 0
	nop 
	lb $13, 34($16)
case_7_4:
	ori $13, $0 , 0
	lh $0 , 92($13)
	ori $0 , $0 , 0
	nop 
	lh $31, 4($0)
	ori $13, $17, 5711
	jal case_7_5
	addi $17, $16, -4942
	andi $0 , $16, 17916
	jal case_7_6
	sltu $17, $16, $31
	addi $17, $31, -32169
case_7_5:
	ori $16, $17, 15530
	ori $0 , $0 , 0
	lb $16, 45($0)
	jr $31
	andi $31, $13, 2314
case_7_6:
	ori $31, $0 , 0
	nop 
	nop 
	lw $16, 76($31)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 64304
	lui $17, 13397
	lui $24, 22858
	lui $30, 35813
	lui $31, 47851
	sub $24, $31, $30
	addi $31, $24, -4596
	beq $17, $24, case_8_1
	addi $17, $24, 30300
	ori $30, $0 , 0
	nop 
	nop 
	lw $0 , 60($30)
case_8_1:
	ori $30, $0 , 0
	nop 
	nop 
	sb $31, 17($30)
	jal case_8_2
	ori $17, $0 , 56756
	sltu $30, $17, $31
	jal case_8_3
	add $31, $30, $17
	ori $31, $31, 52646
case_8_2:
	ori $17, $0 , 0
	nop 
	nop 
	sb $17, 47($17)
	addi $30, $30, -18945
	jr $31
	ori $17, $0 , 0
	nop 
	lw $24, 56($17)
case_8_3:
	ori $0 , $0 , 0
	nop 
	nop 
	lw $31, 48($0)
	beq $0 , $0 , case_8_4
	or $0 , $30, $0 
	slt $30, $30, $24
case_8_4:
	or $0 , $31, $30
	sub $24, $0 , $0 
	addi $0 , $30, -16372
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 60317
	lui $1 , 10312
	lui $24, 5438
	lui $26, 1461
	lui $31, 13162
	ori $0 , $26, 36588
	ori $31, $0 , 0
	sw $1 , 24($31)
	slt $0 , $0 , $0 
	addi $0 , $31, -10645
	ori $0 , $0 , 0
	nop 
	nop 
	sh $1 , 6($0)
	jal case_9_1
	add $24, $26, $26
	ori $24, $0 , 29788
	jal case_9_2
	sub $1 , $1 , $24
	addi $24, $31, 27315
case_9_1:
	ori $0 , $0 , 0
	nop 
	nop 
	lw $26, 52($0)
	ori $1 , $0 , 0
	nop 
	sh $26, 78($1)
	jr $31
	ori $0 , $0 , 0
	sb $1 , 92($0)
case_9_2:
	and $0 , $0 , $31
	ori $0 , $24, 54198
	jal case_9_3
	and $0 , $26, $0 
	add $26, $31, $1 
	jal case_9_4
	addi $31, $26, 21007
	ori $0 , $0 , 0
	nop 
	nop 
	lh $1 , 90($0)
case_9_3:
	addi $26, $0 , -20233
	addi $1 , $1 , 7953
	jr $31
	addi $0 , $26, 22646
case_9_4:
	jal case_9_5
	and $0 , $26, $24
	ori $31, $0 , 0
	sw $1 , 20($31)
	jal case_9_6
	slt $1 , $24, $0 
	ori $31, $0 , 24892
case_9_5:
	addi $24, $26, -22174
	ori $24, $0 , 0
	sb $1 , 46($24)
	jr $31
	addi $31, $31, -25870
case_9_6:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 14050
	lui $5 , 64788
	lui $12, 55923
	lui $20, 39510
	lui $31, 50922
	ori $31, $0 , 0
	nop 
	nop 
	lh $0 , 14($31)
	ori $31, $12, 11582
	ori $20, $0 , 0
	nop 
	nop 
	sb $20, 49($20)
	beq $12, $20, case_10_1
	sltu $5 , $31, $12
	ori $5 , $0 , 0
	nop 
	sb $31, 61($5)
case_10_1:
	jal case_10_2
	add $12, $12, $0 
	and $31, $0 , $12
	jal case_10_3
	andi $20, $31, 61515
	sltu $20, $5 , $20
case_10_2:
	andi $12, $0 , 42648
	ori $12, $0 , 0
	nop 
	nop 
	sw $5 , 28($12)
	jr $31
	addi $5 , $31, 19520
case_10_3:
	ori $0 , $0 , 0
	nop 
	nop 
	sh $20, 62($0)
	addi $0 , $0 , 12310
	and $20, $31, $12
	bne $0 , $20, case_10_4
	addi $5 , $20, -14232
	ori $5 , $0 , 0
	nop 
	lb $0 , 90($5)
case_10_4:
	ori $12, $0 , 0
	sh $5 , 36($12)
	lui $1 , 0
case_10_end:
