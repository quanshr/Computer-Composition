.text
case_1_begin:
	lui $0 , 58844
	lui $12, 11120
	lui $15, 60681
	lui $22, 49376
	lui $31, 27864
	addi $0 , $15, 18437
	jal case_1_1
	addi $12, $22, 6872
	ori $22, $0 , 0
	nop 
	sh $12, 10($22)
	jal case_1_2
	ori $0 , $15, 6546
	sub $22, $31, $15
case_1_1:
	ori $0 , $0 , 0
	nop 
	lb $15, 79($0)
	add $12, $12, $15
	jr $31
	ori $22, $0 , 0
	nop 
	lb $15, 61($22)
case_1_2:
	sub $22, $22, $15
	ori $22, $0 , 0
	sb $31, 2($22)
	jal case_1_3
	addi $15, $12, 21051
	ori $12, $0 , 0
	sh $15, 56($12)
	jal case_1_4
	and $15, $31, $22
	andi $0 , $0 , 33210
case_1_3:
	addi $12, $0 , 27048
	andi $15, $22, 11509
	jr $31
	ori $22, $12, 47764
case_1_4:
	jal case_1_5
	addi $22, $15, 7531
	addi $22, $22, -9036
	jal case_1_6
	addi $31, $22, 8444
	addi $22, $12, 15464
case_1_5:
	addi $12, $0 , 18846
	ori $0 , $0 , 0
	sb $22, 35($0)
	jr $31
	or $0 , $12, $31
case_1_6:
	addi $15, $12, -15034
	ori $12, $0 , 0
	nop 
	sw $12, 44($12)
	andi $31, $0 , 18163
	ori $31, $0 , 0
	sb $0 , 21($31)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 46033
	lui $2 , 758
	lui $4 , 19773
	lui $14, 40167
	lui $31, 22659
	ori $2 , $0 , 0
	nop 
	nop 
	lw $2 , 52($2)
	addi $2 , $4 , 936
	jal case_2_1
	ori $4 , $14, 21168
	ori $31, $14, 30666
	jal case_2_2
	sub $0 , $14, $14
	ori $14, $0 , 0
	nop 
	nop 
	lh $4 , 42($14)
case_2_1:
	ori $14, $0 , 0
	lw $4 , 64($14)
	ori $0 , $0 , 0
	nop 
	nop 
	sw $14, 68($0)
	jr $31
	ori $2 , $0 , 0
	nop 
	nop 
	sb $2 , 35($2)
case_2_2:
	addi $2 , $4 , 29761
	or $2 , $14, $31
	jal case_2_3
	ori $14, $14, 44389
	addi $14, $0 , 21877
	jal case_2_4
	ori $0 , $2 , 589
	addi $31, $14, -20814
case_2_3:
	ori $0 , $2 , 4903
	ori $2 , $4 , 21993
	jr $31
	ori $4 , $0 , 0
	nop 
	nop 
	sw $0 , 8($4)
case_2_4:
	ori $2 , $2 , 26390
	bne $31, $0 , case_2_5
	andi $2 , $14, 6333
	sltu $4 , $2 , $0 
case_2_5:
	ori $31, $0 , 0
	nop 
	lh $2 , 32($31)
	ori $14, $0 , 0
	sb $31, 37($14)
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 266
	lui $1 , 61994
	lui $3 , 28198
	lui $6 , 7288
	lui $31, 11493
	or $0 , $0 , $0 
	ori $6 , $0 , 0
	lw $3 , 80($6)
	addi $3 , $0 , -3006
	jal case_3_1
	addi $1 , $6 , 13087
	sub $1 , $3 , $31
	jal case_3_2
	addi $3 , $1 , 10222
	ori $6 , $0 , 0
	sw $0 , 0($6)
case_3_1:
	ori $0 , $0 , 0
	nop 
	nop 
	lb $0 , 0($0)
	slt $1 , $6 , $6 
	jr $31
	ori $6 , $0 , 0
	lw $3 , 48($6)
