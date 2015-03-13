
_main:

;test1.c,1 :: 		void main() {
;test1.c,3 :: 		TRISD = 0b11110000;
	MOVLW       240
	MOVWF       TRISD+0 
;test1.c,4 :: 		PORTD = 0;
	CLRF        PORTD+0 
;test1.c,6 :: 		while(1){
L_main0:
;test1.c,7 :: 		PORTD.RB0 = ~PORTD.RB0;
	BTG         PORTD+0, 0 
;test1.c,8 :: 		Delay_Ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;test1.c,9 :: 		}
	GOTO        L_main0
;test1.c,10 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
