
_init:

;feu_rouge.c,1 :: 		void init(){
;feu_rouge.c,2 :: 		TRISA.RA1=1;TRISA.RA3=1;
	BSF        TRISA+0, 1
	BSF        TRISA+0, 3
;feu_rouge.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;feu_rouge.c,4 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;feu_rouge.c,5 :: 		void main() {
;feu_rouge.c,6 :: 		init();
	CALL       _init+0
;feu_rouge.c,7 :: 		portb=0;
	CLRF       PORTB+0
;feu_rouge.c,8 :: 		A:if (porta.ra1==1)     //la nuit
___main_A:
	BTFSS      PORTA+0, 1
	GOTO       L_main0
;feu_rouge.c,10 :: 		PORTb.rb4=1;
	BSF        PORTB+0, 4
;feu_rouge.c,11 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;feu_rouge.c,12 :: 		portb.rb4=0;
	BCF        PORTB+0, 4
;feu_rouge.c,13 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;feu_rouge.c,14 :: 		}
	GOTO       L_main3
L_main0:
;feu_rouge.c,15 :: 		else if(porta.ra3==1)    //le joure
	BTFSS      PORTA+0, 3
	GOTO       L_main4
;feu_rouge.c,17 :: 		portb.rb0=1;delay_ms(37000);portb.RB0=0; //vert =37 s
	BSF        PORTB+0, 0
	MOVLW      2
	MOVWF      R10+0
	MOVLW      120
	MOVWF      R11+0
	MOVLW      103
	MOVWF      R12+0
	MOVLW      231
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	DECFSZ     R10+0, 1
	GOTO       L_main5
	NOP
	NOP
	BCF        PORTB+0, 0
;feu_rouge.c,18 :: 		portb.rb4=1;delay_ms(5000);portb.RB4=0; //orange =5 s
	BSF        PORTB+0, 4
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
	BCF        PORTB+0, 4
;feu_rouge.c,19 :: 		portb.rb7=1;delay_ms(13000);portb.rb7=0; //rouge=13 s
	BSF        PORTB+0, 7
	MOVLW      132
	MOVWF      R11+0
	MOVLW      230
	MOVWF      R12+0
	MOVLW      226
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	BCF        PORTB+0, 7
;feu_rouge.c,20 :: 		}
L_main4:
L_main3:
;feu_rouge.c,21 :: 		goto A;
	GOTO       ___main_A
;feu_rouge.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
