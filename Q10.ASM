  AREA program,code,readonly
Entry
	LDR R0,=value1
		LDR R1,[R0]
		LDR R2,[R0, #0x04]
		LDR R3,=value2
		LDR R4,[R3]
		LDR R5,[R3, #0x04]
		ADDS R2,R5
		ADC R1,R4
		LDR R6,address
		STR R1,[R6]
	STR R2,[R6,#0x04]
		AREA program,data,readonly
value1 DCD &12A2E640, &F2100123
value2 DCD &0010198F, &40023F51
address DCD &00000090
		END
