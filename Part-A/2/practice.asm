	AREA RESET,CODE
		ENTRY
		  MOV R0, #4

         EOR R1,R1

         MOV R0,R0,LSL #1

L1    SUBS  R0, #1

         ADD     R1,#1

         BNE      L1 
STOP B STOP
		END