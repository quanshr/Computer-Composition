.text
case_1_begin:
	lui $0 , 65067
	lui $5 , 57116
	lui $12, 43752
	lui $24, 55402
	lui $31, 64520
	jal case_1_1
	addi $5 , $24, -5524
	ori $0 , $0 , 0
	nop 
	lb $5 , 98($0)
	jal case_1_2
	andi $31, $0 , 62571
	ori $5 , $0 , 0
	sh $24, 40($5)
case_1_1:
	addi $0 , $24, 3583
	sub $24, $0 , $0 
	jr $31
	addi $24, $0 , 439
case_1_2:
	ori $31, $0 , 0
	nop 
	nop 
	sb $0 , 70($31)
	bne $24, $0 , case_1_3
	ori $24, $0 , 19027
	sltu $24, $24, $5 
case_1_3:
	ori $5 , $0 , 0
	nop 
	sh $0 , 6($5)
	beq $31, $24, case_1_4
	and $5 , $12, $0 
	ori $0 , $0 , 0
	nop 
	nop 
	sb $12, 38($0)
case_1_4:
	bne $12, $31, case_1_5
	addi $31, $31, -12008
	ori $24, $24, 7648
case_1_5:
	ori $5 , $0 , 0
	sw $0 , 32($5)
	ori $31, $0 , 7775
	andi $0 , $24, 19789
	jal case_1_6
	addi $5 , $24, -23135
	ori $31, $0 , 0
	sb $12, 84($31)
	jal case_1_7
	andi $5 , $0 , 452
	andi $0 , $5 , 61453
case_1_6:
	ori $5 , $0 , 52405
	ori $24, $0 , 0
	sh $12, 62($24)
	jr $31
	ori $12, $0 , 0
	sw $24, 60($12)
case_1_7:
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 32492
	lui $3 , 65360
	lui $8 , 25798
	lui $17, 21684
	lui $31, 62092
	ori $3 , $0 , 0
	nop 
	nop 
	lw $31, 44($3)
	ori $17, $0 , 0
	lw $0 , 88($17)
	jal case_2_1
	addi $3 , $3 , -9011
	and $3 , $31, $8 
	jal case_2_2
	addi $3 , $31, -31368
	addi $3 , $8 , -30471
case_2_1:
	sltu $0 , $17, $0 
	ori $3 , $0 , 0
	nop 
	nop 
	sh $17, 90($3)
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	sb $17, 57($0)
case_2_2:
	jal case_2_3
	ori $0 , $0 , 50955
	add $0 , $3 , $8 
	jal case_2_4
	andi $3 , $17, 55110
	addi $0 , $17, -21226
case_2_3:
	sub $0 , $17, $0 
	ori $3 , $17, 24839
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	lb $3 , 96($31)
case_2_4:
	jal case_2_5
	addi $0 , $17, 28035
	slt $0 , $17, $3 
	jal case_2_6
	and $17, $31, $17
	ori $8 , $0 , 0
	nop 
	nop 
	lw $31, 72($8)
case_2_5:
	ori $8 , $0 , 28075
	ori $8 , $0 , 0
	nop 
	lb $8 , 72($8)
	jr $31
	ori $8 , $0 , 0
	nop 
	nop 
	lh $17, 30($8)
case_2_6:
	addi $17, $17, -6432
	addi $3 , $31, 16309
	ori $17, $0 , 29750
	jal case_2_7
	ori $0 , $3 , 26451
	ori $3 , $0 , 0
	nop 
	nop 
	sh $31, 72($3)
	jal case_2_8
	ori $0 , $31, 52492
	ori $17, $0 , 0
	nop 
	lw $17, 56($17)
case_2_7:
	or $17, $17, $17
	slt $0 , $8 , $0 
	jr $31
	addi $31, $3 , -10345
case_2_8:
	bne $8 , $17, case_2_9
	addi $31, $0 , 11149
	ori $8 , $0 , 0
	lw $8 , 44($8)
case_2_9:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 37864
	lui $2 , 47051
	lui $9 , 13865
	lui $10, 20923
	lui $31, 55365
	add $10, $9 , $0 
	ori $0 , $0 , 0
	nop 
	lh $0 , 86($0)
	addi $0 , $0 , 15248
	jal case_3_1
	andi $10, $2 , 61524
	addi $9 , $31, -26698
	jal case_3_2
	addi $2 , $2 , -10903
	addi $9 , $31, -30748
case_3_1:
	ori $9 , $2 , 21385
	sltu $10, $10, $10
	jr $31
	ori $0 , $0 , 0
	nop 
	nop 
	lb $0 , 10($0)
case_3_2:
	jal case_3_3
	ori $2 , $9 , 11102
	andi $31, $0 , 26165
	jal case_3_4
	sltu $9 , $2 , $0 
	ori $10, $10, 7549
case_3_3:
	ori $10, $0 , 0
	lh $10, 68($10)
	ori $0 , $0 , 0
	nop 
	lh $2 , 4($0)
	jr $31
	or $2 , $2 , $2 
