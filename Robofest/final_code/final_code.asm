
_rotateLeft:

;final_code.c,25 :: 		void rotateLeft(){
;final_code.c,26 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code.c,27 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code.c,28 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,29 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,30 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code.c,31 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code.c,33 :: 		void rotateRight(){
;final_code.c,34 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code.c,35 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code.c,36 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,37 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code.c,38 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code.c,39 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code.c,41 :: 		void moveF(){
;final_code.c,42 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code.c,43 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code.c,44 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,45 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,46 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code.c,47 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code.c,49 :: 		void moveB(){
;final_code.c,50 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code.c,51 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code.c,52 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,53 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code.c,54 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code.c,55 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code.c,58 :: 		forward(){
;final_code.c,59 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code.c,60 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code.c,61 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,62 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,63 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,64 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,65 :: 		}
	RETURN
; end of _forward

_backward:

;final_code.c,67 :: 		backward(){
;final_code.c,68 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code.c,69 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code.c,70 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,71 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code.c,72 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,73 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,74 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code.c,76 :: 		leftHardTurn(){
;final_code.c,77 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code.c,78 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,79 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code.c,80 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,81 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,82 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,83 :: 		}
	RETURN
; end of _leftHardTurn

_RightHardTurn:

;final_code.c,85 :: 		RightHardTurn(){
;final_code.c,86 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code.c,87 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code.c,88 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code.c,89 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,90 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,91 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,92 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code.c,94 :: 		leftTurn(){
;final_code.c,95 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code.c,96 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,97 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code.c,98 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,99 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,100 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,101 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code.c,103 :: 		RightTurn(){
;final_code.c,104 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code.c,105 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,106 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code.c,107 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,108 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,109 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,110 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code.c,112 :: 		leftSoftTurn(){
;final_code.c,113 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code.c,114 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,115 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code.c,116 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,117 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,118 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,120 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code.c,122 :: 		rightSoftTurn(){
;final_code.c,123 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code.c,124 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,125 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code.c,126 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,127 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,128 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,129 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code.c,131 :: 		stopAll(){
;final_code.c,132 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code.c,133 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,134 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code.c,135 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,136 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code.c,138 :: 		leftT(){
;final_code.c,139 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code.c,140 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,141 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code.c,142 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code.c,143 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,144 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,146 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code.c,148 :: 		rightT(){
;final_code.c,150 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code.c,151 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code.c,152 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code.c,153 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code.c,154 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,155 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,157 :: 		}
	RETURN
; end of _rightT

_sensorRead:

;final_code.c,159 :: 		sensorRead(){
;final_code.c,161 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code.c,162 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code.c,163 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead354
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead354:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code.c,164 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code.c,165 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code.c,166 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code.c,167 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code.c,168 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code.c,169 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code.c,170 :: 		}
L_sensorRead1:
;final_code.c,171 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead355
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead355:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code.c,172 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code.c,173 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code.c,174 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code.c,175 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code.c,176 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code.c,177 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code.c,178 :: 		}
L_sensorRead3:
;final_code.c,179 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead356
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead356:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code.c,180 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code.c,181 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code.c,182 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code.c,183 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code.c,184 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code.c,185 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code.c,186 :: 		}
L_sensorRead5:
;final_code.c,187 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead357
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead357:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code.c,188 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code.c,189 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code.c,190 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code.c,191 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code.c,192 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code.c,193 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code.c,194 :: 		}
L_sensorRead7:
;final_code.c,196 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead358
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead358:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code.c,197 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code.c,198 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code.c,199 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code.c,200 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code.c,201 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code.c,202 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code.c,203 :: 		}
L_sensorRead9:
;final_code.c,204 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead359
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead359:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code.c,205 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code.c,206 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code.c,207 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,208 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code.c,209 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code.c,210 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code.c,211 :: 		}
L_sensorRead11:
;final_code.c,213 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead360
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead360:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code.c,214 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code.c,215 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code.c,216 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,217 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code.c,218 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code.c,219 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code.c,220 :: 		}
L_sensorRead13:
;final_code.c,221 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead361
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead361:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code.c,222 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code.c,223 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code.c,224 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,225 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code.c,226 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code.c,227 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code.c,228 :: 		}
L_sensorRead15:
;final_code.c,229 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead362
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead362:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code.c,230 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code.c,231 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code.c,232 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,233 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code.c,234 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code.c,235 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code.c,236 :: 		}
L_sensorRead17:
;final_code.c,237 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead363
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead363:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code.c,238 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code.c,239 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code.c,240 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,241 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code.c,242 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code.c,243 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code.c,244 :: 		}
L_sensorRead19:
;final_code.c,245 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead364
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead364:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code.c,246 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code.c,247 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code.c,248 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,249 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code.c,250 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code.c,251 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code.c,252 :: 		}
L_sensorRead21:
;final_code.c,253 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead365
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead365:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code.c,254 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code.c,255 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code.c,256 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,257 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code.c,258 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code.c,259 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code.c,260 :: 		}
L_sensorRead23:
;final_code.c,261 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead366
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead366:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code.c,262 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code.c,263 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code.c,264 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,265 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code.c,266 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code.c,267 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code.c,268 :: 		}
L_sensorRead25:
;final_code.c,269 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead367
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead367:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code.c,270 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code.c,271 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code.c,272 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code.c,273 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code.c,274 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code.c,275 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code.c,276 :: 		}
L_sensorRead27:
;final_code.c,278 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code.c,280 :: 		void printToLcd(){
;final_code.c,281 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code.c,282 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd368
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd368:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code.c,286 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code.c,289 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code.c,291 :: 		int  bin_deci(){
;final_code.c,293 :: 		int decimal_value=0;
;final_code.c,294 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
	MOVF       _sw+2, 0
	MOVWF      R0+0
	MOVF       _sw+3, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      _sw+0, 0
	MOVWF      R3+0
	MOVF       _sw+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R3+1
	MOVF       _sw+4, 0
	MOVWF      R0+0
	MOVF       _sw+5, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      3
	MOVWF      R2+0
	MOVF       _sw+6, 0
	MOVWF      R0+0
	MOVF       _sw+7, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bin_deci369:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci370
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci369
L__bin_deci370:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      4
	MOVWF      R2+0
	MOVF       _sw+8, 0
	MOVWF      R0+0
	MOVF       _sw+9, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bin_deci371:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci372
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci371
L__bin_deci372:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      5
	MOVWF      R2+0
	MOVF       _sw+10, 0
	MOVWF      R0+0
	MOVF       _sw+11, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bin_deci373:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci374
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci373
L__bin_deci374:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      6
	MOVWF      R2+0
	MOVF       _sw+12, 0
	MOVWF      R0+0
	MOVF       _sw+13, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bin_deci375:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci376
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci375
L__bin_deci376:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      7
	MOVWF      R2+0
	MOVF       _sw+14, 0
	MOVWF      R0+0
	MOVF       _sw+15, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bin_deci377:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci378
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci377
L__bin_deci378:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVF       _sw+16, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       R3+0, 0
	ADDWF      R0+0, 1
	MOVF       R3+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
;final_code.c,297 :: 		return decimal_value;
;final_code.c,299 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code.c,301 :: 		lineFollow(){
;final_code.c,302 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code.c,303 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code.c,304 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code.c,305 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code.c,306 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,307 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code.c,308 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow379
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow379:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow334
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow380
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow380:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow334
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow381
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow381:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow334
	GOTO       L_lineFollow33
L__lineFollow334:
;final_code.c,310 :: 		forward();
	CALL       _forward+0
;final_code.c,311 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code.c,312 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow382
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow382:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow333
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow383
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow383:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow333
	GOTO       L_lineFollow37
L__lineFollow333:
;final_code.c,313 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code.c,314 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code.c,316 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow384
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow384:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow332
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow385
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow385:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow332
	GOTO       L_lineFollow41
L__lineFollow332:
;final_code.c,317 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code.c,318 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code.c,319 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow386
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow386:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow331
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow387
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow387:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow331
	GOTO       L_lineFollow45
L__lineFollow331:
;final_code.c,320 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code.c,321 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code.c,322 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow388
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow388:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow330
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow389
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow389:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow330
	GOTO       L_lineFollow49
L__lineFollow330:
;final_code.c,323 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code.c,324 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code.c,325 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow390
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow390:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow329
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow391
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow391:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow329
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow392
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow392:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow329
	GOTO       L_lineFollow53
L__lineFollow329:
;final_code.c,326 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code.c,327 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code.c,328 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow393
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow393:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow328
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow394
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow394:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow328
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow395
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow395:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow328
	GOTO       L_lineFollow57
L__lineFollow328:
;final_code.c,329 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code.c,330 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code.c,331 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow396
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow396:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow327
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow397
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow397:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow327
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow398
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow398:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow327
	GOTO       L_lineFollow65
L__lineFollow327:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow399
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow399:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow326
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow400
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow400:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow326
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow401
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow401:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow326
	GOTO       L_lineFollow65
L__lineFollow326:
L__lineFollow325:
;final_code.c,332 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code.c,334 :: 		}  else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow402
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow402:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow324
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow403
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow403:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow324
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow404
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow404:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow324
	GOTO       L_lineFollow73
L__lineFollow324:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow405
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow405:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow406
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow406:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow407
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow407:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow323:
L__lineFollow322:
;final_code.c,335 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code.c,336 :: 		}
	GOTO       L_lineFollow74
L_lineFollow73:
;final_code.c,337 :: 		else if((sw[0][8]==1 || sw[0][7]==1 || sw[0][6]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow408
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow408:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow321
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow409
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow409:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow321
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow410
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow410:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow321
	GOTO       L_lineFollow81
L__lineFollow321:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow411
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow411:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow412
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow412:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow413
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow413:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow320:
L__lineFollow319:
;final_code.c,338 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code.c,339 :: 		} else if((sw[0][3]==1 ||sw[0][4]==1 || sw[0][5]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow414
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow414:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow318
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow415
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow415:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow318
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow416
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow416:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow318
	GOTO       L_lineFollow89
L__lineFollow318:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow417
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow417:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow418
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow418:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow317:
L__lineFollow316:
;final_code.c,340 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code.c,342 :: 		}else if((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow90
L_lineFollow89:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow419
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow419:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow315
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow420
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow420:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow315
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow421
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow421:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow315
	GOTO       L_lineFollow97
L__lineFollow315:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow422
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow422:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow423
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow423:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow314:
L__lineFollow313:
;final_code.c,343 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code.c,344 :: 		}
	GOTO       L_lineFollow98
L_lineFollow97:
;final_code.c,346 :: 		else if(value==511){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow424
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow424:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code.c,347 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,389 :: 		*/
L_lineFollow99:
L_lineFollow98:
L_lineFollow90:
L_lineFollow82:
L_lineFollow74:
L_lineFollow66:
L_lineFollow58:
L_lineFollow54:
L_lineFollow50:
L_lineFollow46:
L_lineFollow42:
L_lineFollow38:
L_lineFollow34:
;final_code.c,409 :: 		}
	RETURN
; end of _lineFollow

_SemSmallFollow:

;final_code.c,411 :: 		void SemSmallFollow(){
;final_code.c,412 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,413 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow425
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow425:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow102
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow426
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow426:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow102
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow427
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow427:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow102
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow428
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow428:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow102
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow429
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow429:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow102
L__SemSmallFollow346:
;final_code.c,414 :: 		moveF();
	CALL       _moveF+0
;final_code.c,415 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow103
L_SemSmallFollow102:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow430
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow430:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow106
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow431
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow431:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow106
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow432
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow432:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow106
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow433
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow433:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow106
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow434
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow434:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow106
L__SemSmallFollow345:
;final_code.c,416 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,417 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow107
L_SemSmallFollow106:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow435
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow435:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow110
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow436
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow436:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow110
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow437
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow437:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow110
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow438
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow438:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow110
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow439
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow439:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow110
L__SemSmallFollow344:
;final_code.c,418 :: 		moveF();
	CALL       _moveF+0
;final_code.c,419 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow111
L_SemSmallFollow110:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow440
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow440:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow441
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow441:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow442
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow442:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow443
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow443:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow444
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow444:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
L__SemSmallFollow343:
;final_code.c,420 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,421 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow115
L_SemSmallFollow114:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow445
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow445:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow446
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow446:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow447
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow447:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow448
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow448:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow449
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow449:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
L__SemSmallFollow342:
;final_code.c,422 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,423 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow119
L_SemSmallFollow118:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow450
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow450:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow451
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow451:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow452
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow452:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow453
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow453:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow454
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow454:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
L__SemSmallFollow341:
;final_code.c,425 :: 		moveF();
	CALL       _moveF+0
;final_code.c,426 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow123
L_SemSmallFollow122:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow455
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow455:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow456
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow456:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow457
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow457:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow458
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow458:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow459
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow459:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
L__SemSmallFollow340:
;final_code.c,428 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,429 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow127
L_SemSmallFollow126:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow460
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow460:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow461
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow461:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow462
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow462:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow463
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow463:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow464
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow464:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
L__SemSmallFollow339:
;final_code.c,431 :: 		moveF();
	CALL       _moveF+0
;final_code.c,432 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow131
L_SemSmallFollow130:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow465
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow465:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow466
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow466:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow467
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow467:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow468
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow468:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow469
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow469:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
L__SemSmallFollow338:
;final_code.c,433 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,434 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow135
L_SemSmallFollow134:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow470
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow470:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow471
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow471:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow472
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow472:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow473
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow473:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow474
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow474:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
L__SemSmallFollow337:
;final_code.c,435 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,436 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow139
L_SemSmallFollow138:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow475
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow475:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow476
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow476:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow477
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow477:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow478
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow478:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow479
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow479:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
L__SemSmallFollow336:
;final_code.c,438 :: 		moveF();
	CALL       _moveF+0
;final_code.c,439 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow143
L_SemSmallFollow142:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow480
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow480:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow481
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow481:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow482
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow482:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow483
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow483:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow484
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow484:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
L__SemSmallFollow335:
;final_code.c,440 :: 		moveF();
	CALL       _moveF+0
;final_code.c,441 :: 		}else{
	GOTO       L_SemSmallFollow147
L_SemSmallFollow146:
;final_code.c,442 :: 		moveF();
	CALL       _moveF+0
;final_code.c,443 :: 		}
L_SemSmallFollow147:
L_SemSmallFollow143:
L_SemSmallFollow139:
L_SemSmallFollow135:
L_SemSmallFollow131:
L_SemSmallFollow127:
L_SemSmallFollow123:
L_SemSmallFollow119:
L_SemSmallFollow115:
L_SemSmallFollow111:
L_SemSmallFollow107:
L_SemSmallFollow103:
;final_code.c,445 :: 		}
	RETURN
; end of _SemSmallFollow

_encoder:

;final_code.c,448 :: 		void encoder(){
;final_code.c,449 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder148
;final_code.c,450 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code.c,452 :: 		}
L_encoder148:
;final_code.c,453 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder151
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder485
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder485:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder151
L__encoder348:
;final_code.c,454 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code.c,455 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code.c,456 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder486
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder486:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder152
;final_code.c,457 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code.c,458 :: 		}else if(rotationMode==2){
	GOTO       L_encoder153
L_encoder152:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder487
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder487:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder154
;final_code.c,459 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code.c,460 :: 		}
L_encoder154:
L_encoder153:
;final_code.c,461 :: 		}
L_encoder151:
;final_code.c,463 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder155
;final_code.c,464 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code.c,465 :: 		}
L_encoder155:
;final_code.c,466 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder158
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder488
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder488:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder158
L__encoder347:
;final_code.c,467 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code.c,468 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code.c,469 :: 		}
L_encoder158:
;final_code.c,470 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;final_code.c,472 :: 		void initEncoder(){
;final_code.c,473 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code.c,474 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code.c,475 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code.c,477 :: 		void goStraight(){
;final_code.c,478 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code.c,479 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code.c,480 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight489
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight489:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight349
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight490
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight490:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight349
	GOTO       L_goStraight161
L__goStraight349:
;final_code.c,481 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,482 :: 		}
L_goStraight161:
;final_code.c,483 :: 		moveF();
	CALL       _moveF+0
;final_code.c,485 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight491
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight491:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight162
;final_code.c,487 :: 		if(TMR0_value-TMR1_value>=5){
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
	MOVWF      R1+0
	MOVF       _TMR1_value+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _TMR0_value+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight492
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight492:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight163
;final_code.c,488 :: 		do{
L_goStraight164:
;final_code.c,489 :: 		rightT();
	CALL       _rightT+0
;final_code.c,490 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight493
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight493:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight164
;final_code.c,491 :: 		}
L_goStraight163:
;final_code.c,494 :: 		}else{
	GOTO       L_goStraight167
L_goStraight162:
;final_code.c,496 :: 		if(TMR1_value-TMR0_value>=5){
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
	MOVWF      R1+0
	MOVF       _TMR0_value+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _TMR1_value+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight494
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight494:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight168
;final_code.c,497 :: 		do{
L_goStraight169:
;final_code.c,498 :: 		leftT();
	CALL       _leftT+0
;final_code.c,499 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight495
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight495:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight169
;final_code.c,500 :: 		}
L_goStraight168:
;final_code.c,501 :: 		}
L_goStraight167:
;final_code.c,502 :: 		}
	RETURN
; end of _goStraight

_tuneToMiddle:

;final_code.c,504 :: 		int tuneToMiddle(){
;final_code.c,505 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,506 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle496
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle496:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle172
;final_code.c,508 :: 		goStraight();
	CALL       _goStraight+0
;final_code.c,509 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code.c,510 :: 		}
L_tuneToMiddle172:
;final_code.c,511 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle497
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle497:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle174
;final_code.c,512 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle498
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle498:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle350
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle499
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle499:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle350
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle500
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle500:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle350
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle501
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle501:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle350
	GOTO       L_tuneToMiddle177
L__tuneToMiddle350:
;final_code.c,513 :: 		while(sw[0][4]==0){
L_tuneToMiddle178:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle502
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle502:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle179
;final_code.c,514 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,515 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle503
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle503:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle180
;final_code.c,517 :: 		goStraight();
	CALL       _goStraight+0
;final_code.c,518 :: 		}else{
	GOTO       L_tuneToMiddle181
L_tuneToMiddle180:
;final_code.c,519 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,520 :: 		}
L_tuneToMiddle181:
;final_code.c,521 :: 		}
	GOTO       L_tuneToMiddle178
L_tuneToMiddle179:
;final_code.c,522 :: 		}
	GOTO       L_tuneToMiddle182
L_tuneToMiddle177:
;final_code.c,524 :: 		while(sw[0][4]==0){
L_tuneToMiddle183:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle504
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle504:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle184
;final_code.c,525 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,526 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle505
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle505:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle185
;final_code.c,528 :: 		goStraight();
	CALL       _goStraight+0
;final_code.c,529 :: 		}else{
	GOTO       L_tuneToMiddle186
L_tuneToMiddle185:
;final_code.c,530 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,531 :: 		}
L_tuneToMiddle186:
;final_code.c,532 :: 		}
	GOTO       L_tuneToMiddle183
L_tuneToMiddle184:
;final_code.c,533 :: 		}
L_tuneToMiddle182:
;final_code.c,534 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code.c,535 :: 		}
L_tuneToMiddle174:
;final_code.c,537 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code.c,539 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code.c,543 :: 		void printClockEncoders(){
;final_code.c,544 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders506
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders506:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders188
;final_code.c,548 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders189
L_printClockEncoders188:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders507
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders507:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders190
;final_code.c,552 :: 		}
L_printClockEncoders190:
L_printClockEncoders189:
;final_code.c,554 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code.c,557 :: 		int getFrontDecimal(){
;final_code.c,558 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,560 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
	MOVF       _sw+2, 0
	MOVWF      R0+0
	MOVF       _sw+3, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      _sw+0, 0
	MOVWF      R3+0
	MOVF       _sw+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R3+1
	MOVF       _sw+4, 0
	MOVWF      R0+0
	MOVF       _sw+5, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      3
	MOVWF      R2+0
	MOVF       _sw+6, 0
	MOVWF      R0+0
	MOVF       _sw+7, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getFrontDecimal508:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal509
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal508
L__getFrontDecimal509:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      4
	MOVWF      R2+0
	MOVF       _sw+8, 0
	MOVWF      R0+0
	MOVF       _sw+9, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getFrontDecimal510:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal511
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal510
L__getFrontDecimal511:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      5
	MOVWF      R2+0
	MOVF       _sw+10, 0
	MOVWF      R0+0
	MOVF       _sw+11, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getFrontDecimal512:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal513
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal512
L__getFrontDecimal513:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      6
	MOVWF      R2+0
	MOVF       _sw+12, 0
	MOVWF      R0+0
	MOVF       _sw+13, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getFrontDecimal514:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal515
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal514
L__getFrontDecimal515:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      7
	MOVWF      R2+0
	MOVF       _sw+14, 0
	MOVWF      R0+0
	MOVF       _sw+15, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getFrontDecimal516:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal517
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal516
L__getFrontDecimal517:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVF       _sw+16, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       R3+0, 0
	ADDWF      R0+0, 1
	MOVF       R3+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _val+0
	MOVF       R0+1, 0
	MOVWF      _val+1
;final_code.c,561 :: 		return val;
;final_code.c,562 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code.c,563 :: 		int getBackDecimal(){
;final_code.c,564 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,565 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
	MOVF       _sw+20, 0
	MOVWF      R0+0
	MOVF       _sw+21, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      _sw+18, 0
	MOVWF      R3+0
	MOVF       _sw+19, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R3+1
	MOVF       _sw+22, 0
	MOVWF      R0+0
	MOVF       _sw+23, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      3
	MOVWF      R2+0
	MOVF       _sw+24, 0
	MOVWF      R0+0
	MOVF       _sw+25, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getBackDecimal518:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal519
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal518
L__getBackDecimal519:
	MOVF       R0+0, 0
	ADDWF      R3+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R3+1, 1
	MOVLW      4
	MOVWF      R2+0
	MOVF       _sw+26, 0
	MOVWF      R0+0
	MOVF       _sw+27, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__getBackDecimal520:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal521
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal520
L__getBackDecimal521:
	MOVF       R3+0, 0
	ADDWF      R0+0, 1
	MOVF       R3+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _val+0
	MOVF       R0+1, 0
	MOVWF      _val+1
;final_code.c,566 :: 		return val;
;final_code.c,567 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code.c,598 :: 		void followArrow(){
;final_code.c,599 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow522
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow522:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow191
;final_code.c,600 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code.c,601 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow523
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow523:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow192
;final_code.c,602 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,604 :: 		}
L_followArrow192:
;final_code.c,605 :: 		} else if(k==1){
	GOTO       L_followArrow193
L_followArrow191:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow524
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow524:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow194
;final_code.c,606 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,607 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow525
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow525:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow195
;final_code.c,608 :: 		moveF();
	CALL       _moveF+0
;final_code.c,609 :: 		}else{
	GOTO       L_followArrow196
L_followArrow195:
;final_code.c,610 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,612 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,614 :: 		}
L_followArrow196:
;final_code.c,615 :: 		}else if(k==2){
	GOTO       L_followArrow197
L_followArrow194:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow526
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow526:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow198
;final_code.c,616 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code.c,617 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow527
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow527:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow199
;final_code.c,618 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,619 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,621 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,622 :: 		}
L_followArrow199:
;final_code.c,623 :: 		}else if(k==3){
	GOTO       L_followArrow200
L_followArrow198:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow528
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow528:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow201
;final_code.c,624 :: 		moveB();
	CALL       _moveB+0
;final_code.c,625 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow529
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow529:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow202
;final_code.c,626 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,627 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,628 :: 		}
L_followArrow202:
;final_code.c,630 :: 		}else if(k==4){
	GOTO       L_followArrow203
L_followArrow201:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow530
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow530:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow204
;final_code.c,631 :: 		moveF();
	CALL       _moveF+0
;final_code.c,632 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,633 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow531
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow531:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow205
;final_code.c,634 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,635 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,636 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,637 :: 		}
L_followArrow205:
;final_code.c,639 :: 		}else if(k==5){
	GOTO       L_followArrow206
L_followArrow204:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow532
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow532:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow207
;final_code.c,640 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code.c,641 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow533
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow533:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow208
;final_code.c,642 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,643 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,645 :: 		}
L_followArrow208:
;final_code.c,646 :: 		}else if(k==6){
	GOTO       L_followArrow209
L_followArrow207:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow534
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow534:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow210
;final_code.c,647 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,648 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,649 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      FLOC__followArrow+0
	MOVF       R0+1, 0
	MOVWF      FLOC__followArrow+1
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	MOVLW      128
	XORWF      R2+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FLOC__followArrow+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow535
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow535:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow211
;final_code.c,650 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,651 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow212
L_followArrow211:
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      FLOC__followArrow+0
	MOVF       R0+1, 0
	MOVWF      FLOC__followArrow+1
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	MOVLW      128
	XORWF      FLOC__followArrow+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow536
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow536:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow213
;final_code.c,652 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,653 :: 		}else{
	GOTO       L_followArrow214
L_followArrow213:
;final_code.c,654 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,655 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code.c,656 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,657 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,658 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,659 :: 		}
L_followArrow214:
L_followArrow212:
;final_code.c,660 :: 		}else if(k==7){
	GOTO       L_followArrow215
L_followArrow210:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow537
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow537:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow216
;final_code.c,661 :: 		goStraight();
	CALL       _goStraight+0
;final_code.c,662 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code.c,663 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow538
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow538:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow217
;final_code.c,664 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,665 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code.c,666 :: 		}
L_followArrow217:
;final_code.c,668 :: 		}
L_followArrow216:
L_followArrow215:
L_followArrow209:
L_followArrow206:
L_followArrow203:
L_followArrow200:
L_followArrow197:
L_followArrow193:
;final_code.c,669 :: 		}
	RETURN
; end of _followArrow

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;final_code.c,671 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code.c,672 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt218
;final_code.c,673 :: 		encoder();
	CALL       _encoder+0
;final_code.c,674 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code.c,675 :: 		}
L_interrupt218:
;final_code.c,678 :: 		}
L__interrupt539:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code.c,681 :: 		void init_timer(){
;final_code.c,682 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code.c,683 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code.c,684 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code.c,687 :: 		int pulseIn1(){
;final_code.c,688 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code.c,689 :: 		while(1){
L_pulseIn1219:
;final_code.c,690 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code.c,691 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,692 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1221
	GOTO       L_pulseIn1220
L_pulseIn1221:
;final_code.c,693 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1540
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1540:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1222
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1222:
;final_code.c,694 :: 		}
	GOTO       L_pulseIn1219
L_pulseIn1220:
;final_code.c,695 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code.c,696 :: 		while(1){
L_pulseIn1223:
;final_code.c,697 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code.c,698 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,699 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1225
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1225:
;final_code.c,700 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1541
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1541:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1226
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1226:
;final_code.c,701 :: 		}
	GOTO       L_pulseIn1223
;final_code.c,703 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code.c,705 :: 		int pulseIn2(){
;final_code.c,706 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code.c,707 :: 		while(1){
L_pulseIn2227:
;final_code.c,708 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code.c,709 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,710 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2229
	GOTO       L_pulseIn2228
L_pulseIn2229:
;final_code.c,711 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2542
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2542:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2230
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2230:
;final_code.c,712 :: 		}
	GOTO       L_pulseIn2227
L_pulseIn2228:
;final_code.c,713 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code.c,714 :: 		while(1){
L_pulseIn2231:
;final_code.c,715 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code.c,716 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,717 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2233
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2233:
;final_code.c,718 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2543
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2543:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2234
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2234:
;final_code.c,719 :: 		}
	GOTO       L_pulseIn2231
;final_code.c,720 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code.c,723 :: 		int pulseIn3(){
;final_code.c,724 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code.c,725 :: 		while(1){
L_pulseIn3235:
;final_code.c,726 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code.c,727 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,728 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3237
	GOTO       L_pulseIn3236
L_pulseIn3237:
;final_code.c,729 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3544
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3544:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3238
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3238:
;final_code.c,730 :: 		}
	GOTO       L_pulseIn3235
L_pulseIn3236:
;final_code.c,731 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code.c,732 :: 		while(1){
L_pulseIn3239:
;final_code.c,733 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code.c,734 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code.c,735 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3241
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3241:
;final_code.c,736 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3545
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3545:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3242
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3242:
;final_code.c,737 :: 		}
	GOTO       L_pulseIn3239
;final_code.c,738 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code.c,741 :: 		int getDis1(){
;final_code.c,742 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code.c,743 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1243:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1243
	NOP
	NOP
;final_code.c,744 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code.c,745 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1244:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1244
	NOP
	NOP
;final_code.c,746 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code.c,747 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code.c,748 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1245:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1245
	DECFSZ     R12+0, 1
	GOTO       L_getDis1245
	DECFSZ     R11+0, 1
	GOTO       L_getDis1245
	NOP
	NOP
;final_code.c,749 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code.c,751 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code.c,753 :: 		int getDis2(){
;final_code.c,754 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code.c,755 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2246:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2246
	NOP
	NOP
;final_code.c,756 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code.c,757 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2247:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2247
	NOP
	NOP
;final_code.c,758 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code.c,759 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code.c,760 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2248:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2248
	DECFSZ     R12+0, 1
	GOTO       L_getDis2248
	NOP
	NOP
;final_code.c,761 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code.c,763 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code.c,765 :: 		int getDis3(){
;final_code.c,766 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code.c,767 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3249:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3249
	NOP
	NOP
;final_code.c,768 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code.c,769 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3250:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3250
	NOP
	NOP
;final_code.c,770 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code.c,771 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code.c,772 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3251:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3251
	DECFSZ     R12+0, 1
	GOTO       L_getDis3251
	NOP
	NOP
;final_code.c,773 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code.c,775 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code.c,776 :: 		void NidegL(){
;final_code.c,777 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,778 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,779 :: 		while(1){
L_NidegL252:
;final_code.c,780 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL546
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL546:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL254
;final_code.c,781 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,782 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,783 :: 		break;
	GOTO       L_NidegL253
;final_code.c,784 :: 		}
L_NidegL254:
;final_code.c,785 :: 		}
	GOTO       L_NidegL252
L_NidegL253:
;final_code.c,786 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code.c,788 :: 		void NidegR(){
;final_code.c,789 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,790 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,791 :: 		while(1){
L_NidegR255:
;final_code.c,792 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR547
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR547:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR257
;final_code.c,793 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,794 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,795 :: 		break;
	GOTO       L_NidegR256
;final_code.c,796 :: 		}
L_NidegR257:
;final_code.c,797 :: 		}
	GOTO       L_NidegR255
L_NidegR256:
;final_code.c,798 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code.c,800 :: 		void moFEnc(int count){
;final_code.c,801 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,802 :: 		moveF();
	CALL       _moveF+0
;final_code.c,803 :: 		while(1){
L_moFEnc258:
;final_code.c,804 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc548
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc548:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc260
;final_code.c,805 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,806 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,807 :: 		break;
	GOTO       L_moFEnc259
;final_code.c,808 :: 		}
L_moFEnc260:
;final_code.c,809 :: 		}
	GOTO       L_moFEnc258
L_moFEnc259:
;final_code.c,811 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code.c,813 :: 		int getCompass(){
;final_code.c,814 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
	CLRF       R1+0
	BTFSC      PORTD+0, 0
	INCF       R1+0, 1
	MOVF       R1+0, 0
	MOVWF      R4+0
	CLRF       R4+1
	RLF        R4+0, 1
	RLF        R4+1, 1
	BCF        R4+0, 0
	RLF        R4+0, 1
	RLF        R4+1, 1
	BCF        R4+0, 0
	CLRF       R3+0
	BTFSC      PORTD+0, 1
	INCF       R3+0, 1
	MOVF       R3+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      R4+0, 0
	MOVWF      R2+0
	MOVF       R4+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R2+1
	CLRF       R0+0
	BTFSC      PORTD+0, 2
	INCF       R0+0, 1
	MOVLW      0
	MOVWF      R0+1
	MOVF       R2+0, 0
	ADDWF      R0+0, 1
	MOVF       R2+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
;final_code.c,815 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;final_code.c,817 :: 		void turnToPoint(int pt){
;final_code.c,818 :: 		PWM1_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,819 :: 		PWM2_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,820 :: 		if(getCompass()<pt){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint549
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint549:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint261
;final_code.c,822 :: 		while(getCompass()<=pt){
L_turnToPoint262:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint550
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint550:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint263
;final_code.c,823 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,824 :: 		}
	GOTO       L_turnToPoint262
L_turnToPoint263:
;final_code.c,825 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,826 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint264:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint264
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint264
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint264
	NOP
	NOP
;final_code.c,827 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,828 :: 		while(getCompass()>=pt){
L_turnToPoint265:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint551
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint551:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint266
;final_code.c,829 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,830 :: 		}
	GOTO       L_turnToPoint265
L_turnToPoint266:
;final_code.c,831 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,832 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint267:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint267
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint267
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint267
	NOP
	NOP
;final_code.c,833 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code.c,834 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,835 :: 		while(TMR0_value<compTemp){
L_turnToPoint268:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint552
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint552:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint269
;final_code.c,836 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,837 :: 		}
	GOTO       L_turnToPoint268
L_turnToPoint269:
;final_code.c,838 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,839 :: 		}else{
	GOTO       L_turnToPoint270
L_turnToPoint261:
;final_code.c,840 :: 		while(getCompass()>=pt){
L_turnToPoint271:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint553
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint553:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint272
;final_code.c,841 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,842 :: 		}
	GOTO       L_turnToPoint271
L_turnToPoint272:
;final_code.c,843 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,844 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint273:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint273
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint273
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint273
	NOP
	NOP
;final_code.c,845 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,846 :: 		while(getCompass()<=pt){
L_turnToPoint274:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint554
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint554:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint275
;final_code.c,847 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,848 :: 		}
	GOTO       L_turnToPoint274
L_turnToPoint275:
;final_code.c,849 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,850 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint276:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint276
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint276
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint276
	NOP
	NOP
;final_code.c,851 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code.c,852 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,853 :: 		while(TMR0_value<compTemp){
L_turnToPoint277:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint555
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint555:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint278
;final_code.c,854 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,855 :: 		}
	GOTO       L_turnToPoint277
L_turnToPoint278:
;final_code.c,856 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,858 :: 		}
L_turnToPoint270:
;final_code.c,859 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,860 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,861 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,862 :: 		}
	RETURN
; end of _turnToPoint

_avoidObstacles:

;final_code.c,865 :: 		void avoidObstacles(){
;final_code.c,866 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,867 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,868 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code.c,870 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles556
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles556:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles279
;final_code.c,871 :: 		getDis3();
	CALL       _getDis3+0
;final_code.c,872 :: 		getDis2();
	CALL       _getDis2+0
;final_code.c,873 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles557
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles557:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles353
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles558
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles558:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles353
	GOTO       L_avoidObstacles282
L__avoidObstacles353:
;final_code.c,874 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,875 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,876 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,877 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code.c,878 :: 		while(clockEncoder!=0){
L_avoidObstacles283:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles559
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles559:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles284
;final_code.c,879 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles560
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles560:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles285
;final_code.c,880 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,881 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles286
L_avoidObstacles285:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles561
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles561:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles287
;final_code.c,882 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,883 :: 		}
L_avoidObstacles287:
L_avoidObstacles286:
;final_code.c,884 :: 		}
	GOTO       L_avoidObstacles283
L_avoidObstacles284:
;final_code.c,885 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,886 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles288:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles288
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles288
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles288
	NOP
;final_code.c,888 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles562
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles562:
	BTFSS      STATUS+0, 0
	GOTO       L_avoidObstacles289
;final_code.c,889 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,890 :: 		}else{
	GOTO       L_avoidObstacles290
L_avoidObstacles289:
;final_code.c,891 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,892 :: 		}
L_avoidObstacles290:
;final_code.c,893 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,894 :: 		}else{
	GOTO       L_avoidObstacles291
L_avoidObstacles282:
;final_code.c,895 :: 		moveF();
	CALL       _moveF+0
;final_code.c,897 :: 		}
L_avoidObstacles291:
;final_code.c,898 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles292
L_avoidObstacles279:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles563
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles563:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles293
;final_code.c,899 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,900 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,902 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,905 :: 		getDis3();
	CALL       _getDis3+0
;final_code.c,906 :: 		getDis2();
	CALL       _getDis2+0
;final_code.c,911 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles564
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles564:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles296
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles565
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles565:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles296
L__avoidObstacles352:
;final_code.c,912 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,913 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code.c,914 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,916 :: 		}
L_avoidObstacles296:
;final_code.c,917 :: 		if(TMR0_value>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles566
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles566:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles297
;final_code.c,918 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,919 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,920 :: 		while(TMR0_value<15){
L_avoidObstacles298:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles567
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles567:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles299
;final_code.c,921 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,922 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code.c,923 :: 		}
	GOTO       L_avoidObstacles298
L_avoidObstacles299:
;final_code.c,925 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,926 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,927 :: 		}
L_avoidObstacles297:
;final_code.c,929 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles300
L_avoidObstacles293:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles568
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles568:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles301
;final_code.c,930 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,931 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,933 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code.c,936 :: 		getDis3();
	CALL       _getDis3+0
;final_code.c,937 :: 		getDis2();
	CALL       _getDis2+0
;final_code.c,940 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles569
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles569:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles304
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles570
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles570:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles304
L__avoidObstacles351:
;final_code.c,941 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,942 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code.c,943 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,944 :: 		}
L_avoidObstacles304:
;final_code.c,945 :: 		if(TMR0_value>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles571
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles571:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles305
;final_code.c,946 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code.c,947 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,948 :: 		while(TMR0_value<15){
L_avoidObstacles306:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles572
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles572:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles307
;final_code.c,949 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code.c,950 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code.c,951 :: 		}
	GOTO       L_avoidObstacles306
L_avoidObstacles307:
;final_code.c,953 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,954 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,955 :: 		}
L_avoidObstacles305:
;final_code.c,957 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles308
L_avoidObstacles301:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles573
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles573:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles309
;final_code.c,959 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles574
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles574:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles310
;final_code.c,960 :: 		stopAll();
	CALL       _stopAll+0
;final_code.c,961 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code.c,962 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code.c,963 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code.c,964 :: 		}
L_avoidObstacles310:
;final_code.c,965 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code.c,966 :: 		}
L_avoidObstacles309:
L_avoidObstacles308:
L_avoidObstacles300:
L_avoidObstacles292:
;final_code.c,977 :: 		}
	RETURN
; end of _avoidObstacles

_main:

;final_code.c,981 :: 		void main() {
;final_code.c,982 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code.c,983 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code.c,984 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code.c,985 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code.c,989 :: 		init_timer();
	CALL       _init_timer+0
;final_code.c,990 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code.c,991 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code.c,993 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code.c,994 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code.c,995 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code.c,996 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code.c,997 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code.c,998 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code.c,999 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code.c,1000 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code.c,1002 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code.c,1003 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code.c,1004 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code.c,1005 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code.c,1006 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code.c,1007 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code.c,1008 :: 		moveF();
	CALL       _moveF+0
;final_code.c,1009 :: 		while(1){
L_main311:
;final_code.c,1041 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code.c,1044 :: 		}
	GOTO       L_main311
;final_code.c,1047 :: 		}
	GOTO       $+0
; end of _main
