	.text
x	.int 1,2,3,4,5,6,7,8,9,0Ah,0Bh,0ch,0dh,0Eh,0fh
tab	.word x
	ldi @tab,AR0
	ldi 0,R0
	ldi 6,BK
	ldi 14,RC
	Rpts RC
	addi *AR0++(2)%,R0
	.end