;CIR REPEAT
	.text
x	.int 1,2,3,4,5,6,7,8,9,0Ah,0Bh,0Ch,0Dh,0Eh,0Fh
tab	.word x
	ldi @tab,AR0
	ldi 7,BK
	ldi 34,RC
	Rpts RC
	addi *AR0++%,R0	
	.end