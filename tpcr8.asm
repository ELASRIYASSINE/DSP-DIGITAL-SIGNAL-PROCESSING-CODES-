	.text
A	.int 1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5
B	.int 1,2,3,4,5
tab1	.word A
tab2	.word B
resul	.word 50h
	ldi @tab1,AR0      
	ldi @tab2,AR1
	ldi @resul,AR2
	ldi 5,R4 ; nbre de ligne
loopi	ldi 0,R0
	ldi 5,R5 ; nbre de données dans la colonne B
loopj	mpyi *AR0++,*AR1++,R1
	addi R1,R0
	subi 1,R5
	bnz loopj
	sti R0,*AR2++
	ldi @tab2,AR1
	subi 1,R4
	bnz loopi
	.end
	