case_3_4:
	ori $0 , $0 , 9346
	bne $31, $31, case_3_5
	ori $2 , $31, 6932
	ori $31, $0 , 0
	nop 
	nop 
	lb $31, 86($31)
case_3_5:
	ori $9 , $0 , 0
	lw $31, 16($9)
	addi $9 , $10, 17609
	bne $9 , $2 , case_3_6
	or $9 , $2 , $9 
	ori $2 , $0 , 0
	lb $2 , 84($2)
case_3_6:
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 63057
	lui $3 , 11513
	lui $8 , 15046
	lui $11, 39671
	lui $31, 52669
	jal case_4_1
	andi $0 , $11, 44111
	ori $0 , $0 , 0
	lb $31, 29($0)
	jal case_4_2
	andi $3 , $11, 65299
	ori $31, $0 , 0
	nop 
	nop 
	sw $3 , 16($31)
case_4_1:
	addi $8 , $3 , -14504
	ori $0 , $3 , 50489
	jr $31
	addi $8 , $3 , -1187
case_4_2:
	sub $11, $8 , $11
	ori $31, $0 , 0
	sb $8 , 24($31)
	ori $0 , $0 , 0
	nop 
	sb $8 , 64($0)
	ori $8 , $0 , 0
	sh $0 , 34($8)
	andi $3 , $3 , 53138
	andi $8 , $3 , 39087
	ori $31, $0 , 0
	nop 
	sb $31, 56($31)
	sltu $11, $0 , $31
	or $3 , $8 , $31
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 46566
	lui $5 , 14631
	lui $12, 52301
	lui $22, 45099
	lui $31, 57738
	ori $22, $0 , 0
	sh $5 , 6($22)
	beq $22, $0 , case_5_1
	addi $12, $22, -30280
	addi $31, $22, 27225
case_5_1:
	andi $0 , $12, 65478
	addi $0 , $31, 22848
	sltu $12, $22, $0 
	or $22, $31, $22
	andi $31, $5 , 19189
	ori $5 , $0 , 0
	nop 
	nop 
	lh $0 , 32($5)
	ori $0 , $0 , 0
	lb $0 , 73($0)
	addi $0 , $31, -18786
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 19954
	lui $1 , 54442
	lui $10, 45698
	lui $18, 33574
	lui $31, 31302
	addi $0 , $31, -3945
	ori $10, $0 , 0
	nop 
	nop 
	sw $1 , 12($10)
	addi $10, $1 , -2467
	andi $0 , $0 , 58692
	jal case_6_1
	andi $1 , $1 , 53124
	addi $18, $31, 28153
	jal case_6_2
	addi $10, $0 , -14345
	ori $31, $0 , 0
	nop 
	lb $18, 8($31)
case_6_1:
	addi $0 , $10, 24347
	add $0 , $0 , $10
	jr $31
	andi $10, $31, 17149
case_6_2:
	addi $10, $18, 24825
	jal case_6_3
	or $18, $10, $0 
	addi $1 , $18, 23908
	jal case_6_4
	add $31, $31, $10
	andi $10, $10, 16942
case_6_3:
	andi $18, $18, 25603
	andi $10, $10, 62051
	jr $31
	addi $0 , $10, 15794
case_6_4:
	addi $0 , $18, -1590
	jal case_6_5
	addi $0 , $0 , 25759
	ori $0 , $0 , 0
	lw $18, 52($0)
	jal case_6_6
	andi $1 , $18, 32606
	ori $10, $0 , 0
	nop 
	nop 
	sw $0 , 24($10)
case_6_5:
	addi $1 , $0 , -9539
	sub $1 , $0 , $1 
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	sw $18, 20($31)
case_6_6:
	bne $18, $0 , case_6_7
	addi $31, $31, -32521
	ori $1 , $0 , 0
	nop 
	sw $18, 24($1)
case_6_7:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 65150
	lui $6 , 518
	lui $8 , 57405
	lui $12, 16263
	lui $31, 40251
	jal case_7_1
	slt $8 , $12, $0 
	ori $6 , $0 , 29904
	jal case_7_2
	addi $6 , $0 , 13146
	ori $0 , $0 , 0
	lb $6 , 22($0)
case_7_1:
	andi $12, $12, 60541
	addi $6 , $6 , -30503
	jr $31
	or $6 , $12, $6 
case_7_2:
	addi $6 , $8 , -9136
	jal case_7_3
	slt $6 , $12, $6 
	addi $0 , $12, -23239
	jal case_7_4
	ori $31, $12, 52689
	ori $8 , $0 , 0
	sh $12, 74($8)
case_7_3:
	ori $6 , $0 , 0
	nop 
	nop 
	sh $6 , 80($6)
	addi $12, $0 , -22922
	jr $31
	ori $6 , $0 , 0
	lb $0 , 7($6)
