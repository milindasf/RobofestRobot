
_sensorRead:

;pid.c,43 :: 		sensorRead(){
;pid.c,45 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead28
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead28:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;pid.c,46 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;pid.c,47 :: 		se[0]=1;
	MOVLW      1
	MOVWF      _se+0
	MOVLW      0
	MOVWF      _se+1
;pid.c,48 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;pid.c,49 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;pid.c,50 :: 		se[0]=0;
	CLRF       _se+0
	CLRF       _se+1
;pid.c,51 :: 		}
L_sensorRead1:
;pid.c,52 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead29
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead29:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;pid.c,53 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;pid.c,54 :: 		se[1]=1;
	MOVLW      1
	MOVWF      _se+2
	MOVLW      0
	MOVWF      _se+3
;pid.c,55 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;pid.c,56 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;pid.c,57 :: 		se[1]=0;
	CLRF       _se+2
	CLRF       _se+3
;pid.c,58 :: 		}
L_sensorRead3:
;pid.c,59 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead30
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead30:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;pid.c,60 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;pid.c,61 :: 		se[2]=1;
	MOVLW      1
	MOVWF      _se+4
	MOVLW      0
	MOVWF      _se+5
;pid.c,62 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;pid.c,63 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;pid.c,64 :: 		se[2]=0;
	CLRF       _se+4
	CLRF       _se+5
;pid.c,65 :: 		}
L_sensorRead5:
;pid.c,66 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead31
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead31:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;pid.c,67 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;pid.c,68 :: 		se[3]=1;
	MOVLW      1
	MOVWF      _se+6
	MOVLW      0
	MOVWF      _se+7
;pid.c,69 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;pid.c,70 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;pid.c,71 :: 		se[3]=0;
	CLRF       _se+6
	CLRF       _se+7
;pid.c,72 :: 		}
L_sensorRead7:
;pid.c,74 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead32
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead32:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;pid.c,75 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;pid.c,76 :: 		se[4]=1;
	MOVLW      1
	MOVWF      _se+8
	MOVLW      0
	MOVWF      _se+9
;pid.c,77 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;pid.c,78 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;pid.c,79 :: 		se[4]=0;
	CLRF       _se+8
	CLRF       _se+9
;pid.c,80 :: 		}
L_sensorRead9:
;pid.c,81 :: 		if(ADC_Read(5)>adcVal){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead33
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead33:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;pid.c,82 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;pid.c,83 :: 		se[5]=1;
	MOVLW      1
	MOVWF      _se+10
	MOVLW      0
	MOVWF      _se+11
;pid.c,84 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;pid.c,85 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;pid.c,86 :: 		se[5]=0;
	CLRF       _se+10
	CLRF       _se+11
;pid.c,87 :: 		}
L_sensorRead11:
;pid.c,89 :: 		if(ADC_Read(6)>adcVal){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead34
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead34:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;pid.c,90 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;pid.c,91 :: 		se[6]=1;
	MOVLW      1
	MOVWF      _se+12
	MOVLW      0
	MOVWF      _se+13
;pid.c,92 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;pid.c,93 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;pid.c,94 :: 		se[6]=0;
	CLRF       _se+12
	CLRF       _se+13
;pid.c,95 :: 		}
L_sensorRead13:
;pid.c,96 :: 		if(ADC_Read(7)>adcVal){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead35
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead35:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;pid.c,97 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;pid.c,98 :: 		se[7]=1;
	MOVLW      1
	MOVWF      _se+14
	MOVLW      0
	MOVWF      _se+15
;pid.c,99 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;pid.c,100 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;pid.c,101 :: 		se[7]=0;
	CLRF       _se+14
	CLRF       _se+15
;pid.c,102 :: 		}
L_sensorRead15:
;pid.c,103 :: 		if(ADC_Read(8)>adcVal){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead36
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead36:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;pid.c,104 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;pid.c,105 :: 		se[8]=1;
	MOVLW      1
	MOVWF      _se+16
	MOVLW      0
	MOVWF      _se+17
;pid.c,106 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;pid.c,107 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;pid.c,108 :: 		se[8]=0;
	CLRF       _se+16
	CLRF       _se+17
;pid.c,109 :: 		}
L_sensorRead17:
;pid.c,110 :: 		if(ADC_Read(9)>adcVal){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead37
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead37:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;pid.c,111 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;pid.c,112 :: 		se[9]=1;
	MOVLW      1
	MOVWF      _se+18
	MOVLW      0
	MOVWF      _se+19
;pid.c,113 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;pid.c,114 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;pid.c,115 :: 		se[9]=0;
	CLRF       _se+18
	CLRF       _se+19
;pid.c,116 :: 		}
L_sensorRead19:
;pid.c,117 :: 		if(ADC_Read(10)>adcVal){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead38
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead38:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;pid.c,118 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;pid.c,119 :: 		se[10]=1;
	MOVLW      1
	MOVWF      _se+20
	MOVLW      0
	MOVWF      _se+21
;pid.c,120 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;pid.c,121 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;pid.c,122 :: 		se[10]=0;
	CLRF       _se+20
	CLRF       _se+21
;pid.c,123 :: 		}
L_sensorRead21:
;pid.c,124 :: 		if(ADC_Read(11)>adcVal){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead39
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead39:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;pid.c,125 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;pid.c,126 :: 		se[11]=1;
	MOVLW      1
	MOVWF      _se+22
	MOVLW      0
	MOVWF      _se+23
;pid.c,127 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;pid.c,128 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;pid.c,129 :: 		se[11]=0;
	CLRF       _se+22
	CLRF       _se+23
;pid.c,130 :: 		}
L_sensorRead23:
;pid.c,131 :: 		if(ADC_Read(12)>adcVal){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead40
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead40:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;pid.c,132 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;pid.c,133 :: 		se[12]=1;
	MOVLW      1
	MOVWF      _se+24
	MOVLW      0
	MOVWF      _se+25
;pid.c,134 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;pid.c,135 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;pid.c,136 :: 		se[12]=0;
	CLRF       _se+24
	CLRF       _se+25
;pid.c,137 :: 		}
L_sensorRead25:
;pid.c,138 :: 		if(ADC_Read(13)>adcVal){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead41
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead41:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;pid.c,139 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;pid.c,140 :: 		se[13]=1;
	MOVLW      1
	MOVWF      _se+26
	MOVLW      0
	MOVWF      _se+27
;pid.c,141 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;pid.c,142 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;pid.c,143 :: 		se[13]=0;
	CLRF       _se+26
	CLRF       _se+27
;pid.c,144 :: 		}
L_sensorRead27:
;pid.c,147 :: 		}
	RETURN
; end of _sensorRead

_main:

;pid.c,152 :: 		void main(){
;pid.c,156 :: 		}
	GOTO       $+0
; end of _main
