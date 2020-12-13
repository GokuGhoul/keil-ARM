	area program,code,readonly
entry
		LDR R0,value1
		MOV R1,#0x20 ;count 32 bits
		MOV R2,#0x00 ;count number of 0’s
		MOV R3,#0x00 ; count number of 1’s
loop 
	MOVS R0,R0,RRX
	ADDCS R3,R3,#0x01
	ADDCC R2,R2,#0x01
	SUBS R1,R2,#0x01
	CMP R1,#0x00
	BNE loop
		area program,data,readonly
value1 DCD &ABCDEFFF
		END
