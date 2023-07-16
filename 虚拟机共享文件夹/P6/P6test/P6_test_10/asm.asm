.text
case_1_begin:
	lui $0 , 42430
	lui $19, 41647
	lui $23, 7998
	lui $27, 19477
	lui $31, 6081
	jal case_1_1
	andi $27, $19, 49391
	ori $0 , $0 , 0
	sb $27, 88($0)
	jal case_1_2
	addi $31, $19, 31259
	ori $27, $0 , 0
	nop 
	lw $27, 68($27)
case_1_1:
	ori $23, $0 , 0
	nop 
	lb $23, 24($23)
	ori $0 , $19, 43147
	jr $31
	ori $0 , $0 , 0
	sh $31, 88($0)
case_1_2:
	ori $23, $27, 10634
	jal case_1_3
	ori $23, $27, 29749
	ori $19, $0 , 0
	nop 
	lb $19, 23($19)
	jal case_1_4
	slt $19, $31, $23
	addi $27, $27, 21153
case_1_3:
	addi $19, $23, -10549
	addi $0 , $23, -2643
	jr $31
	andi $0 , $23, 61070
case_1_4:
	beq $27, $27, case_1_5
	ori $31, $31, 54539
	ori $19, $19, 10047
case_1_5:
	bne $0 , $23, case_1_6
	sub $0 , $0 , $0 
	ori $23, $0 , 0
	nop 
	sb $23, 31($23)
case_1_6:
	slt $27, $0 , $27
	addi $19, $31, 15841
	ori $31, $31, 35665
	ori $19, $0 , 0
	lb $23, 77($19)
	addi $23, $19, -26892
	lui $1 , 0
case_1_end:
case_2_begin:
	lui $0 , 513
	lui $4 , 63488
	lui $17, 19622
	lui $19, 53793
	lui $31, 9105
	ori $0 , $4 , 10020
	andi $31, $0 , 26964
	or $17, $4 , $17
	addi $31, $31, 7570
	jal case_2_1
	and $4 , $19, $0 
	ori $0 , $0 , 0
	sb $0 , 93($0)
	jal case_2_2
	andi $17, $19, 47112
	addi $31, $0 , 24167
case_2_1:
	ori $4 , $19, 8475
	ori $4 , $17, 32376
	jr $31
	ori $31, $0 , 0
	lb $31, 91($31)
case_2_2:
	bne $4 , $4 , case_2_3
	ori $31, $4 , 19659
	ori $0 , $19, 53585
case_2_3:
	ori $31, $0 , 0
	sw $31, 52($31)
	ori $17, $0 , 0
	nop 
	nop 
	sb $0 , 65($17)
	ori $31, $0 , 0
	nop 
	nop 
	lb $17, 38($31)
	jal case_2_4
	ori $19, $17, 41758
	andi $19, $17, 3512
	jal case_2_5
	addi $0 , $4 , -14425
	addi $31, $0 , -19779
case_2_4:
	andi $4 , $19, 5367
	andi $17, $17, 10117
	jr $31
	ori $17, $19, 24737
case_2_5:
	lui $1 , 0
case_2_end:
case_3_begin:
	lui $0 , 26054
	lui $20, 58306
	lui $23, 48030
	lui $28, 63349
	lui $31, 17196
	beq $31, $28, case_3_1
	andi $31, $31, 19711
	ori $28, $28, 60744
case_3_1:
	ori $28, $20, 55848
	and $31, $31, $20
	and $20, $23, $28
	ori $0 , $0 , 0
	nop 
	lh $31, 44($0)
	ori $31, $20, 6772
	ori $28, $0 , 0
	lh $0 , 0($28)
	slt $20, $23, $31
	ori $31, $0 , 0
	sb $31, 62($31)
	ori $31, $20, 16713
	lui $1 , 0
case_3_end:
case_4_begin:
	lui $0 , 27238
	lui $1 , 11730
	lui $5 , 18155
	lui $11, 13542
	lui $31, 24384
	beq $0 , $31, case_4_1
	and $5 , $0 , $0 
	ori $1 , $1 , 49437
case_4_1:
	ori $31, $0 , 0
	nop 
	sb $1 , 45($31)
	addi $31, $0 , 26088
	ori $11, $0 , 0
	nop 
	sb $5 , 42($11)
	ori $11, $0 , 59066
	bne $11, $5 , case_4_2
	add $0 , $0 , $31
	sltu $1 , $1 , $0 
case_4_2:
	ori $5 , $0 , 0
	nop 
	nop 
	sw $11, 48($5)
	add $0 , $31, $11
	addi $11, $31, -28860
	jal case_4_3
	andi $11, $1 , 52272
	ori $0 , $0 , 0
	sh $5 , 44($0)
	jal case_4_4
	andi $0 , $1 , 59250
	ori $11, $0 , 0
	nop 
	lb $11, 34($11)
case_4_3:
	ori $11, $5 , 36491
	addi $11, $11, -8220
	jr $31
	ori $31, $0 , 0
	nop 
	nop 
	sh $1 , 8($31)
case_4_4:
	lui $1 , 0
