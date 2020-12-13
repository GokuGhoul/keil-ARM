	AREA PROGRAM,CODE,READONLY
ENTRY
	LDR R0,=string  ; loading the string in R0 register at run time by
					; allocating a particular memory address
loop1
	LDRB R1,[R0],#0x01 ; loaded string byte by byte and also incrementing the value to next byte
	CMP R1,"S" 			; character whose occurrences need to be found
	ADDEQ R2,#0x01 		; incrementing the value of R2 for every equal occurrence
	CMP R1,#0X00 		; comparing the value R1 with 0 as at R1 the ascii value is compared
	BNE loop1
	AREA PROGRAM,DATA,READONLY
string DCB "SUPERSUPREMESAIYAN"
	END
