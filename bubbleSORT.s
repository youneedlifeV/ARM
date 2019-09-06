 AREA bubbleSORT, CODE, READONLY
	
	CODE32
	PRESERVE8
	
	EXPORT __bubbleSORT
	; R0 = &arr[0]
	; R1 = max 
	
__bubbleSORT
	STMFD SP!, {R2-R9, LR}
	
	MOV R4, R1					; SECOND_FOR_LOOP
	MOV R3, R4
	SUB R1, R1, #1
	MOV R9, R1					; FIRST_FOR_LOOP						
		
FIRST_FOR_LOOP
	MOV R5, R0
	MOV R4, R3

SECOND_FOR_LOOP
	LDR R6, [R5], #4
	LDR R7, [R5]
	CMP R7, R6
	STRLS R6, [R5]
	STRLS R7, [R5, #-4]	
	SUBS R4, R4, #1
	BNE SECOND_FOR_LOOP
	
	SUBS R9, R9, #1	 
	BNE FIRST_FOR_LOOP
	
	LDMFD SP!, {R2-R9, PC}^
	END