	AREA reset,CODE,READONLY
	ENTRY 
	LDR R0,=0x40000000
	LDR R1,=10
loop  LDR R3,[R0],#4
    ADDS R4,R3
	ADC R5,#0
	SUBS R1,#1
	CMP R1,#0
	BNE loop
	STR R4,[R0]
	ADD R0,#4
	STR R5,[R0]
stop          b stop
	 END ; make unsigned int
