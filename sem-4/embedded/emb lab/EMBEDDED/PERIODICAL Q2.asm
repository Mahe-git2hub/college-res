ORG 000H
MOV R0,#00H
MOV R6,#00H
MOV R5,#00H
MOV R2,#00H
MOV R0,#4H
MOV R2,00H
MOV A,R0
MOV R6,A
ACALL SQ
SJMP L

SQ:
	DEC R2
	MOV A,R2
	JZ L
	MOV A,R6
	MOV B,R2
	MUL AB
	MOV R6,A
	MOV R5,B
	INC R2
	DJNZ R2,SQ
	RET

L:
	CLR A