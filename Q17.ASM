i) ax2+by2
area program,code,readonly
entry
main
	LDR R0,value1
	LDR R1,value2
	LDR R2,value3
	LDR R3,value4
	MUL R4,R2,R2
	MUL R5,R4,R0
	MUL R6,R3,R3
	MUL R7,R6,R1
	ADD R8,R5,R7
	

area program,data,readonly
value1 DCD &00000001
value2 DCD &00000002
value3 DCD &00000003
value4 DCD &00000004
	END
;NOTE: a = 1, b = 2, x = 3, y = 4

ii) 6(x+y) +2z+4

	area program,code,readonly
entry
main
	LDR R0,value1
	LDR R1,value2
	LDR R2,value3
	ADD R3,R0,R1
	MUL R3, #0x06
	MUL R2, #0x02
	ADD R5,R3,R2,#0x04
	area program,data,readonly
value1 DCD &00000001
value2 DCD &00000002
value3 DCD &00000003
	END
NOTE: x = 1, y = 2, z = 3
