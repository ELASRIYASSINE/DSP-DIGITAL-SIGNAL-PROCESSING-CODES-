	.text
x	.int 2,6,8,0Ah,30h,22h,44h,66h	;x contient 8 Constantes
tab	.word x			;Tab c'est un tableau qui contient les nombres x
	ldi @tab,AR0		;CHARGER LE TABLEUR DANS AR0
	ldi 7,BK		;DONNER LA LONGUEUR DU REGITRE BLOK
	ldi *AR0++(3)%,R1	;CHARGER R1 PAR LA PREMIER VALEUR DU TABLEAU(2) PUIS SAUTER 3 PAS (3=1,2,3) VERS L'AVANT ET POSER LA VALEUR DE 3 SUR R2 
	ldi *AR0++(9)%,R2	;SAUTER 10 PAS (9=0,1,2,...,9) VERS L'AVANT ET POSER LA VALEUR DE 30h SUR R3
	ldi *AR0--(10)%,R3	;RECULER 11 PAS (10=0,1,2,...,10) VERS L'ARRIERE ET POSER LA VALEUR DE 6 SUR R4
	ldi *AR0,R4		;	
	.end