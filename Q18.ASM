	area program,code,readonly
entry
		LDR R0,=array
		MOV R3,#0x08 ;number of numbers
		MOV R2,#0x00 ;count
		MOV R4,#0x00
		LDR R5,count
LOOP
	SUB R3,R3,#0x01
	LDRB R1,[R0],#0x01
		CMP R1,#0xAC 
		ADDEQ R2,R2,#0x01
		CMP R3,R4
		BNE LOOP
		STR R2,[R5]
		area program,data,readonly
array DCD 78,44,72,0xAAC,0xB1,0xAC,28,71
count DCD &00000090
		END
