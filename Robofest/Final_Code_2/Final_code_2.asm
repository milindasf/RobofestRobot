
_rotateLeft:

;Final_code_2.c,25 :: 		void rotateLeft(){
;Final_code_2.c,26 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;Final_code_2.c,27 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;Final_code_2.c,28 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,29 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,30 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;Final_code_2.c,31 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;Final_code_2.c,33 :: 		void rotateRight(){
;Final_code_2.c,34 :: 		PORTD.F3=1;
	BSF        PORTD+0, 3
;Final_code_2.c,35 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;Final_code_2.c,36 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,37 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Final_code_2.c,38 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;Final_code_2.c,39 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;Final_code_2.c,41 :: 		void moveF(){
;Final_code_2.c,42 :: 		PORTD.F3=1;
	BSF        PORTD+0, 3
;Final_code_2.c,43 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;Final_code_2.c,44 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,45 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,46 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;Final_code_2.c,47 :: 		}
	RETURN
; end of _moveF

_moveB:

;Final_code_2.c,49 :: 		void moveB(){
;Final_code_2.c,50 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;Final_code_2.c,51 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;Final_code_2.c,52 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,53 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Final_code_2.c,54 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;Final_code_2.c,55 :: 		}
	RETURN
; end of _moveB

_forward:

;Final_code_2.c,57 :: 		forward(){
;Final_code_2.c,58 :: 		PORTD.F3=1;
	BSF        PORTD+0, 3
;Final_code_2.c,59 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;Final_code_2.c,60 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,61 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,62 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,63 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,64 :: 		}
	RETURN
; end of _forward

_backward:

;Final_code_2.c,66 :: 		backward(){
;Final_code_2.c,67 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;Final_code_2.c,68 :: 		PORTD.F4=1;
	BSF        PORTD+0, 4
;Final_code_2.c,69 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,70 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Final_code_2.c,71 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,72 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,73 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;Final_code_2.c,75 :: 		leftHardTurn(){
;Final_code_2.c,76 :: 		PORTD.F3=0;    //left motor backward
	BCF        PORTD+0, 3
;Final_code_2.c,77 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,78 :: 		PORTD.F4=1;    //Right motor forward
	BSF        PORTD+0, 4
;Final_code_2.c,79 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,80 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,81 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,82 :: 		}
	RETURN
; end of _leftHardTurn

_RightHardTurn:

;Final_code_2.c,84 :: 		RightHardTurn(){
;Final_code_2.c,85 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,86 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Final_code_2.c,87 :: 		PORTD.F4=0;    //Right motor forward
	BCF        PORTD+0, 4
;Final_code_2.c,88 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,89 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,90 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,91 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;Final_code_2.c,93 :: 		leftTurn(){
;Final_code_2.c,94 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,95 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,96 :: 		PORTD.F4=1;    //Right motor forward
	BSF        PORTD+0, 4
;Final_code_2.c,97 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,98 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,99 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,100 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;Final_code_2.c,102 :: 		RightTurn(){
;Final_code_2.c,103 :: 		PORTD.F3=1;    //left motor forward
	BSF        PORTD+0, 3
;Final_code_2.c,104 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,105 :: 		PORTD.F4=0;    //Right motor stopped
	BCF        PORTD+0, 4
;Final_code_2.c,106 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,107 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,108 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,109 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;Final_code_2.c,111 :: 		leftSoftTurn(){
;Final_code_2.c,112 :: 		PORTD.F3=1;    //left motor forward
	BSF        PORTD+0, 3
;Final_code_2.c,113 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,114 :: 		PORTD.F4=0;    //Right motor forward
	BCF        PORTD+0, 4
;Final_code_2.c,115 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,116 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,117 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,119 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;Final_code_2.c,121 :: 		rightSoftTurn(){
;Final_code_2.c,122 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,123 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,124 :: 		PORTD.F4=0;    //Right motor forward
	BCF        PORTD+0, 4
;Final_code_2.c,125 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,126 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,127 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,128 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;Final_code_2.c,130 :: 		stopAll(){
;Final_code_2.c,131 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,132 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,133 :: 		PORTD.F4=1;    //Right motor forward
	BSF        PORTD+0, 4
;Final_code_2.c,134 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,135 :: 		}
	RETURN
; end of _stopAll

_leftT:

;Final_code_2.c,137 :: 		leftT(){
;Final_code_2.c,138 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,139 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,140 :: 		PORTD.F4=1;    //Right motor forward
	BSF        PORTD+0, 4
;Final_code_2.c,141 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,142 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,143 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,145 :: 		}
	RETURN
; end of _leftT

_leftHardT:

;Final_code_2.c,147 :: 		leftHardT(){
;Final_code_2.c,148 :: 		PORTD.F3=0;    //left motor backward
	BCF        PORTD+0, 3
;Final_code_2.c,149 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,150 :: 		PORTD.F4=1;    //Right motor forward
	BSF        PORTD+0, 4
;Final_code_2.c,151 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Final_code_2.c,155 :: 		}
	RETURN
; end of _leftHardT

_rightT:

;Final_code_2.c,159 :: 		rightT(){
;Final_code_2.c,161 :: 		PORTD.F3=1;    //left motor forward
	BSF        PORTD+0, 3
;Final_code_2.c,162 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Final_code_2.c,163 :: 		PORTD.F4=0;    //Right motor stopped
	BCF        PORTD+0, 4
;Final_code_2.c,164 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,165 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,166 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,168 :: 		}
	RETURN
; end of _rightT

_rightHardT:

;Final_code_2.c,170 :: 		rightHardT(){
;Final_code_2.c,172 :: 		PORTD.F3=1;    //left motor backward
	BSF        PORTD+0, 3
;Final_code_2.c,173 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Final_code_2.c,174 :: 		PORTD.F4=0;    //Right motor forward
	BCF        PORTD+0, 4
;Final_code_2.c,175 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Final_code_2.c,179 :: 		}
	RETURN
; end of _rightHardT

_sensorRead:

;Final_code_2.c,181 :: 		sensorRead(){
;Final_code_2.c,183 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;Final_code_2.c,184 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;Final_code_2.c,185 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead614
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead614:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;Final_code_2.c,186 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;Final_code_2.c,187 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;Final_code_2.c,188 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;Final_code_2.c,189 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;Final_code_2.c,190 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;Final_code_2.c,191 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;Final_code_2.c,192 :: 		}
L_sensorRead1:
;Final_code_2.c,193 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead615
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead615:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;Final_code_2.c,194 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;Final_code_2.c,195 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;Final_code_2.c,196 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;Final_code_2.c,197 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;Final_code_2.c,198 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;Final_code_2.c,199 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;Final_code_2.c,200 :: 		}
L_sensorRead3:
;Final_code_2.c,201 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead616
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead616:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;Final_code_2.c,202 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;Final_code_2.c,203 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;Final_code_2.c,204 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;Final_code_2.c,205 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;Final_code_2.c,206 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;Final_code_2.c,207 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;Final_code_2.c,208 :: 		}
L_sensorRead5:
;Final_code_2.c,209 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead617
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead617:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;Final_code_2.c,210 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;Final_code_2.c,211 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;Final_code_2.c,212 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;Final_code_2.c,213 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;Final_code_2.c,214 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;Final_code_2.c,215 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;Final_code_2.c,216 :: 		}
L_sensorRead7:
;Final_code_2.c,218 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead618
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead618:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;Final_code_2.c,219 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;Final_code_2.c,220 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;Final_code_2.c,221 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;Final_code_2.c,222 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;Final_code_2.c,223 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;Final_code_2.c,224 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;Final_code_2.c,225 :: 		}
L_sensorRead9:
;Final_code_2.c,226 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead619
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead619:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;Final_code_2.c,227 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;Final_code_2.c,228 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;Final_code_2.c,229 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,230 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;Final_code_2.c,231 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;Final_code_2.c,232 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;Final_code_2.c,233 :: 		}
L_sensorRead11:
;Final_code_2.c,235 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead620
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead620:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;Final_code_2.c,236 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;Final_code_2.c,237 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;Final_code_2.c,238 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,239 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;Final_code_2.c,240 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;Final_code_2.c,241 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;Final_code_2.c,242 :: 		}
L_sensorRead13:
;Final_code_2.c,243 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead621
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead621:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;Final_code_2.c,244 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;Final_code_2.c,245 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;Final_code_2.c,246 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,247 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;Final_code_2.c,248 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;Final_code_2.c,249 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;Final_code_2.c,250 :: 		}
L_sensorRead15:
;Final_code_2.c,251 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead622
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead622:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;Final_code_2.c,252 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;Final_code_2.c,253 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;Final_code_2.c,254 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,255 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;Final_code_2.c,256 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;Final_code_2.c,257 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;Final_code_2.c,258 :: 		}
L_sensorRead17:
;Final_code_2.c,259 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead623
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead623:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;Final_code_2.c,260 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;Final_code_2.c,261 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;Final_code_2.c,262 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,263 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;Final_code_2.c,264 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;Final_code_2.c,265 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;Final_code_2.c,266 :: 		}
L_sensorRead19:
;Final_code_2.c,267 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead624
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead624:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;Final_code_2.c,268 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;Final_code_2.c,269 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;Final_code_2.c,270 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,271 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;Final_code_2.c,272 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;Final_code_2.c,273 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;Final_code_2.c,274 :: 		}
L_sensorRead21:
;Final_code_2.c,275 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead625
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead625:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;Final_code_2.c,276 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;Final_code_2.c,277 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;Final_code_2.c,278 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,279 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;Final_code_2.c,280 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;Final_code_2.c,281 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;Final_code_2.c,282 :: 		}
L_sensorRead23:
;Final_code_2.c,283 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead626
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead626:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;Final_code_2.c,284 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;Final_code_2.c,285 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;Final_code_2.c,286 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,287 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;Final_code_2.c,288 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;Final_code_2.c,289 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;Final_code_2.c,290 :: 		}
L_sensorRead25:
;Final_code_2.c,291 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead627
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead627:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;Final_code_2.c,292 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;Final_code_2.c,293 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;Final_code_2.c,294 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;Final_code_2.c,295 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;Final_code_2.c,296 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;Final_code_2.c,297 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;Final_code_2.c,298 :: 		}
L_sensorRead27:
;Final_code_2.c,300 :: 		}
	RETURN
; end of _sensorRead

_bin_deci:

;Final_code_2.c,303 :: 		int  bin_deci(){
;Final_code_2.c,305 :: 		int decimal_value=0;
;Final_code_2.c,306 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci628:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci629
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci628
L__bin_deci629:
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
L__bin_deci630:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci631
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci630
L__bin_deci631:
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
L__bin_deci632:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci633
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci632
L__bin_deci633:
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
L__bin_deci634:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci635
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci634
L__bin_deci635:
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
L__bin_deci636:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci637
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci636
L__bin_deci637:
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
;Final_code_2.c,309 :: 		return decimal_value;
;Final_code_2.c,311 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;Final_code_2.c,313 :: 		lineFollow(){
;Final_code_2.c,314 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;Final_code_2.c,315 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;Final_code_2.c,316 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;Final_code_2.c,317 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;Final_code_2.c,318 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,319 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,320 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow638
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow638:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow557
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow639
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow639:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow557
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow640
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow640:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow557
	GOTO       L_lineFollow30
L__lineFollow557:
;Final_code_2.c,322 :: 		forward();
	CALL       _forward+0
;Final_code_2.c,324 :: 		}
	GOTO       L_lineFollow31
L_lineFollow30:
;Final_code_2.c,325 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow641
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow641:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow556
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow642
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow642:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow556
	GOTO       L_lineFollow34
L__lineFollow556:
;Final_code_2.c,326 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;Final_code_2.c,327 :: 		turnNo=1;
	MOVLW      1
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,328 :: 		}
	GOTO       L_lineFollow35
L_lineFollow34:
;Final_code_2.c,330 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow643
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow643:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow555
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow644
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow644:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow555
	GOTO       L_lineFollow38
L__lineFollow555:
;Final_code_2.c,331 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;Final_code_2.c,332 :: 		turnNo=2;
	MOVLW      2
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,333 :: 		}
	GOTO       L_lineFollow39
L_lineFollow38:
;Final_code_2.c,334 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow645
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow645:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow554
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow646
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow646:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow554
	GOTO       L_lineFollow42
L__lineFollow554:
;Final_code_2.c,335 :: 		rightTurn();
	CALL       _RightTurn+0
;Final_code_2.c,336 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,337 :: 		}
	GOTO       L_lineFollow43
L_lineFollow42:
;Final_code_2.c,338 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow647
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow647:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow553
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow648
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow648:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow553
	GOTO       L_lineFollow46
L__lineFollow553:
;Final_code_2.c,339 :: 		leftTurn();
	CALL       _leftTurn+0
;Final_code_2.c,340 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,341 :: 		}
	GOTO       L_lineFollow47
L_lineFollow46:
;Final_code_2.c,342 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow649
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow649:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow552
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow650
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow650:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow552
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow651
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow651:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow552
	GOTO       L_lineFollow50
L__lineFollow552:
;Final_code_2.c,343 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,344 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,345 :: 		}
	GOTO       L_lineFollow51
L_lineFollow50:
;Final_code_2.c,346 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow652
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow652:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow551
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow653
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow653:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow551
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow654
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow654:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow551
	GOTO       L_lineFollow54
L__lineFollow551:
;Final_code_2.c,347 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,348 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,349 :: 		}
	GOTO       L_lineFollow55
L_lineFollow54:
;Final_code_2.c,350 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow655
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow655:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow550
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow656
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow656:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow550
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow657
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow657:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow550
	GOTO       L_lineFollow62
L__lineFollow550:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow658
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow658:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow549
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow659
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow659:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow549
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow660
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow660:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow549
	GOTO       L_lineFollow62
L__lineFollow549:
L__lineFollow548:
;Final_code_2.c,353 :: 		RightTurn();
	CALL       _RightTurn+0
;Final_code_2.c,354 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,356 :: 		} else if(((value==56) || (value==48) || (value==24))&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow63
L_lineFollow62:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow661
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow661:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow547
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow662
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow662:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow547
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow663
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow663:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow547
	GOTO       L_lineFollow70
L__lineFollow547:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow664
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow664:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow70
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow665
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow665:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow70
L__lineFollow546:
L__lineFollow545:
;Final_code_2.c,359 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,360 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,362 :: 		}else if(((value==56) || (value==48) || (value==24)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow71
L_lineFollow70:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow666
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow666:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow544
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow667
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow667:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow544
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow668
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow668:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow544
	GOTO       L_lineFollow78
L__lineFollow544:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow669
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow669:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow78
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow670
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow670:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow78
L__lineFollow543:
L__lineFollow542:
;Final_code_2.c,365 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,366 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,367 :: 		}  else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow79
L_lineFollow78:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow671
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow671:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow541
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow672
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow672:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow541
	GOTO       L_lineFollow86
L__lineFollow541:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow673
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow673:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow674
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow674:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow675
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow675:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
L__lineFollow540:
L__lineFollow539:
;Final_code_2.c,371 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,372 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,377 :: 		}
	GOTO       L_lineFollow87
L_lineFollow86:
;Final_code_2.c,378 :: 		else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow676
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow676:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow538
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow677
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow677:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow538
	GOTO       L_lineFollow94
L__lineFollow538:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow678
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow678:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow679
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow679:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow680
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow680:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
L__lineFollow537:
L__lineFollow536:
;Final_code_2.c,382 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,383 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;Final_code_2.c,388 :: 		}else if(value==511){
	GOTO       L_lineFollow95
L_lineFollow94:
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow681
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow681:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow96
;Final_code_2.c,390 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,392 :: 		}else {
	GOTO       L_lineFollow97
L_lineFollow96:
;Final_code_2.c,393 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow682
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow682:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow98
;Final_code_2.c,395 :: 		RightTurn();
	CALL       _RightTurn+0
;Final_code_2.c,396 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow99
L_lineFollow98:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow683
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow683:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow100
;Final_code_2.c,398 :: 		leftTurn();
	CALL       _leftTurn+0
;Final_code_2.c,399 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow101
L_lineFollow100:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow684
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow684:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
;Final_code_2.c,400 :: 		RightTurn();
	CALL       _RightTurn+0
;Final_code_2.c,401 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow103
L_lineFollow102:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow685
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow685:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow104
;Final_code_2.c,402 :: 		leftTurn();
	CALL       _leftTurn+0
;Final_code_2.c,403 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow105
L_lineFollow104:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow686
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow686:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow106
;Final_code_2.c,404 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,405 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow107
L_lineFollow106:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow687
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow687:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow108
;Final_code_2.c,406 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,407 :: 		}
L_lineFollow108:
L_lineFollow107:
L_lineFollow105:
L_lineFollow103:
L_lineFollow101:
L_lineFollow99:
;Final_code_2.c,449 :: 		*/
L_lineFollow97:
L_lineFollow95:
L_lineFollow87:
L_lineFollow79:
L_lineFollow71:
L_lineFollow63:
L_lineFollow55:
L_lineFollow51:
L_lineFollow47:
L_lineFollow43:
L_lineFollow39:
L_lineFollow35:
L_lineFollow31:
;Final_code_2.c,469 :: 		}
	RETURN
; end of _lineFollow

_SemSmallFollow:

;Final_code_2.c,471 :: 		void SemSmallFollow(){
;Final_code_2.c,472 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,473 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow688
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow688:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow111
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow689
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow689:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow111
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow690
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow690:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow111
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow691
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow691:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow111
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow692
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow692:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow111
L__SemSmallFollow569:
;Final_code_2.c,474 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,475 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow112
L_SemSmallFollow111:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow693
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow693:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow115
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow694
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow694:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow115
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow695
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow695:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow115
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow696
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow696:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow115
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow697
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow697:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow115
L__SemSmallFollow568:
;Final_code_2.c,476 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,477 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow116
L_SemSmallFollow115:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow698
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow698:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow119
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow699
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow699:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow119
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow700
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow700:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow119
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow701
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow701:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow119
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow702
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow702:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow119
L__SemSmallFollow567:
;Final_code_2.c,478 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,479 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow120
L_SemSmallFollow119:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow703
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow703:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow123
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow704
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow704:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow123
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow705
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow705:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow123
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow706
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow706:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow123
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow707
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow707:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow123
L__SemSmallFollow566:
;Final_code_2.c,480 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,481 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow124
L_SemSmallFollow123:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow708
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow708:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow127
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow709
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow709:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow127
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow710
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow710:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow127
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow711
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow711:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow127
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow712
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow712:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow127
L__SemSmallFollow565:
;Final_code_2.c,482 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,483 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow128
L_SemSmallFollow127:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow713
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow713:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow131
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow714
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow714:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow131
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow715
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow715:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow131
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow716
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow716:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow131
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow717
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow717:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow131
L__SemSmallFollow564:
;Final_code_2.c,485 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,486 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow132
L_SemSmallFollow131:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow718
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow718:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow135
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow719
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow719:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow135
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow720
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow720:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow135
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow721
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow721:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow135
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow722
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow722:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow135
L__SemSmallFollow563:
;Final_code_2.c,488 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,489 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow136
L_SemSmallFollow135:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow723
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow723:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow724
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow724:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow725
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow725:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow726
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow726:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow727
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow727:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
L__SemSmallFollow562:
;Final_code_2.c,491 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,492 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow140
L_SemSmallFollow139:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow728
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow728:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow729
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow729:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow730
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow730:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow731
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow731:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow732
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow732:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
L__SemSmallFollow561:
;Final_code_2.c,493 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,494 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow144
L_SemSmallFollow143:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow733
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow733:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow734
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow734:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow735
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow735:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow736
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow736:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow737
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow737:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
L__SemSmallFollow560:
;Final_code_2.c,495 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,496 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow148
L_SemSmallFollow147:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow738
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow738:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow739
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow739:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow740
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow740:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow741
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow741:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow742
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow742:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
L__SemSmallFollow559:
;Final_code_2.c,498 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,499 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow152
L_SemSmallFollow151:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow743
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow743:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow744
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow744:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow745
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow745:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow746
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow746:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow747
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow747:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
L__SemSmallFollow558:
;Final_code_2.c,500 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,501 :: 		}else{
	GOTO       L_SemSmallFollow156
L_SemSmallFollow155:
;Final_code_2.c,502 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,503 :: 		}
L_SemSmallFollow156:
L_SemSmallFollow152:
L_SemSmallFollow148:
L_SemSmallFollow144:
L_SemSmallFollow140:
L_SemSmallFollow136:
L_SemSmallFollow132:
L_SemSmallFollow128:
L_SemSmallFollow124:
L_SemSmallFollow120:
L_SemSmallFollow116:
L_SemSmallFollow112:
;Final_code_2.c,505 :: 		}
	RETURN
; end of _SemSmallFollow

_encoder:

;Final_code_2.c,508 :: 		void encoder(){
;Final_code_2.c,509 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder157
;Final_code_2.c,510 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;Final_code_2.c,512 :: 		}
L_encoder157:
;Final_code_2.c,513 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder160
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder748
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder748:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder160
L__encoder571:
;Final_code_2.c,514 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;Final_code_2.c,515 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;Final_code_2.c,516 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder749
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder749:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder161
;Final_code_2.c,517 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;Final_code_2.c,518 :: 		}else if(rotationMode==2){
	GOTO       L_encoder162
L_encoder161:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder750
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder750:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder163
;Final_code_2.c,519 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;Final_code_2.c,520 :: 		}
L_encoder163:
L_encoder162:
;Final_code_2.c,521 :: 		}
L_encoder160:
;Final_code_2.c,523 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder164
;Final_code_2.c,524 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;Final_code_2.c,525 :: 		}
L_encoder164:
;Final_code_2.c,526 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder167
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder751
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder751:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder167
L__encoder570:
;Final_code_2.c,527 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;Final_code_2.c,528 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;Final_code_2.c,529 :: 		}
L_encoder167:
;Final_code_2.c,530 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;Final_code_2.c,532 :: 		void initEncoder(){
;Final_code_2.c,533 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;Final_code_2.c,534 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;Final_code_2.c,535 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;Final_code_2.c,537 :: 		void goStraight(){
;Final_code_2.c,539 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;Final_code_2.c,540 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;Final_code_2.c,541 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,542 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,543 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight752
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight752:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight572
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight753
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight753:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight572
	GOTO       L_goStraight170
L__goStraight572:
;Final_code_2.c,544 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,545 :: 		}
L_goStraight170:
;Final_code_2.c,546 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,548 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight754
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight754:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight171
;Final_code_2.c,550 :: 		if(TMR0_value-TMR1_value>=3){
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
	GOTO       L__goStraight755
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight755:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight172
;Final_code_2.c,551 :: 		do{
L_goStraight173:
;Final_code_2.c,552 :: 		rightT();
	CALL       _rightT+0
;Final_code_2.c,553 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight756
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight756:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight173
;Final_code_2.c,554 :: 		}
L_goStraight172:
;Final_code_2.c,557 :: 		}else{
	GOTO       L_goStraight176
L_goStraight171:
;Final_code_2.c,559 :: 		if(TMR1_value-TMR0_value>=3){
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
	GOTO       L__goStraight757
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight757:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight177
;Final_code_2.c,560 :: 		do{
L_goStraight178:
;Final_code_2.c,561 :: 		leftT();
	CALL       _leftT+0
;Final_code_2.c,562 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight758
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight758:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight178
;Final_code_2.c,563 :: 		}
L_goStraight177:
;Final_code_2.c,564 :: 		}
L_goStraight176:
;Final_code_2.c,565 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;Final_code_2.c,568 :: 		void goStraight2(){
;Final_code_2.c,569 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,570 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2759
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2759:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2574
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2760
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2760:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2574
	GOTO       L_goStraight2183
L__goStraight2574:
;Final_code_2.c,571 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,573 :: 		}
L_goStraight2183:
;Final_code_2.c,574 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2761
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2761:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2186
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2762
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2762:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2186
L__goStraight2573:
;Final_code_2.c,575 :: 		distCounter= (TMR0_value*200);
	MOVF       _TMR0_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R0+1
	MOVLW      200
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      _distCounter+0
	MOVF       R0+1, 0
	MOVWF      _distCounter+1
	MOVLW      0
	BTFSC      _distCounter+1, 7
	MOVLW      255
	MOVWF      _distCounter+2
	MOVWF      _distCounter+3
;Final_code_2.c,576 :: 		distCounter = distCounter/TMR1_value;
	MOVF       _TMR1_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R4+1
	MOVLW      0
	BTFSC      R4+1, 7
	MOVLW      255
	MOVWF      R4+2
	MOVWF      R4+3
	MOVF       _distCounter+0, 0
	MOVWF      R0+0
	MOVF       _distCounter+1, 0
	MOVWF      R0+1
	MOVF       _distCounter+2, 0
	MOVWF      R0+2
	MOVF       _distCounter+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      _distCounter+0
	MOVF       R0+1, 0
	MOVWF      _distCounter+1
	MOVF       R0+2, 0
	MOVWF      _distCounter+2
	MOVF       R0+3, 0
	MOVWF      _distCounter+3
;Final_code_2.c,577 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2763
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2763
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2763
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2763:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2187
;Final_code_2.c,578 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,579 :: 		}else{
	GOTO       L_goStraight2188
L_goStraight2187:
;Final_code_2.c,580 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,581 :: 		}
L_goStraight2188:
;Final_code_2.c,583 :: 		distCounter = (TMR1_value*200);
	MOVF       _TMR1_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R0+1
	MOVLW      200
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      _distCounter+0
	MOVF       R0+1, 0
	MOVWF      _distCounter+1
	MOVLW      0
	BTFSC      _distCounter+1, 7
	MOVLW      255
	MOVWF      _distCounter+2
	MOVWF      _distCounter+3
;Final_code_2.c,584 :: 		distCounter = distCounter/TMR0_value;
	MOVF       _TMR0_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R4+1
	MOVLW      0
	BTFSC      R4+1, 7
	MOVLW      255
	MOVWF      R4+2
	MOVWF      R4+3
	MOVF       _distCounter+0, 0
	MOVWF      R0+0
	MOVF       _distCounter+1, 0
	MOVWF      R0+1
	MOVF       _distCounter+2, 0
	MOVWF      R0+2
	MOVF       _distCounter+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      _distCounter+0
	MOVF       R0+1, 0
	MOVWF      _distCounter+1
	MOVF       R0+2, 0
	MOVWF      _distCounter+2
	MOVF       R0+3, 0
	MOVWF      _distCounter+3
;Final_code_2.c,585 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2764
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2764
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2764
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2764:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2189
;Final_code_2.c,586 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,587 :: 		}else{
	GOTO       L_goStraight2190
L_goStraight2189:
;Final_code_2.c,588 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,589 :: 		}
L_goStraight2190:
;Final_code_2.c,590 :: 		}
L_goStraight2186:
;Final_code_2.c,592 :: 		}
	RETURN
; end of _goStraight2

_tuneToMiddle:

;Final_code_2.c,594 :: 		int tuneToMiddle(){
;Final_code_2.c,595 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,596 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle765
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle765:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle191
;Final_code_2.c,598 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,599 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;Final_code_2.c,600 :: 		}
L_tuneToMiddle191:
;Final_code_2.c,601 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle766
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle766:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle193
;Final_code_2.c,602 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle767
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle767:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle575
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle768
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle768:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle575
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle769
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle769:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle575
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle770
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle770:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle575
	GOTO       L_tuneToMiddle196
L__tuneToMiddle575:
;Final_code_2.c,603 :: 		while(sw[0][4]==0){
L_tuneToMiddle197:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle771
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle771:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle198
;Final_code_2.c,604 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,605 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle772
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle772:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle199
;Final_code_2.c,607 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,608 :: 		}else{
	GOTO       L_tuneToMiddle200
L_tuneToMiddle199:
;Final_code_2.c,609 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,610 :: 		}
L_tuneToMiddle200:
;Final_code_2.c,611 :: 		}
	GOTO       L_tuneToMiddle197
L_tuneToMiddle198:
;Final_code_2.c,612 :: 		}
	GOTO       L_tuneToMiddle201
L_tuneToMiddle196:
;Final_code_2.c,614 :: 		while(sw[0][4]==0){
L_tuneToMiddle202:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle773
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle773:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle203
;Final_code_2.c,615 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,616 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle774
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle774:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle204
;Final_code_2.c,618 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,619 :: 		}else{
	GOTO       L_tuneToMiddle205
L_tuneToMiddle204:
;Final_code_2.c,620 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,621 :: 		}
L_tuneToMiddle205:
;Final_code_2.c,622 :: 		}
	GOTO       L_tuneToMiddle202
L_tuneToMiddle203:
;Final_code_2.c,623 :: 		}
L_tuneToMiddle201:
;Final_code_2.c,624 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;Final_code_2.c,625 :: 		}
L_tuneToMiddle193:
;Final_code_2.c,627 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;Final_code_2.c,629 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;Final_code_2.c,632 :: 		void printClockEncoders(){
;Final_code_2.c,633 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders775
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders775:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders207
;Final_code_2.c,637 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders208
L_printClockEncoders207:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders776
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders776:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders209
;Final_code_2.c,641 :: 		}
L_printClockEncoders209:
L_printClockEncoders208:
;Final_code_2.c,643 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;Final_code_2.c,646 :: 		int getFrontDecimal(){
;Final_code_2.c,647 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,649 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal777:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal778
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal777
L__getFrontDecimal778:
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
L__getFrontDecimal779:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal780
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal779
L__getFrontDecimal780:
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
L__getFrontDecimal781:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal782
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal781
L__getFrontDecimal782:
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
L__getFrontDecimal783:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal784
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal783
L__getFrontDecimal784:
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
L__getFrontDecimal785:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal786
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal785
L__getFrontDecimal786:
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
;Final_code_2.c,650 :: 		return val;
;Final_code_2.c,651 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;Final_code_2.c,652 :: 		int getBackDecimal(){
;Final_code_2.c,653 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,654 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal787:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal788
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal787
L__getBackDecimal788:
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
L__getBackDecimal789:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal790
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal789
L__getBackDecimal790:
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
;Final_code_2.c,655 :: 		return val;
;Final_code_2.c,656 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;Final_code_2.c,660 :: 		void followArrow(){
;Final_code_2.c,661 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow791
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow791:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow210
;Final_code_2.c,662 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;Final_code_2.c,663 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow792
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow792:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow211
;Final_code_2.c,664 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,670 :: 		}
L_followArrow211:
;Final_code_2.c,671 :: 		} else if(k==1){
	GOTO       L_followArrow212
L_followArrow210:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow793
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow793:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow213
;Final_code_2.c,672 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,673 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow794
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow794:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow214
;Final_code_2.c,674 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,675 :: 		}else{
	GOTO       L_followArrow215
L_followArrow214:
;Final_code_2.c,676 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,678 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,680 :: 		}
L_followArrow215:
;Final_code_2.c,681 :: 		}else if(k==2){
	GOTO       L_followArrow216
L_followArrow213:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow795
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow795:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow217
;Final_code_2.c,682 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;Final_code_2.c,683 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow796
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow796:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow218
;Final_code_2.c,684 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,685 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,687 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,688 :: 		}
L_followArrow218:
;Final_code_2.c,689 :: 		}else if(k==3){
	GOTO       L_followArrow219
L_followArrow217:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow797
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow797:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow220
;Final_code_2.c,690 :: 		moveB();
	CALL       _moveB+0
;Final_code_2.c,691 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,692 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,693 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow798
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow798:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow221
;Final_code_2.c,696 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,697 :: 		}
L_followArrow221:
;Final_code_2.c,699 :: 		}else if(k==4){
	GOTO       L_followArrow222
L_followArrow220:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow799
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow799:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow223
;Final_code_2.c,700 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,701 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,702 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow800
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow800:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow224
;Final_code_2.c,705 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,706 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,707 :: 		}
L_followArrow224:
;Final_code_2.c,709 :: 		}else if(k==5){
	GOTO       L_followArrow225
L_followArrow223:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow801
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow801:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow226
;Final_code_2.c,710 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,711 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,712 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;Final_code_2.c,713 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow802
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow802:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow227
;Final_code_2.c,716 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,718 :: 		}
L_followArrow227:
;Final_code_2.c,719 :: 		}else if(k==6){
	GOTO       L_followArrow228
L_followArrow226:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow803
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow803:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow229
;Final_code_2.c,720 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,721 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,722 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow804
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow804:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow230
;Final_code_2.c,723 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,724 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow231
L_followArrow230:
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
	GOTO       L__followArrow805
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow805:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow232
;Final_code_2.c,725 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,726 :: 		}else{
	GOTO       L_followArrow233
L_followArrow232:
;Final_code_2.c,727 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,729 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;Final_code_2.c,730 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,731 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,732 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,733 :: 		}
L_followArrow233:
L_followArrow231:
;Final_code_2.c,734 :: 		}else if(k==7){
	GOTO       L_followArrow234
L_followArrow229:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow806
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow806:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow235
;Final_code_2.c,735 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,736 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,737 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow807
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow807:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow236
;Final_code_2.c,738 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,740 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;Final_code_2.c,742 :: 		}
L_followArrow236:
;Final_code_2.c,744 :: 		}
L_followArrow235:
L_followArrow234:
L_followArrow228:
L_followArrow225:
L_followArrow222:
L_followArrow219:
L_followArrow216:
L_followArrow212:
;Final_code_2.c,745 :: 		}
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

;Final_code_2.c,747 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;Final_code_2.c,748 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt237
;Final_code_2.c,749 :: 		encoder();
	CALL       _encoder+0
