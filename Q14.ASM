AREA PROGRAM,CODE,READONLY
ENTRY
	LDR R0,=string
loop1
	LDRB R1,[R0],#0x01 ; traversing the string
	CMP R1,#0x00 ; compare the ascii values stored at address value of R0,
	; when they become 0 then it will exit
	ADDNE R2,#0x01 ; will increment value at R2 by 1 in every iteration for every R2 != 0
	BNE loop1
	AREA PROGRAM,DATA,READONLY
string DCB "Aditya"
END