case_3_2:
	ori $1 , $3 , 43563
	addi $0 , $1 , 2968
	addi $31, $0 , 3692
	addi $6 , $0 , -8792
	beq $3 , $31, case_3_3
	addi $0 , $1 , 2206
	ori $3 , $0 , 0
	nop 
	nop 
	sh $31, 14($3)
case_3_3:
	addi $1 , $6 , 15232
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 48149
	lui $1 , 54579
	lui $6 , 62266
	lui $19, 37806
	lui $31, 1749
	addi $31, $0 , 30404
	addi $6 , $19, -28725
	ori $19, $31, 31512
	slt $0 , $0 , $1 
	ori $31, $0 , 0
	nop 
	sw $1 , 76($31)
	ori $0 , $0 , 0
	nop 
	nop 
	sh $19, 28($0)
	ori $1 , $0 , 0
	nop 
	nop 
	lw $6 , 32($1)
	beq $31, $6 , case_4_1
	addi $1 , $0 , -29231
	ori $31, $0 , 0
	nop 
	nop 
	lw $0 , 92($31)
case_4_1:
	andi $6 , $1 , 47147
	addi $1 , $6 , -8606
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 20298
	lui $7 , 23109
	lui $20, 23023
	lui $29, 35178
	lui $31, 56183
	ori $20, $0 , 0
	sb $29, 31($20)
	ori $7 , $0 , 0
	nop 
	lh $0 , 84($7)
	bne $20, $31, case_5_1
	ori $20, $29, 33329
	ori $31, $0 , 0
	nop 
	nop 
	lb $0 , 28($31)
case_5_1:
	andi $29, $31, 18308
	bne $7 , $29, case_5_2
	addi $0 , $31, 26309
	andi $7 , $31, 32516
case_5_2:
	jal case_5_3
	or $20, $29, $29
	addi $20, $20, -14148
	jal case_5_4
	andi $31, $0 , 8181
	ori $31, $0 , 0
	nop 
	lb $20, 77($31)
case_5_3:
	andi $29, $7 , 16683
	slt $20, $0 , $20
	jr $31
	sltu $20, $0 , $20
case_5_4:
	bne $20, $20, case_5_5
	addi $20, $31, -27852
	ori $0 , $0 , 0
	nop 
	nop 
	lh $29, 24($0)
case_5_5:
	andi $0 , $7 , 37409
	jal case_5_6
	addi $0 , $20, -16022
	andi $0 , $31, 33754
	jal case_5_7
	and $20, $0 , $7 
	add $31, $7 , $29
case_5_6:
	ori $29, $0 , 0
	nop 
	sb $20, 68($29)
	ori $20, $0 , 0
	lw $29, 20($20)
	jr $31
	ori $7 , $0 , 0
	nop 
	sh $31, 82($7)
case_5_7:
	addi $29, $20, 22885
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 15624
	lui $4 , 63608
	lui $12, 985
	lui $26, 42432
	lui $31, 56882
	or $12, $12, $31
	andi $4 , $4 , 42933
	sltu $4 , $31, $4 
	addi $12, $4 , -18960
	ori $12, $26, 65332
	andi $31, $31, 64426
	jal case_6_1
	slt $12, $12, $26
	addi $0 , $31, 24783
	jal case_6_2
	add $12, $26, $0 
	ori $0 , $26, 15299
case_6_1:
	ori $12, $0 , 0
	nop 
	nop 
	sw $26, 76($12)
	addi $26, $12, -27722
	jr $31
	andi $4 , $26, 35280
case_6_2:
	bne $12, $4 , case_6_3
	addi $0 , $0 , -19741
	and $12, $0 , $4 
case_6_3:
	addi $0 , $26, -4205
	ori $4 , $0 , 0
	lb $4 , 91($4)
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 23373
	lui $16, 54861
	lui $23, 43266
	lui $30, 48961
	lui $31, 11559
	bne $23, $31, case_7_1
	addi $0 , $31, -5649
	and $0 , $23, $16
case_7_1:
	addi $31, $30, -20688
	ori $0 , $0 , 0
	nop 
	sw $30, 48($0)
	bne $31, $0 , case_7_2
	andi $23, $0 , 54381
	or $23, $16, $30
case_7_2:
	addi $30, $23, -12873
	ori $31, $0 , 0
	nop 
	sw $23, 64($31)
	or $31, $30, $23
	ori $0 , $0 , 0
	nop 
	sw $31, 36($0)
	slt $31, $16, $23
	sltu $0 , $23, $23
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 43883
	lui $3 , 59938
	lui $15, 12232
	lui $24, 17992
	lui $31, 7819
	jal case_8_1
	addi $15, $0 , -22640
	or $0 , $3 , $24
	jal case_8_2
	addi $24, $0 , 19586
	ori $15, $0 , 0
	nop 
	lb $24, 84($15)
case_8_1:
	ori $15, $0 , 0
	nop 
	nop 
	lh $15, 90($15)
	ori $0 , $0 , 0
	nop 
	nop 
	lb $24, 76($0)
	jr $31
	ori $3 , $0 , 0
	nop 
	lw $15, 84($3)
case_8_2:
	jal case_8_3
	andi $0 , $24, 27461
	addi $15, $0 , 31873
	jal case_8_4
	sub $0 , $31, $24
	andi $3 , $0 , 23951
case_8_3:
	ori $24, $0 , 0
	sh $0 , 70($24)
	addi $0 , $3 , 3414
	jr $31
	addi $0 , $24, 8638
case_8_4:
	add $24, $0 , $15
	addi $24, $31, -29530
	jal case_8_5
	addi $15, $24, 7042
	ori $24, $15, 10253
	jal case_8_6
	and $31, $31, $15
	ori $15, $0 , 0
	nop 
	lw $24, 68($15)
case_8_5:
	ori $3 , $24, 35605
	ori $15, $3 , 62325
	jr $31
	andi $31, $3 , 39630
case_8_6:
	or $3 , $31, $3 
	addi $3 , $3 , -8704
	andi $0 , $24, 50676
	jal case_8_7
	addi $15, $3 , -9495
	ori $3 , $0 , 0
	nop 
	nop 
	sw $3 , 32($3)
	jal case_8_8
	slt $31, $0 , $31
	slt $24, $3 , $15
case_8_7:
	ori $15, $24, 55413
	ori $0 , $0 , 13144
	jr $31
	ori $31, $0 , 0
	nop 
	lb $0 , 84($31)
case_8_8:
	ori $15, $0 , 0
	lh $15, 62($15)
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 40643
	lui $1 , 11680
	lui $18, 20484
	lui $21, 34881
	lui $31, 32834
	ori $21, $0 , 0
	nop 
	nop 
	lb $0 , 20($21)
	slt $18, $1 , $31
	ori $18, $0 , 0
	nop 
	nop 
	sh $21, 14($18)
	ori $21, $0 , 0
	nop 
	lb $1 , 31($21)
	addi $31, $18, -7088
	ori $21, $0 , 0
	lw $31, 24($21)
	ori $18, $0 , 0
	nop 
	nop 
	lh $18, 4($18)
	ori $18, $0 , 0
	lh $31, 80($18)
	ori $18, $18, 63634
	jal case_9_1
	sltu $18, $1 , $1 
	andi $18, $0 , 14603
	jal case_9_2
	ori $31, $0 , 40961
	andi $1 , $0 , 13617
case_9_1:
	addi $1 , $1 , -1123
	or $1 , $0 , $1 
	jr $31
	addi $1 , $21, -2424
case_9_2:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 1011
	lui $17, 28137
	lui $27, 55481
	lui $30, 32364
	lui $31, 39913
	ori $17, $0 , 0
	nop 
	lb $31, 71($17)
	or $27, $30, $31
	ori $27, $0 , 0
	lw $30, 12($27)
	ori $0 , $0 , 0
	nop 
	sw $17, 56($0)
	ori $30, $0 , 0
	sb $0 , 34($30)
	add $27, $30, $30
	ori $31, $0 , 0
	lb $17, 74($31)
	addi $30, $30, -31319
	bne $0 , $30, case_10_1
	andi $30, $30, 2976
	andi $27, $0 , 25159
case_10_1:
	addi $31, $30, 6109
	lui $1 , 0
case_10_end:
