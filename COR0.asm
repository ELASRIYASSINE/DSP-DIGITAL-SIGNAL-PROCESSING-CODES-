	.text
x	.int 0,1,2,3,4,5,6,7
adr_x	.word x
	ldi @adr_x,AR0
	ldi @adr_x,AR1
	ldi 0,R2
	ldi 0,R0
	ldi 7,RC
	Rpts RC
	mpyi *AR0++,*AR1++,R0
	||addi R0,R2
	addi R0,R2
	sti R2,@30h
	.end