.text
case_1_begin:
	lui $0 , 38992
	lui $3 , 14815
	lui $8 , 10148
	lui $11, 24602
	lui $31, 54505
	ori $31, $0 , 0
	nop 
	nop 
	sb $0 , 5($31)
	ori $11, $0 , 0
	sb $31, 22($11)
	bne $8 , $31, case_1_1
	slt $0 , $31, $11
	ori $0 , $3 , 49321
case_1_1:
	ori $31, $0 , 0
	lb $8 , 39($31)
	jal case_1_2
	and $0 , $8 , $8 
	addi $0 , $8 , -1359
	jal case_1_3
	andi $0 , $11, 34848
	ori $31, $0 , 0
	nop 
	nop 
	sb $11, 9($31)
case_1_2:
	ori $3 , $0 , 0
	nop 
	sh $0 , 42($3)
	andi $3 , $3 , 44719
	jr $31
	ori $11, $0 , 0
	nop 
	nop 
	lb $0 , 84($11)
case_1_3:
	sub $0 , $31, $8 
	ori $3 , $11, 28557
	ori $8 , $0 , 0
	nop 
	sh $8 , 78($8)
	addi $0 , $31, 27224
	ori $8 , $0 , 0
	nop 
	lb $11, 49($8)
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 2702
	lui $1 , 43552
	lui $3 , 41756
	lui $12, 28330
	lui $31, 42970
	ori $0 , $0 , 0
	sw $1 , 48($0)
	beq $31, $1 , case_2_1
	addi $31, $12, -27491
	ori $12, $0 , 0
	nop 
	nop 
	sb $1 , 56($12)
case_2_1:
	jal case_2_2
	addi $1 , $3 , -17136
	slt $1 , $12, $1 
	jal case_2_3
	sltu $12, $31, $3 
	addi $31, $1 , -18495
case_2_2:
	ori $3 , $3 , 55797
	add $3 , $1 , $1 
	jr $31
	addi $3 , $31, 32222
case_2_3:
	ori $12, $0 , 0
	nop 
	sw $31, 36($12)
	bne $0 , $0 , case_2_4
	ori $3 , $3 , 23021
	addi $0 , $0 , 20883
case_2_4:
	jal case_2_5
	andi $3 , $3 , 16316
	ori $3 , $0 , 44182
	jal case_2_6
	sub $0 , $1 , $0 
	ori $1 , $0 , 0
	nop 
	nop 
	sb $12, 18($1)
case_2_5:
	slt $1 , $3 , $3 
	andi $3 , $0 , 15245
	jr $31
	ori $1 , $0 , 0
	nop 
	nop 
	lb $3 , 94($1)
case_2_6:
	and $12, $3 , $31
	ori $1 , $0 , 0
	nop 
	lb $0 , 57($1)
	jal case_2_7
	ori $0 , $12, 38042
	ori $31, $1 , 62413
	jal case_2_8
	andi $12, $31, 48400
	ori $3 , $0 , 0
	sh $1 , 22($3)
case_2_7:
	ori $12, $0 , 0
	sw $12, 36($12)
	or $0 , $3 , $12
	jr $31
	ori $31, $0 , 0
	nop 
	lb $12, 61($31)
case_2_8:
	jal case_2_9
	sltu $3 , $0 , $12
	ori $1 , $0 , 0
	lb $31, 61($1)
	jal case_2_10
	addi $1 , $1 , -24054
	ori $3 , $0 , 0
	sh $0 , 6($3)
case_2_9:
	addi $1 , $1 , 5063
	ori $12, $0 , 0
	sb $12, 77($12)
	jr $31
	ori $3 , $0 , 0
	nop 
	nop 
	lh $0 , 66($3)
case_2_10:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 42944
	lui $5 , 3377
	lui $7 , 58743
	lui $26, 11034
	lui $31, 25245
	add $0 , $26, $7 
	addi $5 , $5 , 18685
	ori $26, $0 , 0
	nop 
	nop 
	sh $26, 68($26)
	addi $0 , $26, -29827
	andi $0 , $7 , 56990
	or $7 , $26, $31
	ori $26, $0 , 0
	nop 
	nop 
	sh $0 , 80($26)
	jal case_3_1
	andi $5 , $0 , 18027
	ori $31, $5 , 36827
	jal case_3_2
	sltu $5 , $31, $31
	addi $0 , $31, 11602
case_3_1:
	slt $7 , $0 , $7 
	slt $26, $0 , $7 
	jr $31
	addi $5 , $5 , -32643
case_3_2:
	beq $5 , $7 , case_3_3
	ori $7 , $31, 61983
	addi $0 , $0 , -22687
case_3_3:
	jal case_3_4
	ori $26, $7 , 51746
	sltu $31, $0 , $0 
	jal case_3_5
	or $0 , $5 , $5 
	andi $5 , $7 , 52676
case_3_4:
	or $7 , $7 , $26
	ori $0 , $0 , 26733
	jr $31
	ori $0 , $31, 6619
case_3_5:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 48446
	lui $4 , 22421
	lui $17, 34950
	lui $28, 48796
	lui $31, 61182
	and $28, $0 , $17
	ori $28, $0 , 0
	nop 
	nop 
	lh $28, 46($28)
	ori $28, $0 , 0
	lh $0 , 54($28)
	ori $4 , $0 , 0
	sb $17, 35($4)
	addi $4 , $0 , -28091
	ori $4 , $0 , 0
	nop 
	lw $28, 28($4)
	andi $31, $4 , 57851
	ori $0 , $0 , 0
	nop 
	nop 
	sw $17, 60($0)
	or $4 , $17, $31
	jal case_4_1
	addi $28, $4 , 29466
	ori $0 , $0 , 0
	nop 
	nop 
	sb $4 , 8($0)
	jal case_4_2
	addi $31, $28, 17969
	ori $0 , $0 , 0
	nop 
	nop 
	lb $17, 22($0)
case_4_1:
	addi $28, $0 , 6184
	addi $4 , $0 , 28178
	jr $31
	ori $17, $0 , 0
	nop 
	lw $31, 96($17)
case_4_2:
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 25433
	lui $3 , 37868
	lui $6 , 4649
	lui $25, 17214
	lui $31, 61005
	beq $0 , $6 , case_5_1
	addi $0 , $3 , -30000
	ori $25, $0 , 0
	nop 
	sh $0 , 58($25)
case_5_1:
	sub $0 , $6 , $3 
	ori $0 , $0 , 0
	nop 
	nop 
	sw $31, 8($0)
	addi $31, $3 , 3424
	ori $3 , $0 , 0
	lb $25, 51($3)
	ori $31, $0 , 0
	nop 
	nop 
	lb $0 , 10($31)
	sub $3 , $25, $31
	slt $0 , $25, $3 
	add $31, $6 , $0 
	bne $25, $6 , case_5_2
	ori $6 , $3 , 22896
	slt $25, $3 , $0 
case_5_2:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 8340
	lui $13, 50396
	lui $16, 27867
	lui $19, 14450
	lui $31, 42882
	addi $31, $16, -12935
	beq $31, $16, case_6_1
	andi $19, $0 , 64622
	or $16, $16, $31
case_6_1:
	jal case_6_2
	and $19, $13, $19
	ori $19, $19, 2121
	jal case_6_3
	andi $19, $13, 6348
	ori $31, $31, 53630
case_6_2:
	addi $13, $19, 14263
	ori $16, $13, 50913
	jr $31
	and $19, $19, $31
case_6_3:
	ori $13, $0 , 0
	nop 
	nop 
	sb $0 , 89($13)
	beq $16, $31, case_6_4
	sltu $19, $13, $31
	slt $16, $31, $31
case_6_4:
	and $16, $16, $19
	addi $31, $16, -12555
	sltu $0 , $31, $16
	ori $13, $0 , 43836
	addi $16, $19, -25715
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 22857
	lui $7 , 42170
	lui $15, 21341
	lui $20, 38593
	lui $31, 35722
	addi $20, $31, 22856
	beq $31, $20, case_7_1
	addi $31, $0 , -17746
	ori $31, $0 , 0
	nop 
	nop 
	lw $0 , 8($31)
case_7_1:
	sltu $31, $7 , $7 
	bne $31, $0 , case_7_2
	add $0 , $0 , $15
	ori $31, $0 , 0
	sb $15, 78($31)
case_7_2:
	jal case_7_3
	or $20, $20, $7 
	ori $0 , $0 , 0
	nop 
	lb $7 , 10($0)
	jal case_7_4
	ori $20, $31, 18785
	and $15, $31, $7 
case_7_3:
	ori $0 , $0 , 0
	lh $20, 16($0)
	addi $0 , $7 , -25738
	jr $31
	sub $31, $0 , $31
case_7_4:
	ori $7 , $0 , 0
	sw $7 , 56($7)
	jal case_7_5
	addi $15, $20, -16094
	slt $20, $15, $15
	jal case_7_6
	ori $15, $20, 35817
	ori $15, $0 , 0
	nop 
	nop 
	sh $7 , 60($15)