case_7_4:
	jal case_7_5
	addi $6 , $8 , -30845
	addi $12, $6 , -31477
	jal case_7_6
	andi $31, $0 , 34923
	ori $8 , $0 , 0
	nop 
	nop 
	lb $8 , 21($8)
case_7_5:
	and $12, $8 , $12
	addi $12, $12, -12926
	jr $31
	andi $31, $8 , 47778
case_7_6:
	bne $12, $0 , case_7_7
	slt $6 , $31, $12
	addi $6 , $12, 32032
case_7_7:
	sltu $8 , $12, $6 
	sltu $31, $12, $0 
	bne $8 , $6 , case_7_8
	andi $12, $31, 39847
	addi $12, $12, 2819
case_7_8:
	addi $31, $12, 14869
	jal case_7_9
	addi $12, $8 , -7250
	ori $31, $0 , 0
	nop 
	sb $8 , 6($31)
	jal case_7_10
	addi $31, $12, 28529
	ori $8 , $0 , 0
	nop 
	sb $8 , 20($8)
case_7_9:
	addi $6 , $12, -10661
	addi $8 , $8 , -28633
	jr $31
	addi $31, $6 , -3389
case_7_10:
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 47903
	lui $2 , 46222
	lui $3 , 8808
	lui $24, 38610
	lui $31, 62923
	addi $3 , $24, 1378
	ori $24, $0 , 0
	sw $2 , 20($24)
	sub $3 , $31, $3 
	jal case_8_1
	addi $2 , $24, -2911
	addi $0 , $0 , -19053
	jal case_8_2
	addi $3 , $24, 9650
	sub $2 , $2 , $3 
case_8_1:
	ori $3 , $0 , 10279
	addi $0 , $0 , 16581
	jr $31
	ori $31, $31, 61788
case_8_2:
	ori $0 , $0 , 0
	nop 
	sb $2 , 99($0)
	addi $0 , $31, -13506
	jal case_8_3
	andi $2 , $24, 3096
	ori $3 , $0 , 0
	sb $31, 83($3)
	jal case_8_4
	andi $2 , $3 , 52754
	slt $31, $24, $24
case_8_3:
	ori $24, $0 , 0
	nop 
	sb $0 , 41($24)
	ori $24, $0 , 0
	nop 
	sw $3 , 12($24)
	jr $31
	addi $31, $24, -26137
case_8_4:
	ori $0 , $0 , 0
	nop 
	nop 
	lh $0 , 58($0)
	jal case_8_5
	and $2 , $0 , $0 
	ori $31, $0 , 0
	sw $2 , 0($31)
	jal case_8_6
	addi $24, $24, -22564
	addi $2 , $2 , -11009
case_8_5:
	addi $3 , $3 , 19105
	andi $24, $2 , 57978
	jr $31
	andi $31, $24, 24750
case_8_6:
	andi $31, $31, 18216
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 48932
	lui $20, 11255
	lui $22, 6869
	lui $30, 9164
	lui $31, 60119
	addi $31, $30, 3161
	beq $20, $30, case_9_1
	addi $22, $30, -9632
	addi $30, $0 , 10224
case_9_1:
	or $20, $31, $31
	beq $30, $31, case_9_2
	addi $0 , $22, -8096
	sub $30, $0 , $30
case_9_2:
	andi $30, $0 , 57213
	ori $22, $0 , 0
	nop 
	nop 
	lb $31, 68($22)
	sub $0 , $22, $22
	or $30, $31, $30
	jal case_9_3
	ori $20, $22, 23095
	sltu $22, $22, $31
	jal case_9_4
	andi $20, $20, 6137
	addi $31, $0 , -26440
case_9_3:
	ori $0 , $22, 23998
	ori $30, $0 , 42926
	jr $31
	addi $0 , $30, -13258
case_9_4:
	andi $0 , $22, 13686
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 19873
	lui $14, 26674
	lui $18, 15652
	lui $21, 57243
	lui $31, 27112
	addi $31, $18, -7574
	andi $14, $18, 48784
	ori $14, $0 , 0
	lh $18, 84($14)
	jal case_10_1
	addi $0 , $14, -1310
	ori $18, $0 , 0
	nop 
	nop 
	lw $14, 68($18)
	jal case_10_2
	addi $14, $14, 3450
	ori $0 , $0 , 0
	nop 
	sb $31, 52($0)
case_10_1:
	ori $0 , $0 , 0
	sb $21, 78($0)
	addi $14, $0 , -15743
	jr $31
	and $21, $0 , $18
case_10_2:
	ori $21, $0 , 0
	sw $18, 52($21)
	ori $14, $14, 27205
	ori $31, $0 , 0
	nop 
	nop 
	sb $18, 17($31)
	addi $21, $0 , -24946
	ori $21, $0 , 0
	lw $31, 40($21)
	ori $31, $0 , 0
	nop 
	sb $18, 16($31)
	lui $1 , 0
case_10_end:
