 
 #include "p16F876A.inc"

   ; CONFIG

   ; __config 0x3F3A

     __CONFIG _FOSC_HS & _WDTE_OFF & _PWRTE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _CP_OFF

org 0

goto met1

nop

nop

org 0x4

movwf 0x40

movlw 0x65

movwf TMR0

clrf INTCON

bsf STATUS,RP0

movlw 0xC7

movwf OPTION_REG

bcf STATUS,RP0

movlw 0x1

movwf PORTB

movlw 0x41

movwf 0x20

met2: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x20,f

goto met2

movf 0x50,w

movwf 0x20

met7: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x20,f

goto met7

movlw 0x2

movwf PORTB

movlw 0x41

movwf 0x21

met3: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x21,f

goto met3

movf 0x51,w

movwf 0x21

met8: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x21,f

goto met8

movlw 0x4

movwf PORTB

movlw 0x41

movwf 0x22

met4: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x22,f

goto met4

movf 0x52,w

movwf 0x22

met9: nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

nop

decfsz 0x22,f

goto met9

movlw 0

movwf PORTB

bsf INTCON,T0IE

bsf INTCON,GIE

movf 0x40,w

return

org 0x90

met1:

bsf STATUS, RP0

movlw 0

movwf TRISA

movwf TRISB

movlw 0xff

movwf TRISC

movlw 0x67

movwf SPBRG

bcf TXSTA,BRGH

bcf TXSTA,SYNC

bcf STATUS, RP0

bsf RCSTA,SPEN

bcf RCSTA,RX9D

movlw 0x54

movwf 0x50

movlw 0x11

movwf 0x51

movlw 0x3C

movwf 0x52

call 0x4

goto met5

org 0xB0

met5:

bsf RCSTA,CREN

met6: bsf INTCON,T0IE

nop

btfss PIR1,RCIF

goto met6

movf RCREG,w

bcf INTCON,T0IE

bcf STATUS,Z

xorlw 0xFA

btfss STATUS,Z

goto met6

bsf INTCON,T0IE

met10: nop

btfss PIR1,RCIF

goto met10

movf RCREG,w

movwf 0x50

met11: nop

btfss PIR1,RCIF

goto met11

movf RCREG,w

movwf 0x51

met12: nop

btfss PIR1,RCIF

goto met12

movf RCREG,w

movwf 0x52

goto met6

end