case_7_5:
	ori $7 , $0 , 0
	nop 
	nop 
	lb $15, 29($7)
	or $0 , $20, $7 
	jr $31
	slt $7 , $7 , $31
case_7_6:
	bne $7 , $15, case_7_7
	or $15, $15, $0 
	addi $15, $15, 26015
case_7_7:
	sltu $7 , $7 , $31
	ori $7 , $0 , 0
	nop 
	nop 
	lw $15, 96($7)
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 43328
	lui $4 , 10784
	lui $9 , 52050
	lui $17, 18785
	lui $31, 30304
	sub $9 , $9 , $9 
	ori $0 , $0 , 0
	lh $4 , 18($0)
	addi $0 , $4 , -415
	or $9 , $17, $17
	jal case_8_1
	addi $0 , $0 , -14916
	sltu $17, $17, $17
	jal case_8_2
	addi $0 , $9 , 12586
	addi $17, $4 , -11918
case_8_1:
	addi $9 , $4 , 27665
	addi $17, $9 , -13649
	jr $31
	addi $31, $0 , 29800
case_8_2:
	addi $17, $31, 14705
	ori $4 , $0 , 0
	nop 
	lw $4 , 68($4)
	ori $4 , $0 , 0
	nop 
	sh $0 , 0($4)
	addi $4 , $17, 2780
	beq $0 , $17, case_8_3
	addi $9 , $4 , 21313
	ori $4 , $0 , 0
	lb $9 , 37($4)
case_8_3:
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 5084
	lui $5 , 23737
	lui $17, 47017
	lui $30, 35509
	lui $31, 53454
	sub $17, $5 , $17
	jal case_9_1
	add $0 , $5 , $17
	ori $0 , $0 , 0
	lh $0 , 28($0)
	jal case_9_2
	addi $30, $5 , 28781
	sub $30, $30, $30
case_9_1:
	ori $5 , $0 , 0
	lh $0 , 12($5)
	ori $17, $0 , 0
	nop 
	lb $30, 93($17)
	jr $31
	ori $30, $0 , 0
	lh $5 , 54($30)
case_9_2:
	ori $31, $31, 59574
	beq $5 , $30, case_9_3
	sltu $5 , $17, $30
	ori $31, $0 , 0
	nop 
	nop 
	lb $17, 99($31)
case_9_3:
	jal case_9_4
	addi $30, $17, 22094
	addi $5 , $17, -19972
	jal case_9_5
	addi $31, $30, -4558
	sub $31, $5 , $31
case_9_4:
	ori $17, $17, 24488
	andi $5 , $30, 61598
	jr $31
	addi $30, $31, -1758
case_9_5:
	jal case_9_6
	andi $30, $0 , 51467
	ori $0 , $17, 34705
	jal case_9_7
	add $31, $30, $31
	or $31, $17, $0 
case_9_6:
	add $17, $0 , $17
	ori $17, $0 , 0
	nop 
	nop 
	sb $17, 37($17)
	jr $31
	or $0 , $30, $30
case_9_7:
	ori $31, $0 , 0
	lw $17, 96($31)
	bne $30, $0 , case_9_8
	addi $5 , $31, 18743
	ori $17, $0 , 0
	sw $5 , 72($17)
case_9_8:
	and $31, $0 , $31
	ori $0 , $0 , 0
	sw $30, 60($0)
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 4562
	lui $18, 9493
	lui $23, 6864
	lui $24, 62291
	lui $31, 64983
	ori $0 , $0 , 0
	sb $0 , 38($0)
	ori $31, $0 , 33407
	ori $23, $0 , 22031
	ori $0 , $23, 58284
	beq $18, $0 , case_10_1
	slt $18, $23, $23
	slt $24, $24, $24
case_10_1:
	jal case_10_2
	sltu $24, $0 , $23
	addi $31, $0 , 18924
	jal case_10_3
	add $23, $18, $0 
	addi $24, $23, 26650
case_10_2:
	ori $18, $0 , 0
	sw $24, 20($18)
	ori $18, $0 , 0
	sw $0 , 88($18)
	jr $31
	ori $18, $0 , 0
	sh $31, 66($18)
case_10_3:
	jal case_10_4
	addi $0 , $23, 10341
	ori $24, $18, 13476
	jal case_10_5
	or $31, $18, $31
	addi $0 , $23, 4358
case_10_4:
	ori $23, $24, 10521
	sub $24, $23, $23
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	lh $18, 28($0)
case_10_5:
	ori $23, $0 , 0
	sw $18, 4($23)
	ori $31, $0 , 0
	nop 
	sh $23, 84($31)
	ori $23, $24, 53990
	lui $1 , 0
case_10_end:
