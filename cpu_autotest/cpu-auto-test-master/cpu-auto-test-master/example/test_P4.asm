.data
	stack: .space 1000

.text
	ori $1, $0, 4
	jal dfs
	ori $4, $1, 3
	j end

dfs:
	ori $2, $0, 2
	sw $2, stack($1)
	lw $3, stack($1)
	jr $31

end:
	add $5, $4, $1
	beq $5, $5, if
	lui $29, 0x00002133
if:
	sub $30, $0, $5