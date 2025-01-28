.model tiny      ; directiva de modelo de programación
.stack           ; directiva de asignación de segmento de stack
.data            ; directiva de asignación de segmento de datos

TXT	DB	"TECNOLOGICO DE ESTUDIOS SUPERIORES DEL ORIENTE DEL ESTADO DE MEXICO $"
TXT1	DB	"INGENIERIA EN SISTEMAS COMPUTACIONALES $"
TXT2	DB	"LENGUAJE DE INTERFAZ $"
TXT3	DB	"NAVA HERNANDEZ GERARDO $"
TXT5	DB	"6S11 $"	
TEXT1 	DB 	"JUEGO$"

TEXTO	DB	"ESCRIBA SU NOMBRE:  $"	
ENT	LABEL	BYTE
MAXIMO	DB	30
REAL	DB	?
DATOS   DB      30 DUP('$')
.code           ;directiva de asignación de segmento de datos
start:

begin	PROC	FAR; 		inicio de PROCEDIMIENTO BEGIN

        MOV	AX,0600H	;PETICION
	MOV 	BH,07H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,0000H	;INICIO
	MOV	DX,184FH        ;FINAL
	INT	10H

	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,12	;RENGLON 
	MOV	DL,25	;COLUMNA 
	INT	10H

        LEA	DX,TEXTO	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TEXTO 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION

        MOV	AH,0AH
	LEA	DX,ENT
	INT	21H

;--pantalla completa color----------------------------------------
	MOV	AX,0600H	;PETICION
	MOV 	BH,34H	        ;ATRIBUTO negro SOBRE BLANCO
	MOV	CX,0000H	;INICIO
	MOV	DX,184FH	;FINAL
	INT	10H 
;arriba-----------------------------------------------------------
	MOV	AX,0600H	; PETICION
	MOV 	BH,54H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,0000H	;INICIO
	MOV	DX,004FH	;FINAL
	INT	10H

;izquierda---------------------------------------

	MOV	AX,0600H	; PETICION
	MOV 	BH,54H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,0000H	;INICIO
	MOV	DX,1800H	;FINAL
	INT	10H
;abajo-----------------------------------------------
	MOV	AX,0600H	; PETICION
	MOV 	BH,54H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,1800H	;INICIO
	MOV	DX,184FH	;FINAL
	INT	10H
;derecha--------------------------------------------
	MOV	AX,0600H	; PETICION
	MOV 	BH,54H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,004FH	;INICIO
	MOV	DX,184FH		;FINAL
	INT	10H

;----------------------------------------------------------------------------
	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,3	;RENGLON 
	MOV	DL,10	;COLUMNA 
	INT	10H
	
	LEA	DX,TXT	        ;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TXT 	; segmento en AX
	MOV 	DS,AX	        ; DS:DX apunta al mensaje
	MOV	AH,09H	        ;PETICION DE DESPLIEGE
	INT	21H	        ;INTERRUPCION
;----------------------------------------------------------------------------

	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,6	;RENGLON 
	MOV	DL,25	;COLUMNA 
	INT	10H

	LEA	DX,TXT1	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TXT1 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION
;-----------------------------------------------------------------------------

	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,9	;RENGLON 
	MOV	DL,25	;COLUMNA 
	INT	10H

	LEA	DX,TXT2	        ;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TXT2 	; segmento en AX
	MOV 	DS,AX		; DS:DX apunta al mensaje
	MOV	AH,09H	        ;PETICION DE DESPLIEGE
	INT	21H	        ;INTERRUPCION
;----------------------------------------------------------------------------
        MOV	AX,0600H	; PETICION
	MOV 	BH,35H	        ;ATRIBUTO NEGRO SOBRE BLANCO
	MOV	CX,0B19H	;INICIO en el y:11 y luego en el x:25
	MOV	DX,1437H	;FINAL  y:20 y luego en el x:60
	INT	10H

;----------------------------------------------------------------------------
      
	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,12	;RENGLON 
	MOV	DL,28	;COLUMNA 
	INT	10H

	LEA	DX,TXT3	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TXT3 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION

;----------------------------------------------------------------------------
        MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,15	;RENGLON 
	MOV	DL,28	;COLUMNA 
	INT	10H

	LEA	DX,DATOS	;CARGA DE LA DIRRECCION
	MOV	AH,09H
	INT	21H	;INTERRUPCION
;---------------------------------------------------------------------------

	MOV 	AH,02H	;PETICION PARA COLOCAR EL CURSOR
	MOV	BH,00	;NUMERO DE PAGINA 0
	MOV	DH,18	;RENGLON 
	MOV	DL,36	;COLUMNA 
	INT	10H

	LEA	DX,TXT5	;CARGA DE LA DIRRECCION
	MOV 	AX,SEG TXT5 	; segmento en AX
	MOV 	DS,AX		 ; DS:DX apunta al mensaje
	MOV	AH,09H	;PETICION DE DESPLIEGE
	INT	21H	;INTERRUPCION
;---------------------------------------------------------------------------
        CALL	PAUSA
	MOV	 AX,4C00H ; vuelta al DOS
	INT	 10H

PAUSA	PROC	NEAR
	MOV  AH, 10h ; PAUSA
	INT  16h
	RET
PAUSA	ENDP

BEGIN	ENDP	;FIN DE PROCEDIMIENTO
	END	start	;FIN DE PROGRAMA