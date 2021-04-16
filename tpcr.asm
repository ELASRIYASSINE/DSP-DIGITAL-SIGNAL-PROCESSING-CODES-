	.text
x	.int 2,6,8,0Ah,30h,22h,44h,66,10,11,12,14h
tab	.word x
	ldi @tab,AR0
	ldi 7,BK
	ldi *AR0++(5)%,R1
	ldi *AR0++(5)%,R2
	ldi *AR0--(5)%,R3
	ldi *AR0,R4
	.end
	
	
