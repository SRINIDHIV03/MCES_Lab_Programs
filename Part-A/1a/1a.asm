	AREA RESET, CODE
		ENTRY
		MOV R0,#00 ; A
		MOV R1,#1 ; B
		MOV R2,#2 ; C
		MOV R3,#3; D
		ADD R0,R2,R1
		SUB R0,R0,R3
STOP B STOP
		END