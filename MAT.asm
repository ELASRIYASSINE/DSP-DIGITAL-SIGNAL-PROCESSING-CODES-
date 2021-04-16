*	CALCULE MATRICIELLE
	.text				
A	.int 1,2,3,4,5,6,7,8,9		
B	.int 1,2,3
tab1	.word A					
tab2	.word B				
resul	.word 50h
	ldi @tab1,AR0			;CHARGER LE TABLEAU 1 SUR AR0 
	ldi @tab2,AR1			;CHARGER LE TABLEAU 2 SUR AR1 
	ldi @resul,AR2			;CHARGER LA RESULTAT SUR AR2 
	ldi 3,R4			;CHARGER 3 SUR R4 
loopi	ldi 0,R0			;CHARGER 0 SUR R0 
	ldi 3,R5			;CHARGER 3 SUR R5 
loopj	mpyi	*AR0++,*AR1++,R1	;CHARGER  
	addi R1,R0			;ADDITIONNER R1 AVEC R0 ET METTRE LA RESULTAT SUR R0
	subi 1,R5			;SOUSTRAIRE R5= R5 - 1 
	bnz loopj			;
	sti R0,*AR2++			;STOCKER R0 SUR LE POITEUR AR2
	ldi @tab2,AR1			;CHARGER LE TABLEAU 2 SUR AR1
	subi 1,R4			;SOUSTRAIRE R4= R4 - 1 
	bnz loopi			;
	.end

	