case_4_end:
case_5_begin:
	lui $0 , 55172
	lui $21, 56856
	lui $22, 38683
	lui $29, 1881
	lui $31, 20386
	jal case_5_1
	addi $22, $22, 3145
	addi $29, $31, -1891
	jal case_5_2
	and $22, $22, $22
	ori $31, $22, 54772
case_5_1:
	ori $0 , $0 , 0
	nop 
	lh $29, 36($0)
	andi $0 , $29, 57163
	jr $31
	addi $21, $29, 13185
case_5_2:
	jal case_5_3
	addi $21, $0 , 7678
	ori $21, $0 , 0
	lw $31, 68($21)
	jal case_5_4
	andi $21, $22, 17470
	andi $0 , $22, 5044
case_5_3:
	addi $21, $0 , 26852
	ori $0 , $0 , 0
	nop 
	sb $0 , 48($0)
	jr $31
	ori $21, $0 , 0
	sw $21, 68($21)
case_5_4:
	ori $22, $29, 28885
	andi $21, $0 , 2778
	jal case_5_5
	and $22, $21, $21
	andi $21, $22, 32093
	jal case_5_6
	and $29, $31, $31
	andi $0 , $0 , 37435
case_5_5:
	ori $22, $29, 29445
	or $21, $21, $21
	jr $31
	ori $31, $0 , 0
	nop 
	sb $29, 4($31)
case_5_6:
	ori $31, $0 , 0
	nop 
	lb $21, 14($31)
	jal case_5_7
	ori $22, $29, 33142
	andi $22, $21, 2973
	jal case_5_8
	ori $29, $0 , 22747
	add $21, $22, $29
case_5_7:
	ori $22, $0 , 53103
	ori $22, $0 , 0
	sh $29, 22($22)
	jr $31
	and $0 , $0 , $21
case_5_8:
	bne $22, $21, case_5_9
	ori $22, $0 , 51667
	ori $31, $0 , 0
	sh $21, 22($31)
case_5_9:
	beq $31, $21, case_5_10
	andi $31, $0 , 52923
	ori $29, $0 , 0
	nop 
	lw $22, 20($29)
case_5_10:
	bne $21, $22, case_5_11
	addi $31, $31, -17758
	ori $0 , $29, 26088
case_5_11:
	lui $1 , 0
case_5_end:
case_6_begin:
	lui $0 , 58120
	lui $9 , 42271
	lui $19, 58460
	lui $28, 4790
	lui $31, 18392
	ori $0 , $0 , 0
	sb $28, 15($0)
	ori $9 , $0 , 0
	nop 
	nop 
	lh $9 , 74($9)
	ori $19, $0 , 0
	lb $9 , 91($19)
	addi $28, $19, -4471
	jal case_6_1
	sltu $19, $9 , $0 
	ori $28, $0 , 0
	nop 
	nop 
	sh $31, 64($28)
	jal case_6_2
	ori $19, $19, 50795
	ori $9 , $0 , 0
	nop 
	lw $9 , 20($9)
case_6_1:
	ori $19, $0 , 0
	nop 
	nop 
	lh $28, 70($19)
	andi $0 , $19, 11603
	jr $31
	ori $28, $0 , 0
	sw $19, 60($28)
case_6_2:
	ori $19, $31, 53164
	ori $28, $31, 6239
	jal case_6_3
	addi $28, $9 , 25136
	sltu $9 , $9 , $9 
	jal case_6_4
	and $9 , $19, $0 
	addi $28, $28, 22356
case_6_3:
	addi $0 , $9 , 10691
	slt $0 , $9 , $0 
	jr $31
	addi $19, $28, 3530
case_6_4:
	jal case_6_5
	add $0 , $0 , $0 
	addi $0 , $19, -22763
	jal case_6_6
	sub $31, $19, $19
	ori $31, $0 , 0
	nop 
	nop 
	sh $9 , 8($31)
case_6_5:
	addi $19, $9 , 1609
	ori $19, $0 , 0
	nop 
	nop 
	lw $9 , 76($19)
	jr $31
	or $31, $0 , $9 
case_6_6:
	bne $28, $19, case_6_7
	add $19, $19, $31
	addi $28, $9 , 21823
case_6_7:
	lui $1 , 0
case_6_end:
case_7_begin:
	lui $0 , 43294
	lui $12, 65092
	lui $28, 32047
	lui $29, 39861
	lui $31, 16028
	jal case_7_1
	or $12, $0 , $29
	or $29, $0 , $12
	jal case_7_2
	and $31, $12, $31
	ori $29, $31, 44634
case_7_1:
	ori $29, $0 , 0
	sb $29, 64($29)
	ori $29, $28, 23738
	jr $31
	and $29, $29, $28
case_7_2:
	addi $29, $31, 22794
	ori $12, $0 , 0
	lw $28, 84($12)
	ori $0 , $0 , 0
	nop 
	nop 
	sw $0 , 68($0)
	ori $29, $29, 9317
	jal case_7_3
	andi $29, $28, 333
	sltu $0 , $0 , $31
	jal case_7_4
	addi $28, $28, 13020
	ori $31, $0 , 0
	lw $31, 68($31)
