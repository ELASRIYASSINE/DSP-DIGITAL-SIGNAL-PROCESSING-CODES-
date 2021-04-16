;	INCREMENTATION AVEC RETOUR
	.text
	ldi 10,AR0
	ldi *+AR0,R0
	addi *+AR0(10),R0
	sti R0,*+AR0(20)
	.end