;Final_code_2.c,750 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;Final_code_2.c,751 :: 		}
L_interrupt237:
;Final_code_2.c,754 :: 		}
L__interrupt808:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;Final_code_2.c,757 :: 		void init_timer(){
;Final_code_2.c,758 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;Final_code_2.c,759 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;Final_code_2.c,760 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;Final_code_2.c,763 :: 		int pulseIn1(){
;Final_code_2.c,764 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;Final_code_2.c,765 :: 		while(1){
L_pulseIn1238:
;Final_code_2.c,766 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;Final_code_2.c,767 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,768 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1240
	GOTO       L_pulseIn1239
L_pulseIn1240:
;Final_code_2.c,769 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1809
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1809:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1241
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1241:
;Final_code_2.c,770 :: 		}
	GOTO       L_pulseIn1238
L_pulseIn1239:
;Final_code_2.c,771 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;Final_code_2.c,772 :: 		while(1){
L_pulseIn1242:
;Final_code_2.c,773 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;Final_code_2.c,774 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,775 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1244
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1244:
;Final_code_2.c,776 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1810
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1810:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1245
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1245:
;Final_code_2.c,777 :: 		}
	GOTO       L_pulseIn1242
;Final_code_2.c,779 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;Final_code_2.c,781 :: 		int pulseIn2(){
;Final_code_2.c,782 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;Final_code_2.c,783 :: 		while(1){
L_pulseIn2246:
;Final_code_2.c,784 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;Final_code_2.c,785 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,786 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2248
	GOTO       L_pulseIn2247
L_pulseIn2248:
;Final_code_2.c,787 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2811
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2811:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2249
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2249:
;Final_code_2.c,788 :: 		}
	GOTO       L_pulseIn2246
L_pulseIn2247:
;Final_code_2.c,789 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;Final_code_2.c,790 :: 		while(1){
L_pulseIn2250:
;Final_code_2.c,791 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;Final_code_2.c,792 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,793 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2252
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2252:
;Final_code_2.c,794 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2812
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2812:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2253
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2253:
;Final_code_2.c,795 :: 		}
	GOTO       L_pulseIn2250
;Final_code_2.c,796 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;Final_code_2.c,799 :: 		int pulseIn3(){
;Final_code_2.c,800 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;Final_code_2.c,801 :: 		while(1){
L_pulseIn3254:
;Final_code_2.c,802 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;Final_code_2.c,803 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,804 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3256
	GOTO       L_pulseIn3255
L_pulseIn3256:
;Final_code_2.c,805 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3813
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3813:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3257
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3257:
;Final_code_2.c,806 :: 		}
	GOTO       L_pulseIn3254
L_pulseIn3255:
;Final_code_2.c,807 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;Final_code_2.c,808 :: 		while(1){
L_pulseIn3258:
;Final_code_2.c,809 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;Final_code_2.c,810 :: 		Delay_1us();
	CALL       _Delay_1us+0
;Final_code_2.c,811 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3260
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3260:
;Final_code_2.c,812 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3814
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3814:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3261
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3261:
;Final_code_2.c,813 :: 		}
	GOTO       L_pulseIn3258
;Final_code_2.c,814 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;Final_code_2.c,817 :: 		int getDis1(){
;Final_code_2.c,818 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;Final_code_2.c,819 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1262:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1262
	NOP
	NOP
;Final_code_2.c,820 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;Final_code_2.c,821 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1263:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1263
	NOP
	NOP
;Final_code_2.c,822 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;Final_code_2.c,823 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;Final_code_2.c,824 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1264:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1264
	DECFSZ     R12+0, 1
	GOTO       L_getDis1264
	DECFSZ     R11+0, 1
	GOTO       L_getDis1264
	NOP
	NOP
;Final_code_2.c,825 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;Final_code_2.c,827 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;Final_code_2.c,829 :: 		int getDis2(){
;Final_code_2.c,830 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;Final_code_2.c,831 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2265:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2265
	NOP
	NOP
;Final_code_2.c,832 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;Final_code_2.c,833 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2266:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2266
	NOP
	NOP
;Final_code_2.c,834 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;Final_code_2.c,835 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;Final_code_2.c,836 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2267:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2267
	DECFSZ     R12+0, 1
	GOTO       L_getDis2267
	NOP
	NOP
;Final_code_2.c,837 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;Final_code_2.c,839 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;Final_code_2.c,841 :: 		int getDis3(){
;Final_code_2.c,842 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;Final_code_2.c,843 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3268:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3268
	NOP
	NOP
;Final_code_2.c,844 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;Final_code_2.c,845 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3269:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3269
	NOP
	NOP
;Final_code_2.c,846 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;Final_code_2.c,847 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;Final_code_2.c,848 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3270:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3270
	DECFSZ     R12+0, 1
	GOTO       L_getDis3270
	NOP
	NOP
;Final_code_2.c,849 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;Final_code_2.c,851 :: 		}
	RETURN
; end of _getDis3

_PrintDataToLcd:

;Final_code_2.c,853 :: 		void PrintDataToLcd(){
;Final_code_2.c,854 :: 		int i=0;
	CLRF       PrintDataToLcd_i_L0+0
	CLRF       PrintDataToLcd_i_L0+1
;Final_code_2.c,855 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,856 :: 		for(i=0;i<5;i++){
	CLRF       PrintDataToLcd_i_L0+0
	CLRF       PrintDataToLcd_i_L0+1
L_PrintDataToLcd271:
	MOVLW      128
	XORWF      PrintDataToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__PrintDataToLcd815
	MOVLW      5
	SUBWF      PrintDataToLcd_i_L0+0, 0
L__PrintDataToLcd815:
	BTFSC      STATUS+0, 0
	GOTO       L_PrintDataToLcd272
;Final_code_2.c,857 :: 		Lcd_Chr(2,1,text[i]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       PrintDataToLcd_i_L0+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Final_code_2.c,856 :: 		for(i=0;i<5;i++){
	INCF       PrintDataToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       PrintDataToLcd_i_L0+1, 1
;Final_code_2.c,858 :: 		}
	GOTO       L_PrintDataToLcd271
L_PrintDataToLcd272:
;Final_code_2.c,859 :: 		for(i=5;i<14;i++){
	MOVLW      5
	MOVWF      PrintDataToLcd_i_L0+0
	MOVLW      0
	MOVWF      PrintDataToLcd_i_L0+1
L_PrintDataToLcd274:
	MOVLW      128
	XORWF      PrintDataToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__PrintDataToLcd816
	MOVLW      14
	SUBWF      PrintDataToLcd_i_L0+0, 0
L__PrintDataToLcd816:
	BTFSC      STATUS+0, 0
	GOTO       L_PrintDataToLcd275
;Final_code_2.c,860 :: 		Lcd_Chr(1,1,text[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       PrintDataToLcd_i_L0+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Final_code_2.c,859 :: 		for(i=5;i<14;i++){
	INCF       PrintDataToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       PrintDataToLcd_i_L0+1, 1
;Final_code_2.c,861 :: 		}
	GOTO       L_PrintDataToLcd274
L_PrintDataToLcd275:
;Final_code_2.c,863 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,864 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,865 :: 		WordToStr(counter1,to_LCD);
	MOVF       _counter1+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter1+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Final_code_2.c,866 :: 		Lcd_Out(2,6,to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Final_code_2.c,867 :: 		WordToStr(counter2,to_LCD);
	MOVF       _counter2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Final_code_2.c,868 :: 		Lcd_Out(1,10,to_LCD);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Final_code_2.c,871 :: 		}
	RETURN
; end of _PrintDataToLcd

_NidegL:

;Final_code_2.c,874 :: 		void NidegL(){
;Final_code_2.c,875 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,876 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,877 :: 		while(1){
L_NidegL277:
;Final_code_2.c,878 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL817
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL817:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL279
;Final_code_2.c,879 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,880 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,881 :: 		break;
	GOTO       L_NidegL278
;Final_code_2.c,882 :: 		}
L_NidegL279:
;Final_code_2.c,883 :: 		}
	GOTO       L_NidegL277
L_NidegL278:
;Final_code_2.c,884 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;Final_code_2.c,886 :: 		void NidegR(){
;Final_code_2.c,887 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,888 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,889 :: 		while(1){
L_NidegR280:
;Final_code_2.c,890 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR818
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR818:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR282
;Final_code_2.c,891 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,892 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,893 :: 		break;
	GOTO       L_NidegR281
;Final_code_2.c,894 :: 		}
L_NidegR282:
;Final_code_2.c,895 :: 		}
	GOTO       L_NidegR280
L_NidegR281:
;Final_code_2.c,896 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;Final_code_2.c,898 :: 		void moFEnc(int count){
;Final_code_2.c,899 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,900 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,901 :: 		while(1){
L_moFEnc283:
;Final_code_2.c,902 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc819
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc819:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc285
;Final_code_2.c,903 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,904 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,905 :: 		break;
	GOTO       L_moFEnc284
;Final_code_2.c,906 :: 		}
L_moFEnc285:
;Final_code_2.c,907 :: 		}
	GOTO       L_moFEnc283
L_moFEnc284:
;Final_code_2.c,909 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;Final_code_2.c,911 :: 		int getCompass(){
;Final_code_2.c,912 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;Final_code_2.c,913 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;Final_code_2.c,915 :: 		void turnToPoint(int pt){
;Final_code_2.c,916 :: 		PWM1_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,917 :: 		PWM2_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,918 :: 		if(getCompass()<pt){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint820
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint820:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint286
;Final_code_2.c,920 :: 		while(getCompass()<=pt){
L_turnToPoint287:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint821
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint821:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint288
;Final_code_2.c,921 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,922 :: 		}
	GOTO       L_turnToPoint287
L_turnToPoint288:
;Final_code_2.c,923 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,924 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint289:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint289
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint289
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint289
	NOP
	NOP
;Final_code_2.c,925 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,926 :: 		while(getCompass()>=pt){
L_turnToPoint290:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint822
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint822:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint291
;Final_code_2.c,927 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,928 :: 		}
	GOTO       L_turnToPoint290
L_turnToPoint291:
;Final_code_2.c,929 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,930 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint292:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint292
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint292
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint292
	NOP
	NOP
;Final_code_2.c,931 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;Final_code_2.c,932 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,933 :: 		while(TMR0_value<compTemp){
L_turnToPoint293:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint823
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint823:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint294
;Final_code_2.c,934 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,935 :: 		}
	GOTO       L_turnToPoint293
L_turnToPoint294:
;Final_code_2.c,936 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,937 :: 		}else{
	GOTO       L_turnToPoint295
L_turnToPoint286:
;Final_code_2.c,938 :: 		while(getCompass()>=pt){
L_turnToPoint296:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint824
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint824:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint297
;Final_code_2.c,939 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,940 :: 		}
	GOTO       L_turnToPoint296
L_turnToPoint297:
;Final_code_2.c,941 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,942 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint298:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint298
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint298
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint298
	NOP
	NOP
;Final_code_2.c,943 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,944 :: 		while(getCompass()<=pt){
L_turnToPoint299:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint825
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint825:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint300
;Final_code_2.c,945 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,946 :: 		}
	GOTO       L_turnToPoint299
L_turnToPoint300:
;Final_code_2.c,947 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,948 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint301:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint301
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint301
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint301
	NOP
	NOP
;Final_code_2.c,949 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;Final_code_2.c,950 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,951 :: 		while(TMR0_value<compTemp){
L_turnToPoint302:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint826
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint826:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint303
;Final_code_2.c,952 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,953 :: 		}
	GOTO       L_turnToPoint302
L_turnToPoint303:
;Final_code_2.c,954 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,956 :: 		}
L_turnToPoint295:
;Final_code_2.c,957 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,958 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,959 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,960 :: 		}
	RETURN
; end of _turnToPoint

_convert:

;Final_code_2.c,962 :: 		int convert(int x_high,int x_low){
;Final_code_2.c,964 :: 		if(x_high>=127){
	MOVLW      128
	XORWF      FARG_convert_x_high+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__convert827
	MOVLW      127
	SUBWF      FARG_convert_x_high+0, 0
L__convert827:
	BTFSS      STATUS+0, 0
	GOTO       L_convert304
;Final_code_2.c,965 :: 		number=(x_high<<8)+x_low;
	MOVF       FARG_convert_x_high+1, 0
	MOVWF      convert_number_L0+2
	MOVF       FARG_convert_x_high+0, 0
	MOVWF      convert_number_L0+1
	CLRF       convert_number_L0+0
	CLRF       convert_number_L0+3
	MOVF       FARG_convert_x_low+0, 0
	ADDWF      convert_number_L0+0, 1
	MOVF       FARG_convert_x_low+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      convert_number_L0+1, 1
	MOVLW      0
	BTFSC      convert_number_L0+1, 7
	MOVLW      255
	MOVWF      convert_number_L0+2
	MOVWF      convert_number_L0+3
;Final_code_2.c,966 :: 		number=number-1;
	MOVLW      1
	SUBWF      convert_number_L0+0, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+1, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+2, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+3, 1
;Final_code_2.c,967 :: 		number=~(number);
	COMF       convert_number_L0+0, 0
	MOVWF      R0+0
	COMF       convert_number_L0+1, 0
	MOVWF      R0+1
	COMF       convert_number_L0+2, 0
	MOVWF      R0+2
	COMF       convert_number_L0+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      convert_number_L0+0
	MOVF       R0+1, 0
	MOVWF      convert_number_L0+1
	MOVF       R0+2, 0
	MOVWF      convert_number_L0+2
	MOVF       R0+3, 0
	MOVWF      convert_number_L0+3
;Final_code_2.c,970 :: 		number=(-1)*number;
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	MOVWF      R4+2
	MOVWF      R4+3
	CALL       _Mul_32x32_U+0
	MOVF       R0+0, 0
	MOVWF      convert_number_L0+0
	MOVF       R0+1, 0
	MOVWF      convert_number_L0+1
	MOVF       R0+2, 0
	MOVWF      convert_number_L0+2
	MOVF       R0+3, 0
	MOVWF      convert_number_L0+3
;Final_code_2.c,971 :: 		return number;
	RETURN
;Final_code_2.c,972 :: 		}else{
L_convert304:
;Final_code_2.c,973 :: 		number=(x_high<<8)+x_low;
	MOVF       FARG_convert_x_high+1, 0
	MOVWF      convert_number_L0+2
	MOVF       FARG_convert_x_high+0, 0
	MOVWF      convert_number_L0+1
	CLRF       convert_number_L0+0
	CLRF       convert_number_L0+3
	MOVF       FARG_convert_x_low+0, 0
	ADDWF      convert_number_L0+0, 1
	MOVF       FARG_convert_x_low+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      convert_number_L0+1, 1
	MOVLW      0
	BTFSC      convert_number_L0+1, 7
	MOVLW      255
	MOVWF      convert_number_L0+2
	MOVWF      convert_number_L0+3
;Final_code_2.c,974 :: 		return number;
	MOVF       convert_number_L0+0, 0
	MOVWF      R0+0
	MOVF       convert_number_L0+1, 0
	MOVWF      R0+1
;Final_code_2.c,977 :: 		}
	RETURN
; end of _convert

_Read_Compass:

;Final_code_2.c,983 :: 		void Read_Compass(){
;Final_code_2.c,985 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,986 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass306:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass306
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass306
	NOP
	NOP
;Final_code_2.c,987 :: 		I2C1_Wr(0x3C);   //sellecting magnatometer
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,988 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,989 :: 		I2C1_Wr(0x00); //single mode readinh
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,990 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,992 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,993 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass307:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass307
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass307
	NOP
	NOP
;Final_code_2.c,994 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass308
;Final_code_2.c,996 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,997 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,998 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,999 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1000 :: 		x_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_h+0
;Final_code_2.c,1001 :: 		}
L_Read_Compass308:
;Final_code_2.c,1002 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1005 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,1006 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass309:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass309
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass309
	NOP
	NOP
;Final_code_2.c,1007 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass310
;Final_code_2.c,1009 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1010 :: 		I2C1_Wr(0x04);
	MOVLW      4
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1011 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,1012 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1013 :: 		x_l=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_l+0
;Final_code_2.c,1014 :: 		}
L_Read_Compass310:
;Final_code_2.c,1015 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1018 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,1019 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass311:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass311
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass311
	NOP
	NOP
;Final_code_2.c,1020 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass312
;Final_code_2.c,1022 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1023 :: 		I2C1_Wr(0x05);
	MOVLW      5
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1024 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,1025 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1026 :: 		z_h=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_h+0
;Final_code_2.c,1027 :: 		}
L_Read_Compass312:
;Final_code_2.c,1028 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1031 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,1032 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass313:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass313
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass313
	NOP
	NOP
;Final_code_2.c,1033 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass314
;Final_code_2.c,1035 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1036 :: 		I2C1_Wr(0x06);
	MOVLW      6
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1037 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,1038 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1039 :: 		z_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_l+0
;Final_code_2.c,1040 :: 		}
L_Read_Compass314:
;Final_code_2.c,1041 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1044 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,1045 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass315:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass315
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass315
	NOP
	NOP
;Final_code_2.c,1046 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass316
;Final_code_2.c,1048 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1049 :: 		I2C1_Wr(0x07);
	MOVLW      7
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1050 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,1051 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1052 :: 		y_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_h+0
;Final_code_2.c,1053 :: 		}
L_Read_Compass316:
;Final_code_2.c,1054 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1056 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Final_code_2.c,1057 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass317:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass317
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass317
	NOP
	NOP
;Final_code_2.c,1058 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass318
;Final_code_2.c,1060 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1061 :: 		I2C1_Wr(0x08);
	MOVLW      8
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1062 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Final_code_2.c,1063 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Final_code_2.c,1064 :: 		y_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_l+0
;Final_code_2.c,1065 :: 		}
L_Read_Compass318:
;Final_code_2.c,1066 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Final_code_2.c,1068 :: 		X_Value=convert(x_h,x_l);
	MOVF       _x_h+0, 0
	MOVWF      FARG_convert_x_high+0
	CLRF       FARG_convert_x_high+1
	MOVF       _x_l+0, 0
	MOVWF      FARG_convert_x_low+0
	CLRF       FARG_convert_x_low+1
	CALL       _convert+0
	MOVF       R0+0, 0
	MOVWF      _X_Value+0
	MOVF       R0+1, 0
	MOVWF      _X_Value+1
	MOVLW      0
	BTFSC      _X_Value+1, 7
	MOVLW      255
	MOVWF      _X_Value+2
	MOVWF      _X_Value+3
;Final_code_2.c,1069 :: 		Y_Value=convert(y_h,y_l);
	MOVF       _y_h+0, 0
	MOVWF      FARG_convert_x_high+0
	CLRF       FARG_convert_x_high+1
	MOVF       _y_l+0, 0
	MOVWF      FARG_convert_x_low+0
	CLRF       FARG_convert_x_low+1
	CALL       _convert+0
	MOVF       R0+0, 0
	MOVWF      _Y_Value+0
	MOVF       R0+1, 0
	MOVWF      _Y_Value+1
	MOVLW      0
	BTFSC      _Y_Value+1, 7
	MOVLW      255
	MOVWF      _Y_Value+2
	MOVWF      _Y_Value+3
;Final_code_2.c,1071 :: 		if(X_Value>=0 && Y_Value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass828
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass828
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass828
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass828:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass321
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass829
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass829
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass829
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass829:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass321
L__Read_Compass579:
;Final_code_2.c,1073 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Read_Compass+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Read_Compass+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Read_Compass+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Read_Compass+3
	MOVF       _X_Value+0, 0
	MOVWF      R0+0
	MOVF       _X_Value+1, 0
	MOVWF      R0+1
	MOVF       _X_Value+2, 0
	MOVWF      R0+2
	MOVF       _X_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Read_Compass+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Read_Compass+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Read_Compass+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Read_Compass+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_atan_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_atan_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_atan_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_atan_f+3
	CALL       _atan+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1074 :: 		angle=angle*((180)/(3.14159265));
	MOVLW      224
	MOVWF      R4+0
	MOVLW      46
	MOVWF      R4+1
	MOVLW      101
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1076 :: 		}else if(X_Value<0 && Y_Value>=0){
	GOTO       L_Read_Compass322
L_Read_Compass321:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass830
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass830
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass830
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass830:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass325
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass831
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass831
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass831
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass831:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass325
L__Read_Compass578:
;Final_code_2.c,1079 :: 		angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Read_Compass+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Read_Compass+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Read_Compass+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Read_Compass+3
	MOVF       _X_Value+0, 0
	MOVWF      R0+0
	MOVF       _X_Value+1, 0
	MOVWF      R0+1
	MOVF       _X_Value+2, 0
	MOVWF      R0+2
	MOVF       _X_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      128
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Read_Compass+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Read_Compass+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Read_Compass+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Read_Compass+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_atan_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_atan_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_atan_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_atan_f+3
	CALL       _atan+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1080 :: 		angle=angle*((180)/(3.14159265));
	MOVLW      224
	MOVWF      R4+0
	MOVLW      46
	MOVWF      R4+1
	MOVLW      101
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1081 :: 		angle=180-angle;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      134
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1085 :: 		}else if(X_Value<0 && Y_Value<0){
	GOTO       L_Read_Compass326
L_Read_Compass325:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass832
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass832
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass832
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass832:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass329
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass833
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass833
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass833
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass833:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass329
L__Read_Compass577:
;Final_code_2.c,1087 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Read_Compass+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Read_Compass+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Read_Compass+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Read_Compass+3
	MOVF       _X_Value+0, 0
	MOVWF      R0+0
	MOVF       _X_Value+1, 0
	MOVWF      R0+1
	MOVF       _X_Value+2, 0
	MOVWF      R0+2
	MOVF       _X_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Read_Compass+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Read_Compass+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Read_Compass+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Read_Compass+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_atan_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_atan_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_atan_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_atan_f+3
	CALL       _atan+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1088 :: 		angle=angle*((180)/(3.14159265));
	MOVLW      224
	MOVWF      R4+0
	MOVLW      46
	MOVWF      R4+1
	MOVLW      101
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1089 :: 		angle=angle+180;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      52
	MOVWF      R4+2
	MOVLW      134
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1093 :: 		}else if(X_Value>=0 && Y_Value<0){
	GOTO       L_Read_Compass330
L_Read_Compass329:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass834
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass834
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass834
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass834:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass333
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass835
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass835
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass835
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass835:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass333
L__Read_Compass576:
;Final_code_2.c,1095 :: 		angle=atan(((((double)(-1)*Y_Value)/(double)X_Value)));
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      128
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Read_Compass+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Read_Compass+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Read_Compass+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Read_Compass+3
	MOVF       _X_Value+0, 0
	MOVWF      R0+0
	MOVF       _X_Value+1, 0
	MOVWF      R0+1
	MOVF       _X_Value+2, 0
	MOVWF      R0+2
	MOVF       _X_Value+3, 0
	MOVWF      R0+3
	CALL       _Longint2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Read_Compass+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Read_Compass+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Read_Compass+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Read_Compass+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_atan_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_atan_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_atan_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_atan_f+3
	CALL       _atan+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1096 :: 		angle=angle*((180)/(3.14159265));
	MOVLW      224
	MOVWF      R4+0
	MOVLW      46
	MOVWF      R4+1
	MOVLW      101
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1097 :: 		angle=360-angle;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      135
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _angle+0
	MOVF       R0+1, 0
	MOVWF      _angle+1
	MOVF       R0+2, 0
	MOVWF      _angle+2
	MOVF       R0+3, 0
	MOVWF      _angle+3
;Final_code_2.c,1100 :: 		}
L_Read_Compass333:
L_Read_Compass330:
L_Read_Compass326:
L_Read_Compass322:
;Final_code_2.c,1102 :: 		if(X_value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass836
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass836
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass836
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass836:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass334
;Final_code_2.c,1104 :: 		}else{
	GOTO       L_Read_Compass335
L_Read_Compass334:
;Final_code_2.c,1105 :: 		X_value=(-1)*X_value;
	MOVF       _X_Value+0, 0
	MOVWF      R0+0
	MOVF       _X_Value+1, 0
	MOVWF      R0+1
	MOVF       _X_Value+2, 0
	MOVWF      R0+2
	MOVF       _X_Value+3, 0
	MOVWF      R0+3
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	MOVWF      R4+2
	MOVWF      R4+3
	CALL       _Mul_32x32_U+0
	MOVF       R0+0, 0
	MOVWF      _X_Value+0
	MOVF       R0+1, 0
	MOVWF      _X_Value+1
	MOVF       R0+2, 0
	MOVWF      _X_Value+2
	MOVF       R0+3, 0
	MOVWF      _X_Value+3
;Final_code_2.c,1107 :: 		}
L_Read_Compass335:
;Final_code_2.c,1108 :: 		if(Y_value>=0){
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass837
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass837
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass837
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass837:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass336
;Final_code_2.c,1110 :: 		}else{
	GOTO       L_Read_Compass337
L_Read_Compass336:
;Final_code_2.c,1111 :: 		Y_value=(-1)*Y_value;
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	MOVWF      R4+2
	MOVWF      R4+3
	CALL       _Mul_32x32_U+0
	MOVF       R0+0, 0
	MOVWF      _Y_Value+0
	MOVF       R0+1, 0
	MOVWF      _Y_Value+1
	MOVF       R0+2, 0
	MOVWF      _Y_Value+2
	MOVF       R0+3, 0
	MOVWF      _Y_Value+3
;Final_code_2.c,1113 :: 		}
L_Read_Compass337:
;Final_code_2.c,1114 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Read_Compass338:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass338
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass338
	DECFSZ     R11+0, 1
	GOTO       L_Read_Compass338
	NOP
	NOP
;Final_code_2.c,1115 :: 		}
	RETURN
; end of _Read_Compass

_turnToMiddle:

;Final_code_2.c,1118 :: 		void turnToMiddle(int ang){
;Final_code_2.c,1120 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Final_code_2.c,1121 :: 		if((angle>=0) && (angle<=90))
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle341
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      133
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle341
L__turnToMiddle595:
;Final_code_2.c,1123 :: 		pcs_angle=1;
	MOVLW      1
	MOVWF      turnToMiddle_pcs_angle_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_angle_L0+1
;Final_code_2.c,1124 :: 		}
L_turnToMiddle341:
;Final_code_2.c,1125 :: 		if((angle>90) && (angle<=180))
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      133
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle344
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      134
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle344
L__turnToMiddle594:
;Final_code_2.c,1127 :: 		pcs_angle=2;
	MOVLW      2
	MOVWF      turnToMiddle_pcs_angle_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_angle_L0+1
;Final_code_2.c,1128 :: 		}
L_turnToMiddle344:
;Final_code_2.c,1129 :: 		if((angle>180) && (angle<=270))
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      134
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle347
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      7
	MOVWF      R0+2
	MOVLW      135
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle347
L__turnToMiddle593:
;Final_code_2.c,1131 :: 		pcs_angle=3;
	MOVLW      3
	MOVWF      turnToMiddle_pcs_angle_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_angle_L0+1
;Final_code_2.c,1132 :: 		}
L_turnToMiddle347:
;Final_code_2.c,1133 :: 		if((angle>270) && (angle<=360))
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      7
	MOVWF      R0+2
	MOVLW      135
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle350
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      52
	MOVWF      R0+2
	MOVLW      135
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle350
L__turnToMiddle592:
;Final_code_2.c,1135 :: 		pcs_angle=4;
	MOVLW      4
	MOVWF      turnToMiddle_pcs_angle_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_angle_L0+1
;Final_code_2.c,1136 :: 		}
L_turnToMiddle350:
;Final_code_2.c,1140 :: 		if((ang>=0) && (ang<=90))
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle838
	MOVLW      0
	SUBWF      FARG_turnToMiddle_ang+0, 0
L__turnToMiddle838:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle353
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle839
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      90
L__turnToMiddle839:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle353
L__turnToMiddle591:
;Final_code_2.c,1142 :: 		pcs_ang=1;
	MOVLW      1
	MOVWF      turnToMiddle_pcs_ang_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_ang_L0+1
;Final_code_2.c,1143 :: 		}
L_turnToMiddle353:
;Final_code_2.c,1144 :: 		if((ang>90) && (ang<=180))
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle840
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      90
L__turnToMiddle840:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle356
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle841
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      180
L__turnToMiddle841:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle356
L__turnToMiddle590:
;Final_code_2.c,1146 :: 		pcs_ang=2;
	MOVLW      2
	MOVWF      turnToMiddle_pcs_ang_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_ang_L0+1
;Final_code_2.c,1147 :: 		}
L_turnToMiddle356:
;Final_code_2.c,1148 :: 		if((ang>180) && (ang<=270))
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle842
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      180
L__turnToMiddle842:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle359
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle843
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      14
L__turnToMiddle843:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle359
L__turnToMiddle589:
;Final_code_2.c,1150 :: 		pcs_ang=3;
	MOVLW      3
	MOVWF      turnToMiddle_pcs_ang_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_ang_L0+1
;Final_code_2.c,1151 :: 		}
L_turnToMiddle359:
;Final_code_2.c,1152 :: 		if((ang>270) && (ang<=360))
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle844
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      14
L__turnToMiddle844:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle362
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_turnToMiddle_ang+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle845
	MOVF       FARG_turnToMiddle_ang+0, 0
	SUBLW      104
L__turnToMiddle845:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle362
L__turnToMiddle588:
;Final_code_2.c,1154 :: 		pcs_ang=4;
	MOVLW      4
	MOVWF      turnToMiddle_pcs_ang_L0+0
	MOVLW      0
	MOVWF      turnToMiddle_pcs_ang_L0+1
;Final_code_2.c,1155 :: 		}
L_turnToMiddle362:
;Final_code_2.c,1159 :: 		if((pcs_ang<pcs_angle) ||(pcs_ang==4 && pcs_angle==1))
	MOVLW      128
	XORWF      turnToMiddle_pcs_ang_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_pcs_angle_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle846
	MOVF       turnToMiddle_pcs_angle_L0+0, 0
	SUBWF      turnToMiddle_pcs_ang_L0+0, 0
L__turnToMiddle846:
	BTFSS      STATUS+0, 0
	GOTO       L__turnToMiddle586
	MOVLW      0
	XORWF      turnToMiddle_pcs_ang_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle847
	MOVLW      4
	XORWF      turnToMiddle_pcs_ang_L0+0, 0
L__turnToMiddle847:
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle587
	MOVLW      0
	XORWF      turnToMiddle_pcs_angle_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle848
	MOVLW      1
	XORWF      turnToMiddle_pcs_angle_L0+0, 0
L__turnToMiddle848:
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle587
	GOTO       L__turnToMiddle586
L__turnToMiddle587:
	GOTO       L_turnToMiddle367
L__turnToMiddle586:
;Final_code_2.c,1161 :: 		while(1){
L_turnToMiddle368:
;Final_code_2.c,1162 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Final_code_2.c,1163 :: 		dif=angle-ang;
	MOVF       FARG_turnToMiddle_ang+0, 0
	MOVWF      R0+0
	MOVF       FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1164 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle849
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle849:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle370
;Final_code_2.c,1165 :: 		dif=dif*(-1);
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1166 :: 		}
L_turnToMiddle370:
;Final_code_2.c,1167 :: 		duty=190+(dif*30)/360;
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      30
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      104
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      190
	MOVWF      turnToMiddle_duty_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      turnToMiddle_duty_L0+1
;Final_code_2.c,1168 :: 		leftHardT();
	CALL       _leftHardT+0
;Final_code_2.c,1169 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1170 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1171 :: 		if(dif>=0 && dif<=20){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle850
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle850:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle373
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle851
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      20
L__turnToMiddle851:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle373
L__turnToMiddle585:
;Final_code_2.c,1172 :: 		break;
	GOTO       L_turnToMiddle369
;Final_code_2.c,1173 :: 		}
L_turnToMiddle373:
;Final_code_2.c,1175 :: 		}
	GOTO       L_turnToMiddle368
L_turnToMiddle369:
;Final_code_2.c,1176 :: 		}
	GOTO       L_turnToMiddle374
L_turnToMiddle367:
;Final_code_2.c,1177 :: 		else if((pcs_ang>pcs_angle) ||(pcs_ang==1 && pcs_angle==4))
	MOVLW      128
	XORWF      turnToMiddle_pcs_angle_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_pcs_ang_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle852
	MOVF       turnToMiddle_pcs_ang_L0+0, 0
	SUBWF      turnToMiddle_pcs_angle_L0+0, 0
L__turnToMiddle852:
	BTFSS      STATUS+0, 0
	GOTO       L__turnToMiddle583
	MOVLW      0
	XORWF      turnToMiddle_pcs_ang_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle853
	MOVLW      1
	XORWF      turnToMiddle_pcs_ang_L0+0, 0
L__turnToMiddle853:
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle584
	MOVLW      0
	XORWF      turnToMiddle_pcs_angle_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle854
	MOVLW      4
	XORWF      turnToMiddle_pcs_angle_L0+0, 0
L__turnToMiddle854:
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle584
	GOTO       L__turnToMiddle583
L__turnToMiddle584:
	GOTO       L_turnToMiddle379
L__turnToMiddle583:
;Final_code_2.c,1179 :: 		while(1){
L_turnToMiddle380:
;Final_code_2.c,1180 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Final_code_2.c,1181 :: 		dif=angle-ang;
	MOVF       FARG_turnToMiddle_ang+0, 0
	MOVWF      R0+0
	MOVF       FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1182 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle855
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle855:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle382
;Final_code_2.c,1183 :: 		dif=dif*(-1);
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1184 :: 		}
L_turnToMiddle382:
;Final_code_2.c,1185 :: 		duty=190+(dif*30)/360;
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      30
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      104
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      190
	MOVWF      turnToMiddle_duty_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      turnToMiddle_duty_L0+1
;Final_code_2.c,1186 :: 		rightHardT();
	CALL       _rightHardT+0
;Final_code_2.c,1187 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1188 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1189 :: 		if(dif>=0 && dif<=20){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle856
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle856:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle385
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle857
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      20
L__turnToMiddle857:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle385
L__turnToMiddle582:
;Final_code_2.c,1190 :: 		break;
	GOTO       L_turnToMiddle381
;Final_code_2.c,1191 :: 		}
L_turnToMiddle385:
;Final_code_2.c,1197 :: 		}
	GOTO       L_turnToMiddle380
L_turnToMiddle381:
;Final_code_2.c,1198 :: 		}
	GOTO       L_turnToMiddle386
L_turnToMiddle379:
;Final_code_2.c,1203 :: 		if(ang>angle)
	MOVF       FARG_turnToMiddle_ang+0, 0
	MOVWF      R0+0
	MOVF       FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_turnToMiddle387
;Final_code_2.c,1205 :: 		while(1){
L_turnToMiddle388:
;Final_code_2.c,1206 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Final_code_2.c,1207 :: 		dif=angle-ang;
	MOVF       FARG_turnToMiddle_ang+0, 0
	MOVWF      R0+0
	MOVF       FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1208 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle858
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle858:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle390
;Final_code_2.c,1209 :: 		dif=dif*(-1);
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1210 :: 		}
L_turnToMiddle390:
;Final_code_2.c,1211 :: 		duty=190+(dif*30)/360;
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      30
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      104
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      190
	MOVWF      turnToMiddle_duty_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      turnToMiddle_duty_L0+1
;Final_code_2.c,1212 :: 		rightHardT();
	CALL       _rightHardT+0
;Final_code_2.c,1213 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1214 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1215 :: 		if(dif>=0 && dif<=20){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle859
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle859:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle393
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle860
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      20
L__turnToMiddle860:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle393
L__turnToMiddle581:
;Final_code_2.c,1216 :: 		break;
	GOTO       L_turnToMiddle389
;Final_code_2.c,1217 :: 		}
L_turnToMiddle393:
;Final_code_2.c,1223 :: 		}
	GOTO       L_turnToMiddle388
L_turnToMiddle389:
;Final_code_2.c,1226 :: 		}
	GOTO       L_turnToMiddle394
L_turnToMiddle387:
;Final_code_2.c,1230 :: 		while(1){
L_turnToMiddle395:
;Final_code_2.c,1231 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Final_code_2.c,1232 :: 		dif=angle-ang;
	MOVF       FARG_turnToMiddle_ang+0, 0
	MOVWF      R0+0
	MOVF       FARG_turnToMiddle_ang+1, 0
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1233 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle861
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle861:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle397
;Final_code_2.c,1234 :: 		dif=dif*(-1);
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      turnToMiddle_dif_L0+0
	MOVF       R0+1, 0
	MOVWF      turnToMiddle_dif_L0+1
;Final_code_2.c,1235 :: 		}
L_turnToMiddle397:
;Final_code_2.c,1236 :: 		duty=190+(dif*30)/360;
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      30
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      104
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      190
	MOVWF      turnToMiddle_duty_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      turnToMiddle_duty_L0+1
;Final_code_2.c,1237 :: 		leftHardT();
	CALL       _leftHardT+0
;Final_code_2.c,1238 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1239 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1240 :: 		if(dif>=0 && dif<=20){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle862
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle862:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle400
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle863
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      20
L__turnToMiddle863:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle400
L__turnToMiddle580:
;Final_code_2.c,1241 :: 		break;
	GOTO       L_turnToMiddle396
;Final_code_2.c,1242 :: 		}
L_turnToMiddle400:
;Final_code_2.c,1248 :: 		}
	GOTO       L_turnToMiddle395
L_turnToMiddle396:
;Final_code_2.c,1251 :: 		}
L_turnToMiddle394:
;Final_code_2.c,1262 :: 		}
L_turnToMiddle386:
L_turnToMiddle374:
;Final_code_2.c,1265 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1266 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_turnToMiddle401:
	DECFSZ     R13+0, 1
	GOTO       L_turnToMiddle401
	DECFSZ     R12+0, 1
	GOTO       L_turnToMiddle401
	DECFSZ     R11+0, 1
	GOTO       L_turnToMiddle401
	NOP
;Final_code_2.c,1268 :: 		}
	RETURN
; end of _turnToMiddle

_avoidObstacles:

;Final_code_2.c,1272 :: 		void avoidObstacles(){
;Final_code_2.c,1273 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1274 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1275 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;Final_code_2.c,1277 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles864
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles864:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles402
;Final_code_2.c,1278 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1279 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1280 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles865
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles865:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles602
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles866
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles866:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles602
	GOTO       L_avoidObstacles405
L__avoidObstacles602:
;Final_code_2.c,1281 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1282 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1283 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1284 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;Final_code_2.c,1285 :: 		while(clockEncoder!=0){
L_avoidObstacles406:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles867
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles867:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles407
;Final_code_2.c,1286 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles868
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles868:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles408
;Final_code_2.c,1287 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,1288 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles409
L_avoidObstacles408:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles869
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles869:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles410
;Final_code_2.c,1289 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,1290 :: 		}
L_avoidObstacles410:
L_avoidObstacles409:
;Final_code_2.c,1291 :: 		}
	GOTO       L_avoidObstacles406
L_avoidObstacles407:
;Final_code_2.c,1292 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1293 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles411:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles411
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles411
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles411
	NOP
;Final_code_2.c,1295 :: 		if(getCompass()>=4){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles870
	MOVLW      4
	SUBWF      R0+0, 0
L__avoidObstacles870:
	BTFSS      STATUS+0, 0
	GOTO       L_avoidObstacles412
;Final_code_2.c,1296 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1297 :: 		}else{
	GOTO       L_avoidObstacles413
L_avoidObstacles412:
;Final_code_2.c,1298 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1299 :: 		}
L_avoidObstacles413:
;Final_code_2.c,1300 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1301 :: 		}else{
	GOTO       L_avoidObstacles414
L_avoidObstacles405:
;Final_code_2.c,1303 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1305 :: 		}
L_avoidObstacles414:
;Final_code_2.c,1306 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles415
L_avoidObstacles402:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles871
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles871:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles416
;Final_code_2.c,1307 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1308 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1310 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,1313 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1314 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1319 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles872
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles872:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles419
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles873
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles873:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles419
L__avoidObstacles601:
;Final_code_2.c,1320 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1321 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;Final_code_2.c,1322 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1323 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;Final_code_2.c,1325 :: 		}
L_avoidObstacles419:
;Final_code_2.c,1326 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles874
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles874:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles422
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles875
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles875:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles422
L__avoidObstacles600:
;Final_code_2.c,1327 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;Final_code_2.c,1328 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles876
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles876:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles423
;Final_code_2.c,1329 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1330 :: 		}else{
	GOTO       L_avoidObstacles424
L_avoidObstacles423:
;Final_code_2.c,1331 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1332 :: 		}
L_avoidObstacles424:
;Final_code_2.c,1333 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1334 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1335 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles425:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles425
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles425
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles425
	NOP
;Final_code_2.c,1336 :: 		while(TMR0_value<15){
L_avoidObstacles426:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles877
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles877:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles427
;Final_code_2.c,1337 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,1338 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;Final_code_2.c,1339 :: 		}
	GOTO       L_avoidObstacles426
L_avoidObstacles427:
;Final_code_2.c,1340 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1341 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles428:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles428
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles428
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles428
	NOP
;Final_code_2.c,1343 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1344 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1345 :: 		}
L_avoidObstacles422:
;Final_code_2.c,1347 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles429
L_avoidObstacles416:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles878
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles878:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles430
;Final_code_2.c,1348 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1349 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1351 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,1354 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1355 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1358 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles879
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles879:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles433
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles880
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles880:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles433
L__avoidObstacles599:
;Final_code_2.c,1359 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1360 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;Final_code_2.c,1361 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1362 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;Final_code_2.c,1363 :: 		}
L_avoidObstacles433:
;Final_code_2.c,1364 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles881
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles881:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles436
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles882
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles882:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles436
L__avoidObstacles598:
;Final_code_2.c,1365 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;Final_code_2.c,1366 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles883
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles883:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles437
;Final_code_2.c,1367 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1368 :: 		}else{
	GOTO       L_avoidObstacles438
L_avoidObstacles437:
;Final_code_2.c,1369 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1370 :: 		}
L_avoidObstacles438:
;Final_code_2.c,1371 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1372 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1373 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles439:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles439
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles439
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles439
	NOP
;Final_code_2.c,1374 :: 		while(TMR0_value<15){
L_avoidObstacles440:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles884
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles884:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles441
;Final_code_2.c,1375 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,1376 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;Final_code_2.c,1377 :: 		}
	GOTO       L_avoidObstacles440
L_avoidObstacles441:
;Final_code_2.c,1379 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1380 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1381 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles442:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles442
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles442
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles442
	NOP
;Final_code_2.c,1382 :: 		}
L_avoidObstacles436:
;Final_code_2.c,1384 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles443
L_avoidObstacles430:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles885
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles885:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles444
;Final_code_2.c,1386 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles886
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles886:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles445
;Final_code_2.c,1387 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1388 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;Final_code_2.c,1389 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;Final_code_2.c,1390 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;Final_code_2.c,1391 :: 		}
L_avoidObstacles445:
;Final_code_2.c,1392 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;Final_code_2.c,1393 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles446
L_avoidObstacles444:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles887
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles887:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles447
;Final_code_2.c,1394 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,1395 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1396 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1398 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles888
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles888:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles450
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles889
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles889:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles450
L__avoidObstacles597:
;Final_code_2.c,1399 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1400 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;Final_code_2.c,1401 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1402 :: 		}
L_avoidObstacles450:
;Final_code_2.c,1403 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles451
L_avoidObstacles447:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles890
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles890:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles452
;Final_code_2.c,1404 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1405 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1406 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1408 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles891
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles891:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles596
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles892
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles892:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles596
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles893
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles893:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles596
	GOTO       L_avoidObstacles455
L__avoidObstacles596:
;Final_code_2.c,1409 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1410 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;Final_code_2.c,1411 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;Final_code_2.c,1412 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;Final_code_2.c,1413 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;Final_code_2.c,1414 :: 		}
L_avoidObstacles455:
;Final_code_2.c,1416 :: 		}
L_avoidObstacles452:
L_avoidObstacles451:
L_avoidObstacles446:
L_avoidObstacles443:
L_avoidObstacles429:
L_avoidObstacles415:
;Final_code_2.c,1427 :: 		}
	RETURN
; end of _avoidObstacles

_avoidObstacles2:

;Final_code_2.c,1429 :: 		void avoidObstacles2(){
;Final_code_2.c,1430 :: 		if(stat2==0){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2894
	MOVLW      0
	XORWF      _stat2+0, 0
L__avoidObstacles2894:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2456
;Final_code_2.c,1431 :: 		moveF();
	CALL       _moveF+0
;Final_code_2.c,1432 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1433 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1434 :: 		if(counter2<250||counter3<250){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2895
	MOVLW      250
	SUBWF      _counter2+0, 0
L__avoidObstacles2895:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2605
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2896
	MOVLW      250
	SUBWF      _counter3+0, 0
L__avoidObstacles2896:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2605
	GOTO       L_avoidObstacles2459
L__avoidObstacles2605:
;Final_code_2.c,1435 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1436 :: 		stat2=1;
	MOVLW      1
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;Final_code_2.c,1437 :: 		}
L_avoidObstacles2459:
;Final_code_2.c,1439 :: 		}else if(stat2==1){
	GOTO       L_avoidObstacles2460
L_avoidObstacles2456:
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2897
	MOVLW      1
	XORWF      _stat2+0, 0
L__avoidObstacles2897:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2461
;Final_code_2.c,1440 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1441 :: 		getDis3();
	CALL       _getDis3+0
;Final_code_2.c,1442 :: 		if(mem==0){
	MOVLW      0
	XORWF      _mem+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2898
	MOVLW      0
	XORWF      _mem+0, 0
L__avoidObstacles2898:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2462
;Final_code_2.c,1444 :: 		rotateLeft();
	CALL       _rotateLeft+0
;Final_code_2.c,1445 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2899
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles2899:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2465
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2900
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles2900:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2465
L__avoidObstacles2604:
;Final_code_2.c,1446 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1447 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;Final_code_2.c,1448 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;Final_code_2.c,1449 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;Final_code_2.c,1450 :: 		}
L_avoidObstacles2465:
;Final_code_2.c,1451 :: 		}else{
	GOTO       L_avoidObstacles2466
L_avoidObstacles2462:
;Final_code_2.c,1452 :: 		rotateRight();
	CALL       _rotateRight+0
;Final_code_2.c,1453 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2901
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles2901:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2469
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2902
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles2902:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2469
L__avoidObstacles2603:
;Final_code_2.c,1454 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1455 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;Final_code_2.c,1456 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;Final_code_2.c,1457 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;Final_code_2.c,1458 :: 		}
L_avoidObstacles2469:
;Final_code_2.c,1460 :: 		}
L_avoidObstacles2466:
;Final_code_2.c,1461 :: 		}
L_avoidObstacles2461:
L_avoidObstacles2460:
;Final_code_2.c,1462 :: 		}
	RETURN
; end of _avoidObstacles2

_speedChange_test:

;Final_code_2.c,1464 :: 		void speedChange_test(){
;Final_code_2.c,1465 :: 		speed=210;
	MOVLW      210
	MOVWF      _speed+0
	CLRF       _speed+1
;Final_code_2.c,1466 :: 		speed1= 190;
	MOVLW      190
	MOVWF      _speed1+0
	CLRF       _speed1+1
;Final_code_2.c,1467 :: 		speed2=205;
	MOVLW      205
	MOVWF      _speed2+0
	CLRF       _speed2+1
;Final_code_2.c,1468 :: 		speed3=195;
	MOVLW      195
	MOVWF      _speed3+0
	CLRF       _speed3+1
;Final_code_2.c,1471 :: 		}
	RETURN
; end of _speedChange_test

_search_arrow:

;Final_code_2.c,1475 :: 		int search_arrow(){
;Final_code_2.c,1476 :: 		int state=0;
	CLRF       search_arrow_state_L0+0
	CLRF       search_arrow_state_L0+1
;Final_code_2.c,1477 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1478 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1480 :: 		do{
L_search_arrow470:
;Final_code_2.c,1481 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1482 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1483 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1484 :: 		}while(value!=0);
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow903
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow903:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow470
;Final_code_2.c,1486 :: 		while(value==0){
L_search_arrow473:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow904
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow904:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow474
;Final_code_2.c,1488 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1489 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1490 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1491 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1492 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1493 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow475:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow905
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow905:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow476
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow906
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow906:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow476
L__search_arrow613:
;Final_code_2.c,1494 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1495 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1496 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1497 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1498 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,1499 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow907
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow907:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow479
;Final_code_2.c,1500 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1501 :: 		break;
	GOTO       L_search_arrow476
;Final_code_2.c,1502 :: 		}
L_search_arrow479:
;Final_code_2.c,1503 :: 		}
	GOTO       L_search_arrow475
L_search_arrow476:
;Final_code_2.c,1504 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow908
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow908:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow480
;Final_code_2.c,1505 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1506 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow481:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow481
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow481
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow481
	NOP
	NOP
;Final_code_2.c,1507 :: 		}
L_search_arrow480:
;Final_code_2.c,1508 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1509 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow482:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow909
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow909:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow483
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow910
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow910:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow483
L__search_arrow612:
;Final_code_2.c,1510 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1511 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1512 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1513 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1514 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1515 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow911
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow911:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow486
;Final_code_2.c,1516 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1517 :: 		break;
	GOTO       L_search_arrow483
;Final_code_2.c,1518 :: 		}
L_search_arrow486:
;Final_code_2.c,1519 :: 		}
	GOTO       L_search_arrow482
L_search_arrow483:
;Final_code_2.c,1520 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow912
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow912:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow487
;Final_code_2.c,1521 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1522 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow488:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow488
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow488
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow488
	NOP
	NOP
;Final_code_2.c,1523 :: 		}
L_search_arrow487:
;Final_code_2.c,1525 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1526 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow489:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow913
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow913:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow490
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow914
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow914:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow490
L__search_arrow611:
;Final_code_2.c,1527 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1528 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1529 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1530 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1531 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,1532 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow915
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow915:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow493
;Final_code_2.c,1533 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1534 :: 		break;
	GOTO       L_search_arrow490
;Final_code_2.c,1535 :: 		}
L_search_arrow493:
;Final_code_2.c,1536 :: 		}
	GOTO       L_search_arrow489
L_search_arrow490:
;Final_code_2.c,1537 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow916
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow916:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow494
;Final_code_2.c,1538 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1539 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow495:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow495
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow495
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow495
	NOP
	NOP
;Final_code_2.c,1540 :: 		}
L_search_arrow494:
;Final_code_2.c,1542 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1543 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow496:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow917
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow917:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow497
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow918
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow918:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow497
L__search_arrow610:
;Final_code_2.c,1544 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1545 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1546 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1547 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1548 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1549 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow919
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow919:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow500
;Final_code_2.c,1550 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1551 :: 		break;
	GOTO       L_search_arrow497
;Final_code_2.c,1552 :: 		}
L_search_arrow500:
;Final_code_2.c,1553 :: 		}
	GOTO       L_search_arrow496
L_search_arrow497:
;Final_code_2.c,1554 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow920
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow920:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow501
;Final_code_2.c,1555 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1556 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow502:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow502
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow502
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow502
	NOP
	NOP
;Final_code_2.c,1557 :: 		}
L_search_arrow501:
;Final_code_2.c,1559 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1560 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow503:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow921
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow921:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow504
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow922
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow922:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow504
L__search_arrow609:
;Final_code_2.c,1561 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1562 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1563 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1564 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1565 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;Final_code_2.c,1566 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow923
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow923:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow507
;Final_code_2.c,1567 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1568 :: 		break;
	GOTO       L_search_arrow504
;Final_code_2.c,1569 :: 		}
L_search_arrow507:
;Final_code_2.c,1570 :: 		}
	GOTO       L_search_arrow503
L_search_arrow504:
;Final_code_2.c,1571 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow924
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow924:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow508
;Final_code_2.c,1572 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1573 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow509:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow509
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow509
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow509
	NOP
	NOP
;Final_code_2.c,1574 :: 		}
L_search_arrow508:
;Final_code_2.c,1576 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1577 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow510:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow925
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow925:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow511
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow926
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow926:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow511
L__search_arrow608:
;Final_code_2.c,1578 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1579 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1580 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1581 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1582 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1583 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow927
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow927:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow514
;Final_code_2.c,1584 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1585 :: 		break;
	GOTO       L_search_arrow511
;Final_code_2.c,1586 :: 		}
L_search_arrow514:
;Final_code_2.c,1587 :: 		}
	GOTO       L_search_arrow510
L_search_arrow511:
;Final_code_2.c,1588 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow928
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow928:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow515
;Final_code_2.c,1589 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1590 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow516:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow516
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow516
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow516
	NOP
	NOP
;Final_code_2.c,1591 :: 		}
L_search_arrow515:
;Final_code_2.c,1593 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1594 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow517:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow929
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow929:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow518
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow930
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow930:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow518
L__search_arrow607:
;Final_code_2.c,1595 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1596 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1597 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1598 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1599 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;Final_code_2.c,1600 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow931
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow931:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow521
;Final_code_2.c,1601 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1602 :: 		break;
	GOTO       L_search_arrow518
;Final_code_2.c,1603 :: 		}
L_search_arrow521:
;Final_code_2.c,1604 :: 		}
	GOTO       L_search_arrow517
L_search_arrow518:
;Final_code_2.c,1605 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow932
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow932:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow522
;Final_code_2.c,1606 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1607 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow523:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow523
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow523
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow523
	NOP
	NOP
;Final_code_2.c,1608 :: 		}
L_search_arrow522:
;Final_code_2.c,1610 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1611 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow524:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow933
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow933:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow525
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow934
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow934:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow525
L__search_arrow606:
;Final_code_2.c,1612 :: 		sensorRead();
	CALL       _sensorRead+0
;Final_code_2.c,1613 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;Final_code_2.c,1614 :: 		getDis1();
	CALL       _getDis1+0
;Final_code_2.c,1615 :: 		getDis2();
	CALL       _getDis2+0
;Final_code_2.c,1616 :: 		goStraight();
	CALL       _goStraight+0
;Final_code_2.c,1617 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow935
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow935:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow528
;Final_code_2.c,1618 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;Final_code_2.c,1619 :: 		break;
	GOTO       L_search_arrow525
;Final_code_2.c,1620 :: 		}
L_search_arrow528:
;Final_code_2.c,1621 :: 		}
	GOTO       L_search_arrow524
L_search_arrow525:
;Final_code_2.c,1622 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow936
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow936:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow529
;Final_code_2.c,1623 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1624 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow530:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow530
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow530
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow530
	NOP
	NOP
;Final_code_2.c,1625 :: 		}
L_search_arrow529:
;Final_code_2.c,1627 :: 		if(state==1){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow937
	MOVLW      1
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow937:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow531
;Final_code_2.c,1628 :: 		stopAll();
	CALL       _stopAll+0
;Final_code_2.c,1629 :: 		delay_ms(5000);
	MOVLW      127
	MOVWF      R11+0
	MOVLW      212
	MOVWF      R12+0
	MOVLW      49
	MOVWF      R13+0
L_search_arrow532:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow532
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow532
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow532
	NOP
	NOP
;Final_code_2.c,1630 :: 		search_arr=1;
	MOVLW      1
	MOVWF      _search_arr+0
	MOVLW      0
	MOVWF      _search_arr+1
;Final_code_2.c,1631 :: 		break;
	GOTO       L_search_arrow474
;Final_code_2.c,1632 :: 		}
L_search_arrow531:
;Final_code_2.c,1635 :: 		}
	GOTO       L_search_arrow473
L_search_arrow474:
;Final_code_2.c,1638 :: 		}
	RETURN
; end of _search_arrow

_main:

;Final_code_2.c,1645 :: 		void main() {
;Final_code_2.c,1646 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;Final_code_2.c,1647 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;Final_code_2.c,1648 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;Final_code_2.c,1649 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;Final_code_2.c,1653 :: 		init_timer();
	CALL       _init_timer+0
;Final_code_2.c,1654 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;Final_code_2.c,1655 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;Final_code_2.c,1657 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Final_code_2.c,1658 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;Final_code_2.c,1659 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Final_code_2.c,1660 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;Final_code_2.c,1661 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;Final_code_2.c,1662 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;Final_code_2.c,1663 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;Final_code_2.c,1664 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;Final_code_2.c,1666 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;Final_code_2.c,1667 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;Final_code_2.c,1668 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;Final_code_2.c,1669 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;Final_code_2.c,1670 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;Final_code_2.c,1671 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;Final_code_2.c,1672 :: 		TRISC.F4=1;
	BSF        TRISC+0, 4
;Final_code_2.c,1673 :: 		I2C1_Init(100000);
	MOVLW      50
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;Final_code_2.c,1674 :: 		initEncoder();
	CALL       _initEncoder+0
;Final_code_2.c,1676 :: 		speedChange_test();
	CALL       _speedChange_test+0
;Final_code_2.c,1677 :: 		while(1){
L_main533:
;Final_code_2.c,1697 :: 		search_arrow();
	CALL       _search_arrow+0
;Final_code_2.c,1698 :: 		Delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_main535:
	DECFSZ     R13+0, 1
	GOTO       L_main535
	NOP
;Final_code_2.c,1704 :: 		}
	GOTO       L_main533
;Final_code_2.c,1707 :: 		}
	GOTO       $+0
; end of _main