case_7_3:
	sltu $0 , $29, $0 
	ori $29, $0 , 0
	sb $12, 57($29)
	jr $31
	ori $29, $0 , 0
	sw $31, 0($29)
case_7_4:
	andi $12, $12, 13890
	andi $12, $0 , 3660
	beq $29, $0 , case_7_5
	ori $28, $28, 1114
	addi $29, $31, -25976
case_7_5:
	addi $0 , $29, -11275
	lui $1 , 0
case_7_end:
case_8_begin:
	lui $0 , 53128
	lui $7 , 61926
	lui $13, 1521
	lui $21, 60751
	lui $31, 28940
	bne $7 , $31, case_8_1
	or $31, $7 , $21
	slt $0 , $13, $13
case_8_1:
	addi $31, $31, -26433
	sub $7 , $7 , $13
	jal case_8_2
	addi $0 , $21, -4895
	addi $21, $7 , -14182
	jal case_8_3
	ori $13, $21, 25441
	add $31, $31, $7 
case_8_2:
	ori $21, $0 , 0
	nop 
	lb $21, 3($21)
	andi $13, $7 , 4404
	jr $31
	ori $31, $0 , 0
	nop 
	sh $21, 14($31)
case_8_3:
	beq $21, $21, case_8_4
	ori $21, $31, 16714
	ori $13, $0 , 0
	nop 
	nop 
	sh $7 , 82($13)
case_8_4:
	jal case_8_5
	ori $13, $0 , 12605
	sub $13, $13, $0 
	jal case_8_6
	andi $21, $0 , 34015
	andi $31, $31, 51868
case_8_5:
	ori $7 , $0 , 0
	lw $0 , 56($7)
	add $13, $13, $7 
	jr $31
	andi $7 , $7 , 7870
case_8_6:
	sltu $21, $13, $21
	jal case_8_7
	andi $0 , $21, 54234
	ori $0 , $0 , 0
	sb $13, 70($0)
	jal case_8_8
	addi $21, $13, 21409
	ori $31, $0 , 0
	nop 
	nop 
	lb $7 , 70($31)
case_8_7:
	ori $0 , $0 , 0
	lh $7 , 58($0)
	andi $13, $13, 16094
	jr $31
	ori $0 , $0 , 0
	nop 
	sb $13, 40($0)
case_8_8:
	ori $31, $0 , 0
	sb $7 , 92($31)
	or $13, $13, $0 
	lui $1 , 0
case_8_end:
case_9_begin:
	lui $0 , 44477
	lui $13, 60405
	lui $18, 53490
	lui $26, 27783
	lui $31, 1049
	beq $18, $18, case_9_1
	ori $13, $18, 6013
	slt $26, $13, $26
case_9_1:
	andi $13, $26, 31324
	ori $26, $31, 17866
	sub $0 , $0 , $0 
	ori $31, $0 , 0
	nop 
	sh $31, 98($31)
	addi $26, $0 , 8612
	jal case_9_2
	addi $0 , $13, 3820
	slt $26, $18, $13
	jal case_9_3
	sltu $13, $31, $31
	andi $13, $26, 43411
case_9_2:
	ori $0 , $0 , 0
	sb $26, 82($0)
	ori $13, $0 , 59714
	jr $31
	ori $26, $0 , 0
	nop 
	nop 
	sh $26, 0($26)
case_9_3:
	slt $0 , $18, $13
	ori $13, $0 , 0
	nop 
	sh $18, 6($13)
	bne $31, $0 , case_9_4
	and $13, $31, $13
	ori $18, $0 , 0
	nop 
	nop 
	sw $18, 72($18)
case_9_4:
	lui $1 , 0
case_9_end:
case_10_begin:
	lui $0 , 21483
	lui $1 , 59931
	lui $9 , 32275
	lui $25, 2660
	lui $31, 44707
	andi $31, $25, 13328
	jal case_10_1
	addi $25, $1 , -3733
	ori $1 , $1 , 10709
	jal case_10_2
	andi $1 , $31, 50188
	andi $0 , $1 , 34194
case_10_1:
	addi $0 , $1 , 10199
	andi $9 , $1 , 25655
	jr $31
	ori $0 , $0 , 0
	lw $31, 56($0)
case_10_2:
	addi $0 , $0 , -14168
	andi $1 , $31, 45826
	ori $1 , $31, 19026
	jal case_10_3
	addi $1 , $1 , 8146
	ori $9 , $0 , 0
	lb $25, 4($9)
	jal case_10_4
	or $31, $31, $1 
	andi $9 , $25, 36290
case_10_3:
	ori $25, $0 , 0
	nop 
	nop 
	sh $1 , 98($25)
	and $9 , $1 , $9 
	jr $31
	ori $1 , $9 , 13401
case_10_4:
	addi $31, $9 , 18693
	andi $1 , $9 , 52991
	ori $31, $0 , 0
	nop 
	sw $9 , 44($31)
	andi $25, $31, 50674
	lui $1 , 0
case_10_end:
