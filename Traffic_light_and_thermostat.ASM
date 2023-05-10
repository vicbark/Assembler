;Zadanie nr 30 
;Kontroll temperaturi i toze vremja rabotaet svetofor


	JMP	Start	
	DB	51	
	DB	71	
Start:
	INT	02	
	INT	03	
	JMP	Start
; -------------------------------------------------------

; zamerjaem temperauru

	ORG 70
	DB 0	

MOV AL,0	
OUT 03		
IN 03 		
AND AL,1 	
JZ Cold 	

Cold:
MOV AL,80 
OUT 03 

iret

; -------------------------------------------------------

;rabota svetofora 

	ORG 50
	DB E0	
			
MOV AL,CC	
OUT 01		
MOV AL,30	
OUT 01		
MOV AL,78	
OUT 01		
MOV AL,84	
OUT 01		

iret

; -------------------------------------------------------

END