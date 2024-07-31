	AREA RESET,CODE
		ENTRY
		LDR R0,=DATA1
		LDR R3,=0X40000000 ; memory location for storing answer
		MOV R4,#05 ; //N- number of elements
		LDR R1,[R0],#04; assume first no. as smaller no & increment R0 by 4
		SUB R4,R4,#01 ; compare with n-1 elements
BACK
		LDR R2,[R0] ; get next number & compare with small
		CMP R1,R2
		BLS LESS ; // If R1 < R2 , BRANCH 
		MOV R1,R2 ; update with new smaller no
LESS
		ADD R0, R0,#04 ; increment pointer to next number
		SUB R4,R4,#01
		CMP R4,#00
		BNE BACK
		STR R1, [R3] ; // SMALLEST VALUE STORED IN MEMORY LOCATION
STOP B STOP
	AREA DATA,CODE
DATA1 DCD &64,&05,&96,&10,&65
		END