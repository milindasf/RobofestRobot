
_rotateLeft:

;final_code_1.c,25 :: 		void rotateLeft(){
;final_code_1.c,26 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_1.c,27 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_1.c,28 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,29 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,30 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_1.c,31 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code_1.c,33 :: 		void rotateRight(){
;final_code_1.c,34 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_1.c,35 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_1.c,36 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,37 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_1.c,38 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_1.c,39 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code_1.c,41 :: 		void moveF(){
;final_code_1.c,42 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_1.c,43 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_1.c,44 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,45 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,46 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_1.c,47 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code_1.c,49 :: 		void moveB(){
;final_code_1.c,50 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_1.c,51 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_1.c,52 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,53 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_1.c,54 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_1.c,55 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code_1.c,57 :: 		forward(){
;final_code_1.c,58 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_1.c,59 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_1.c,60 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,61 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,62 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,63 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,64 :: 		}
	RETURN
; end of _forward

_backward:

;final_code_1.c,66 :: 		backward(){
;final_code_1.c,67 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_1.c,68 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_1.c,69 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,70 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_1.c,71 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,72 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,73 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code_1.c,75 :: 		leftHardTurn(){
;final_code_1.c,76 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_1.c,77 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,78 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_1.c,79 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,80 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,81 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,82 :: 		}
	RETURN
; end of _leftHardTurn

_RightHardTurn:

;final_code_1.c,84 :: 		RightHardTurn(){
;final_code_1.c,85 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_1.c,86 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_1.c,87 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_1.c,88 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,89 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,90 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,91 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code_1.c,93 :: 		leftTurn(){
;final_code_1.c,94 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_1.c,95 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,96 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_1.c,97 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,98 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,99 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,100 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code_1.c,102 :: 		RightTurn(){
;final_code_1.c,103 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_1.c,104 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,105 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_1.c,106 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,107 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,108 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,109 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code_1.c,111 :: 		leftSoftTurn(){
;final_code_1.c,112 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_1.c,113 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,114 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_1.c,115 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,116 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,117 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,119 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code_1.c,121 :: 		rightSoftTurn(){
;final_code_1.c,122 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_1.c,123 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,124 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_1.c,125 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,126 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,127 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,128 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code_1.c,130 :: 		stopAll(){
;final_code_1.c,131 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_1.c,132 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,133 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_1.c,134 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,135 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code_1.c,137 :: 		leftT(){
;final_code_1.c,138 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_1.c,139 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,140 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_1.c,141 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_1.c,142 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,143 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,145 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code_1.c,147 :: 		rightT(){
;final_code_1.c,149 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_1.c,150 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_1.c,151 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_1.c,152 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_1.c,153 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,154 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,156 :: 		}
	RETURN
; end of _rightT

_sensorRead:

;final_code_1.c,158 :: 		sensorRead(){
;final_code_1.c,160 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code_1.c,161 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code_1.c,162 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead480
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead480:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code_1.c,163 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code_1.c,164 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code_1.c,165 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_1.c,166 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code_1.c,167 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code_1.c,168 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code_1.c,169 :: 		}
L_sensorRead1:
;final_code_1.c,170 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead481
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead481:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code_1.c,171 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code_1.c,172 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code_1.c,173 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_1.c,174 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code_1.c,175 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code_1.c,176 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code_1.c,177 :: 		}
L_sensorRead3:
;final_code_1.c,178 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead482
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead482:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code_1.c,179 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code_1.c,180 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code_1.c,181 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_1.c,182 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code_1.c,183 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code_1.c,184 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code_1.c,185 :: 		}
L_sensorRead5:
;final_code_1.c,186 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead483
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead483:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code_1.c,187 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code_1.c,188 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code_1.c,189 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_1.c,190 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code_1.c,191 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code_1.c,192 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code_1.c,193 :: 		}
L_sensorRead7:
;final_code_1.c,195 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead484
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead484:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code_1.c,196 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code_1.c,197 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code_1.c,198 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_1.c,199 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code_1.c,200 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code_1.c,201 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code_1.c,202 :: 		}
L_sensorRead9:
;final_code_1.c,203 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead485
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead485:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code_1.c,204 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code_1.c,205 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code_1.c,206 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,207 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code_1.c,208 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code_1.c,209 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code_1.c,210 :: 		}
L_sensorRead11:
;final_code_1.c,212 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead486
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead486:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code_1.c,213 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code_1.c,214 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code_1.c,215 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,216 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code_1.c,217 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code_1.c,218 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code_1.c,219 :: 		}
L_sensorRead13:
;final_code_1.c,220 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead487
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead487:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code_1.c,221 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code_1.c,222 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code_1.c,223 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,224 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code_1.c,225 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code_1.c,226 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code_1.c,227 :: 		}
L_sensorRead15:
;final_code_1.c,228 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead488
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead488:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code_1.c,229 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code_1.c,230 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code_1.c,231 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,232 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code_1.c,233 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code_1.c,234 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code_1.c,235 :: 		}
L_sensorRead17:
;final_code_1.c,236 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead489
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead489:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code_1.c,237 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code_1.c,238 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code_1.c,239 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,240 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code_1.c,241 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code_1.c,242 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code_1.c,243 :: 		}
L_sensorRead19:
;final_code_1.c,244 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead490
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead490:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code_1.c,245 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code_1.c,246 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code_1.c,247 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,248 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code_1.c,249 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code_1.c,250 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code_1.c,251 :: 		}
L_sensorRead21:
;final_code_1.c,252 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead491
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead491:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code_1.c,253 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code_1.c,254 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code_1.c,255 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,256 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code_1.c,257 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code_1.c,258 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code_1.c,259 :: 		}
L_sensorRead23:
;final_code_1.c,260 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead492
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead492:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code_1.c,261 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code_1.c,262 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code_1.c,263 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,264 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code_1.c,265 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code_1.c,266 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code_1.c,267 :: 		}
L_sensorRead25:
;final_code_1.c,268 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead493
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead493:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code_1.c,269 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code_1.c,270 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code_1.c,271 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_1.c,272 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code_1.c,273 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code_1.c,274 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code_1.c,275 :: 		}
L_sensorRead27:
;final_code_1.c,277 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code_1.c,279 :: 		void printToLcd(){
;final_code_1.c,280 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code_1.c,281 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd494
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd494:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code_1.c,285 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code_1.c,288 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code_1.c,290 :: 		int  bin_deci(){
;final_code_1.c,292 :: 		int decimal_value=0;
;final_code_1.c,293 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci495:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci496
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci495
L__bin_deci496:
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
L__bin_deci497:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci498
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci497
L__bin_deci498:
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
L__bin_deci499:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci500
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci499
L__bin_deci500:
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
L__bin_deci501:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci502
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci501
L__bin_deci502:
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
L__bin_deci503:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci504
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci503
L__bin_deci504:
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
;final_code_1.c,296 :: 		return decimal_value;
;final_code_1.c,298 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code_1.c,300 :: 		lineFollow(){
;final_code_1.c,301 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code_1.c,302 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code_1.c,303 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code_1.c,304 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code_1.c,305 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,306 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,307 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow505
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow505:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow446
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow506
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow506:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow446
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow507
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow507:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow446
	GOTO       L_lineFollow33
L__lineFollow446:
;final_code_1.c,309 :: 		forward();
	CALL       _forward+0
;final_code_1.c,311 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code_1.c,312 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow508
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow508:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow445
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow509
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow509:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow445
	GOTO       L_lineFollow37
L__lineFollow445:
;final_code_1.c,313 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code_1.c,314 :: 		turnNo=1;
	MOVLW      1
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,315 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code_1.c,317 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow510
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow510:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow444
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow511
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow511:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow444
	GOTO       L_lineFollow41
L__lineFollow444:
;final_code_1.c,318 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code_1.c,319 :: 		turnNo=2;
	MOVLW      2
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,320 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code_1.c,321 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow512
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow512:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow443
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow513
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow513:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow443
	GOTO       L_lineFollow45
L__lineFollow443:
;final_code_1.c,322 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code_1.c,323 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,324 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code_1.c,325 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow514
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow514:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow442
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow515
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow515:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow442
	GOTO       L_lineFollow49
L__lineFollow442:
;final_code_1.c,326 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_1.c,327 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,328 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code_1.c,329 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow516
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow516:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow441
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow517
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow517:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow441
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow518
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow518:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow441
	GOTO       L_lineFollow53
L__lineFollow441:
;final_code_1.c,330 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,331 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,332 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code_1.c,333 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow519
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow519:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow440
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow520
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow520:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow440
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow521
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow521:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow440
	GOTO       L_lineFollow57
L__lineFollow440:
;final_code_1.c,334 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,335 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,336 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code_1.c,337 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow522
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow522:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow439
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow523
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow523:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow439
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow524
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow524:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow439
	GOTO       L_lineFollow65
L__lineFollow439:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow525
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow525:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow438
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow526
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow526:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow438
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow527
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow527:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow438
	GOTO       L_lineFollow65
L__lineFollow438:
L__lineFollow437:
;final_code_1.c,340 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_1.c,341 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,343 :: 		} else if(((value==56) || (value==48) || (value==24))&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow528
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow528:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow436
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow529
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow529:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow436
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow530
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow530:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow436
	GOTO       L_lineFollow73
L__lineFollow436:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow531
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow531:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow532
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow532:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow435:
L__lineFollow434:
;final_code_1.c,346 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,347 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,349 :: 		}else if(((value==56) || (value==48) || (value==24)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow74
L_lineFollow73:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow533
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow533:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow433
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow534
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow534:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow433
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow535
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow535:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow433
	GOTO       L_lineFollow81
L__lineFollow433:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow536
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow536:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow537
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow537:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow432:
L__lineFollow431:
;final_code_1.c,352 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,353 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,354 :: 		}  else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow538
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow538:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow430
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow539
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow539:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow430
	GOTO       L_lineFollow89
L__lineFollow430:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow540
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow540:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow541
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow541:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow542
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow542:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow429:
L__lineFollow428:
;final_code_1.c,358 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,359 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,364 :: 		}
	GOTO       L_lineFollow90
L_lineFollow89:
;final_code_1.c,365 :: 		else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow543
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow543:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow427
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow544
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow544:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow427
	GOTO       L_lineFollow97
L__lineFollow427:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow545
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow545:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow546
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow546:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow547
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow547:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow426:
L__lineFollow425:
;final_code_1.c,369 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,370 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_1.c,375 :: 		}else if(value==511){
	GOTO       L_lineFollow98
L_lineFollow97:
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow548
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow548:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code_1.c,377 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,379 :: 		}else {
	GOTO       L_lineFollow100
L_lineFollow99:
;final_code_1.c,380 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow549
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow549:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow101
;final_code_1.c,382 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_1.c,383 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow102
L_lineFollow101:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow550
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow550:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow103
;final_code_1.c,385 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_1.c,386 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow104
L_lineFollow103:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow551
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow551:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow105
;final_code_1.c,387 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_1.c,388 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow106
L_lineFollow105:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow552
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow552:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow107
;final_code_1.c,389 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_1.c,390 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow108
L_lineFollow107:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow553
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow553:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow109
;final_code_1.c,391 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,392 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow110
L_lineFollow109:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow554
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow554:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow111
;final_code_1.c,393 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,394 :: 		}
L_lineFollow111:
L_lineFollow110:
L_lineFollow108:
L_lineFollow106:
L_lineFollow104:
L_lineFollow102:
;final_code_1.c,436 :: 		*/
L_lineFollow100:
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
;final_code_1.c,456 :: 		}
	RETURN
; end of _lineFollow

_SemSmallFollow:

;final_code_1.c,458 :: 		void SemSmallFollow(){
;final_code_1.c,459 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,460 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow555
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow555:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow556
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow556:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow557
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow557:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow558
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow558:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow559
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow559:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow114
L__SemSmallFollow458:
;final_code_1.c,461 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,462 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow115
L_SemSmallFollow114:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow560
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow560:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow561
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow561:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow562
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow562:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow563
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow563:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow564
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow564:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow118
L__SemSmallFollow457:
;final_code_1.c,463 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,464 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow119
L_SemSmallFollow118:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow565
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow565:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow566
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow566:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow567
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow567:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow568
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow568:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow569
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow569:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow122
L__SemSmallFollow456:
;final_code_1.c,465 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,466 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow123
L_SemSmallFollow122:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow570
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow570:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow571
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow571:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow572
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow572:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow573
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow573:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow574
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow574:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow126
L__SemSmallFollow455:
;final_code_1.c,467 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,468 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow127
L_SemSmallFollow126:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow575
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow575:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow576
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow576:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow577
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow577:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow578
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow578:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow579
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow579:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow130
L__SemSmallFollow454:
;final_code_1.c,469 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,470 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow131
L_SemSmallFollow130:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow580
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow580:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow581
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow581:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow582
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow582:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow583
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow583:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow584
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow584:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow134
L__SemSmallFollow453:
;final_code_1.c,472 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,473 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow135
L_SemSmallFollow134:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow585
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow585:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow586
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow586:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow587
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow587:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow588
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow588:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow589
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow589:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
L__SemSmallFollow452:
;final_code_1.c,475 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,476 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow139
L_SemSmallFollow138:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow590
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow590:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow591
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow591:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow592
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow592:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow593
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow593:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow594
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow594:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
L__SemSmallFollow451:
;final_code_1.c,478 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,479 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow143
L_SemSmallFollow142:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow595
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow595:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow596
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow596:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow597
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow597:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow598
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow598:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow599
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow599:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
L__SemSmallFollow450:
;final_code_1.c,480 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,481 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow147
L_SemSmallFollow146:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow600
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow600:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow601
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow601:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow602
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow602:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow603
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow603:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow604
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow604:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
L__SemSmallFollow449:
;final_code_1.c,482 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,483 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow151
L_SemSmallFollow150:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow605
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow605:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow606
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow606:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow607
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow607:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow608
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow608:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow609
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow609:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
L__SemSmallFollow448:
;final_code_1.c,485 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,486 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow155
L_SemSmallFollow154:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow610
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow610:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow611
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow611:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow612
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow612:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow613
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow613:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow614
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow614:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
L__SemSmallFollow447:
;final_code_1.c,487 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,488 :: 		}else{
	GOTO       L_SemSmallFollow159
L_SemSmallFollow158:
;final_code_1.c,489 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,490 :: 		}
L_SemSmallFollow159:
L_SemSmallFollow155:
L_SemSmallFollow151:
L_SemSmallFollow147:
L_SemSmallFollow143:
L_SemSmallFollow139:
L_SemSmallFollow135:
L_SemSmallFollow131:
L_SemSmallFollow127:
L_SemSmallFollow123:
L_SemSmallFollow119:
L_SemSmallFollow115:
;final_code_1.c,492 :: 		}
	RETURN
; end of _SemSmallFollow

_encoder:

;final_code_1.c,495 :: 		void encoder(){
;final_code_1.c,496 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder160
;final_code_1.c,497 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code_1.c,499 :: 		}
L_encoder160:
;final_code_1.c,500 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder163
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder615
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder615:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder163
L__encoder460:
;final_code_1.c,501 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code_1.c,502 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code_1.c,503 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder616
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder616:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder164
;final_code_1.c,504 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code_1.c,505 :: 		}else if(rotationMode==2){
	GOTO       L_encoder165
L_encoder164:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder617
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder617:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder166
;final_code_1.c,506 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code_1.c,507 :: 		}
L_encoder166:
L_encoder165:
;final_code_1.c,508 :: 		}
L_encoder163:
;final_code_1.c,510 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder167
;final_code_1.c,511 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code_1.c,512 :: 		}
L_encoder167:
;final_code_1.c,513 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder170
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder618
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder618:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder170
L__encoder459:
;final_code_1.c,514 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code_1.c,515 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code_1.c,516 :: 		}
L_encoder170:
;final_code_1.c,517 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;final_code_1.c,519 :: 		void initEncoder(){
;final_code_1.c,520 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code_1.c,521 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code_1.c,522 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code_1.c,524 :: 		void goStraight(){
;final_code_1.c,526 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code_1.c,527 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code_1.c,528 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,529 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,530 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight619
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight619:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight461
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight620
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight620:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight461
	GOTO       L_goStraight173
L__goStraight461:
;final_code_1.c,531 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,532 :: 		}
L_goStraight173:
;final_code_1.c,533 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,535 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight621
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight621:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight174
;final_code_1.c,537 :: 		if(TMR0_value-TMR1_value>=5){
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
	GOTO       L__goStraight622
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight622:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight175
;final_code_1.c,538 :: 		do{
L_goStraight176:
;final_code_1.c,539 :: 		rightT();
	CALL       _rightT+0
;final_code_1.c,540 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight623
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight623:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight176
;final_code_1.c,541 :: 		}
L_goStraight175:
;final_code_1.c,544 :: 		}else{
	GOTO       L_goStraight179
L_goStraight174:
;final_code_1.c,546 :: 		if(TMR1_value-TMR0_value>=5){
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
	GOTO       L__goStraight624
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight624:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight180
;final_code_1.c,547 :: 		do{
L_goStraight181:
;final_code_1.c,548 :: 		leftT();
	CALL       _leftT+0
;final_code_1.c,549 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight625
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight625:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight181
;final_code_1.c,550 :: 		}
L_goStraight180:
;final_code_1.c,551 :: 		}
L_goStraight179:
;final_code_1.c,552 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;final_code_1.c,555 :: 		void goStraight2(){
;final_code_1.c,556 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,557 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2626
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2626:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2463
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2627
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2627:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2463
	GOTO       L_goStraight2186
L__goStraight2463:
;final_code_1.c,558 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,560 :: 		}
L_goStraight2186:
;final_code_1.c,561 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2628
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2628:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2189
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2629
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2629:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2189
L__goStraight2462:
;final_code_1.c,562 :: 		distCounter= (TMR0_value*200);
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
;final_code_1.c,563 :: 		distCounter = distCounter/TMR1_value;
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
;final_code_1.c,564 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2630
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2630
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2630
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2630:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2190
;final_code_1.c,565 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,566 :: 		}else{
	GOTO       L_goStraight2191
L_goStraight2190:
;final_code_1.c,567 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,568 :: 		}
L_goStraight2191:
;final_code_1.c,570 :: 		distCounter = (TMR1_value*200);
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
;final_code_1.c,571 :: 		distCounter = distCounter/TMR0_value;
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
;final_code_1.c,572 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2631
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2631
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2631
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2631:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2192
;final_code_1.c,573 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,574 :: 		}else{
	GOTO       L_goStraight2193
L_goStraight2192:
;final_code_1.c,575 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,576 :: 		}
L_goStraight2193:
;final_code_1.c,577 :: 		}
L_goStraight2189:
;final_code_1.c,579 :: 		}
	RETURN
; end of _goStraight2

_tuneToMiddle:

;final_code_1.c,581 :: 		int tuneToMiddle(){
;final_code_1.c,582 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,583 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle632
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle632:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle194
;final_code_1.c,585 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,586 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_1.c,587 :: 		}
L_tuneToMiddle194:
;final_code_1.c,588 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle633
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle633:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle196
;final_code_1.c,589 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle634
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle634:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle464
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle635
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle635:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle464
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle636
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle636:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle464
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle637
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle637:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle464
	GOTO       L_tuneToMiddle199
L__tuneToMiddle464:
;final_code_1.c,590 :: 		while(sw[0][4]==0){
L_tuneToMiddle200:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle638
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle638:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle201
;final_code_1.c,591 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,592 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle639
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle639:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle202
;final_code_1.c,594 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,595 :: 		}else{
	GOTO       L_tuneToMiddle203
L_tuneToMiddle202:
;final_code_1.c,596 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,597 :: 		}
L_tuneToMiddle203:
;final_code_1.c,598 :: 		}
	GOTO       L_tuneToMiddle200
L_tuneToMiddle201:
;final_code_1.c,599 :: 		}
	GOTO       L_tuneToMiddle204
L_tuneToMiddle199:
;final_code_1.c,601 :: 		while(sw[0][4]==0){
L_tuneToMiddle205:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle640
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle640:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle206
;final_code_1.c,602 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,603 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle641
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle641:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle207
;final_code_1.c,605 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,606 :: 		}else{
	GOTO       L_tuneToMiddle208
L_tuneToMiddle207:
;final_code_1.c,607 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,608 :: 		}
L_tuneToMiddle208:
;final_code_1.c,609 :: 		}
	GOTO       L_tuneToMiddle205
L_tuneToMiddle206:
;final_code_1.c,610 :: 		}
L_tuneToMiddle204:
;final_code_1.c,611 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_1.c,612 :: 		}
L_tuneToMiddle196:
;final_code_1.c,614 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code_1.c,616 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code_1.c,619 :: 		void printClockEncoders(){
;final_code_1.c,620 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders642
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders642:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders210
;final_code_1.c,624 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders211
L_printClockEncoders210:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders643
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders643:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders212
;final_code_1.c,628 :: 		}
L_printClockEncoders212:
L_printClockEncoders211:
;final_code_1.c,630 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code_1.c,633 :: 		int getFrontDecimal(){
;final_code_1.c,634 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,636 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal644:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal645
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal644
L__getFrontDecimal645:
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
L__getFrontDecimal646:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal647
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal646
L__getFrontDecimal647:
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
L__getFrontDecimal648:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal649
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal648
L__getFrontDecimal649:
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
L__getFrontDecimal650:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal651
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal650
L__getFrontDecimal651:
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
L__getFrontDecimal652:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal653
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal652
L__getFrontDecimal653:
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
;final_code_1.c,637 :: 		return val;
;final_code_1.c,638 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code_1.c,639 :: 		int getBackDecimal(){
;final_code_1.c,640 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,641 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal654:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal655
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal654
L__getBackDecimal655:
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
L__getBackDecimal656:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal657
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal656
L__getBackDecimal657:
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
;final_code_1.c,642 :: 		return val;
;final_code_1.c,643 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code_1.c,644 :: 		void followArrow(){
;final_code_1.c,645 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow658
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow658:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow213
;final_code_1.c,646 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code_1.c,647 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow659
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow659:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow214
;final_code_1.c,648 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,649 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow215:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow215
	DECFSZ     R12+0, 1
	GOTO       L_followArrow215
	DECFSZ     R11+0, 1
	GOTO       L_followArrow215
	NOP
;final_code_1.c,654 :: 		}
L_followArrow214:
;final_code_1.c,655 :: 		} else if(k==1){
	GOTO       L_followArrow216
L_followArrow213:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow660
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow660:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow217
;final_code_1.c,656 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,657 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow661
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow661:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow218
;final_code_1.c,658 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,659 :: 		}else{
	GOTO       L_followArrow219
L_followArrow218:
;final_code_1.c,660 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,661 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow220:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow220
	DECFSZ     R12+0, 1
	GOTO       L_followArrow220
	DECFSZ     R11+0, 1
	GOTO       L_followArrow220
	NOP
;final_code_1.c,662 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,664 :: 		}
L_followArrow219:
;final_code_1.c,665 :: 		}else if(k==2){
	GOTO       L_followArrow221
L_followArrow217:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow662
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow662:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow222
;final_code_1.c,666 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_1.c,667 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow663
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow663:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow223
;final_code_1.c,668 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,669 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,670 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow224:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow224
	DECFSZ     R12+0, 1
	GOTO       L_followArrow224
	DECFSZ     R11+0, 1
	GOTO       L_followArrow224
	NOP
;final_code_1.c,671 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,672 :: 		}
L_followArrow223:
;final_code_1.c,673 :: 		}else if(k==3){
	GOTO       L_followArrow225
L_followArrow222:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow664
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow664:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow226
;final_code_1.c,674 :: 		moveB();
	CALL       _moveB+0
;final_code_1.c,675 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow665
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow665:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow227
;final_code_1.c,678 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,679 :: 		}
L_followArrow227:
;final_code_1.c,681 :: 		}else if(k==4){
	GOTO       L_followArrow228
L_followArrow226:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow666
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow666:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow229
;final_code_1.c,682 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,683 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,684 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow667
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow667:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow230
;final_code_1.c,687 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,688 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,689 :: 		}
L_followArrow230:
;final_code_1.c,691 :: 		}else if(k==5){
	GOTO       L_followArrow231
L_followArrow229:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow668
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow668:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow232
;final_code_1.c,692 :: 		PWM1_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,693 :: 		PWM2_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,694 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_1.c,695 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow669
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow669:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow233
;final_code_1.c,698 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,700 :: 		}
L_followArrow233:
;final_code_1.c,701 :: 		}else if(k==6){
	GOTO       L_followArrow234
L_followArrow232:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow670
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow670:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow235
;final_code_1.c,702 :: 		PWM1_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,703 :: 		PWM2_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,704 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow671
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow671:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow236
;final_code_1.c,705 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,706 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow237
L_followArrow236:
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
	GOTO       L__followArrow672
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow672:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow238
;final_code_1.c,707 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,708 :: 		}else{
	GOTO       L_followArrow239
L_followArrow238:
;final_code_1.c,709 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,710 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow240:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow240
	DECFSZ     R12+0, 1
	GOTO       L_followArrow240
	DECFSZ     R11+0, 1
	GOTO       L_followArrow240
	NOP
;final_code_1.c,711 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_1.c,712 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,713 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,714 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,715 :: 		}
L_followArrow239:
L_followArrow237:
;final_code_1.c,716 :: 		}else if(k==7){
	GOTO       L_followArrow241
L_followArrow235:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow673
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow673:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow242
;final_code_1.c,717 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,718 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,719 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow674
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow674:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow243
;final_code_1.c,720 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,721 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_followArrow244:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow244
	DECFSZ     R12+0, 1
	GOTO       L_followArrow244
	DECFSZ     R11+0, 1
	GOTO       L_followArrow244
	NOP
	NOP
;final_code_1.c,722 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code_1.c,724 :: 		}
L_followArrow243:
;final_code_1.c,726 :: 		}
L_followArrow242:
L_followArrow241:
L_followArrow234:
L_followArrow231:
L_followArrow228:
L_followArrow225:
L_followArrow221:
L_followArrow216:
;final_code_1.c,727 :: 		}
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

;final_code_1.c,729 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code_1.c,730 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt245
;final_code_1.c,731 :: 		encoder();
	CALL       _encoder+0
;final_code_1.c,732 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code_1.c,733 :: 		}
L_interrupt245:
;final_code_1.c,736 :: 		}
L__interrupt675:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code_1.c,739 :: 		void init_timer(){
;final_code_1.c,740 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code_1.c,741 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code_1.c,742 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code_1.c,745 :: 		int pulseIn1(){
;final_code_1.c,746 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_1.c,747 :: 		while(1){
L_pulseIn1246:
;final_code_1.c,748 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_1.c,749 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,750 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1248
	GOTO       L_pulseIn1247
L_pulseIn1248:
;final_code_1.c,751 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1676
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1676:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1249
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1249:
;final_code_1.c,752 :: 		}
	GOTO       L_pulseIn1246
L_pulseIn1247:
;final_code_1.c,753 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_1.c,754 :: 		while(1){
L_pulseIn1250:
;final_code_1.c,755 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_1.c,756 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,757 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1252
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1252:
;final_code_1.c,758 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1677
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1677:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1253
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1253:
;final_code_1.c,759 :: 		}
	GOTO       L_pulseIn1250
;final_code_1.c,761 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code_1.c,763 :: 		int pulseIn2(){
;final_code_1.c,764 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_1.c,765 :: 		while(1){
L_pulseIn2254:
;final_code_1.c,766 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_1.c,767 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,768 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2256
	GOTO       L_pulseIn2255
L_pulseIn2256:
;final_code_1.c,769 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2678
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2678:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2257
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2257:
;final_code_1.c,770 :: 		}
	GOTO       L_pulseIn2254
L_pulseIn2255:
;final_code_1.c,771 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_1.c,772 :: 		while(1){
L_pulseIn2258:
;final_code_1.c,773 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_1.c,774 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,775 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2260
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2260:
;final_code_1.c,776 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2679
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2679:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2261
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2261:
;final_code_1.c,777 :: 		}
	GOTO       L_pulseIn2258
;final_code_1.c,778 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code_1.c,781 :: 		int pulseIn3(){
;final_code_1.c,782 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_1.c,783 :: 		while(1){
L_pulseIn3262:
;final_code_1.c,784 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_1.c,785 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,786 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3264
	GOTO       L_pulseIn3263
L_pulseIn3264:
;final_code_1.c,787 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3680
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3680:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3265
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3265:
;final_code_1.c,788 :: 		}
	GOTO       L_pulseIn3262
L_pulseIn3263:
;final_code_1.c,789 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_1.c,790 :: 		while(1){
L_pulseIn3266:
;final_code_1.c,791 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_1.c,792 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_1.c,793 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3268
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3268:
;final_code_1.c,794 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3681
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3681:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3269
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3269:
;final_code_1.c,795 :: 		}
	GOTO       L_pulseIn3266
;final_code_1.c,796 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code_1.c,799 :: 		int getDis1(){
;final_code_1.c,800 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_1.c,801 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1270:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1270
	NOP
	NOP
;final_code_1.c,802 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_1.c,803 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1271:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1271
	NOP
	NOP
;final_code_1.c,804 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_1.c,805 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_1.c,806 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1272:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1272
	DECFSZ     R12+0, 1
	GOTO       L_getDis1272
	DECFSZ     R11+0, 1
	GOTO       L_getDis1272
	NOP
	NOP
;final_code_1.c,807 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_1.c,809 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code_1.c,811 :: 		int getDis2(){
;final_code_1.c,812 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_1.c,813 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2273:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2273
	NOP
	NOP
;final_code_1.c,814 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_1.c,815 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2274:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2274
	NOP
	NOP
;final_code_1.c,816 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_1.c,817 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_1.c,818 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2275:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2275
	DECFSZ     R12+0, 1
	GOTO       L_getDis2275
	NOP
	NOP
;final_code_1.c,819 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_1.c,821 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code_1.c,823 :: 		int getDis3(){
;final_code_1.c,824 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_1.c,825 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3276:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3276
	NOP
	NOP
;final_code_1.c,826 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code_1.c,827 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3277:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3277
	NOP
	NOP
;final_code_1.c,828 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_1.c,829 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_1.c,830 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3278:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3278
	DECFSZ     R12+0, 1
	GOTO       L_getDis3278
	NOP
	NOP
;final_code_1.c,831 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_1.c,833 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code_1.c,834 :: 		void NidegL(){
;final_code_1.c,835 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,836 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,837 :: 		while(1){
L_NidegL279:
;final_code_1.c,838 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL682
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL682:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL281
;final_code_1.c,839 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,840 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,841 :: 		break;
	GOTO       L_NidegL280
;final_code_1.c,842 :: 		}
L_NidegL281:
;final_code_1.c,843 :: 		}
	GOTO       L_NidegL279
L_NidegL280:
;final_code_1.c,844 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code_1.c,846 :: 		void NidegR(){
;final_code_1.c,847 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,848 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,849 :: 		while(1){
L_NidegR282:
;final_code_1.c,850 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR683
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR683:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR284
;final_code_1.c,851 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,852 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,853 :: 		break;
	GOTO       L_NidegR283
;final_code_1.c,854 :: 		}
L_NidegR284:
;final_code_1.c,855 :: 		}
	GOTO       L_NidegR282
L_NidegR283:
;final_code_1.c,856 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code_1.c,858 :: 		void moFEnc(int count){
;final_code_1.c,859 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,860 :: 		moveF();
	CALL       _moveF+0
;final_code_1.c,861 :: 		while(1){
L_moFEnc285:
;final_code_1.c,862 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc684
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc684:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc287
;final_code_1.c,863 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,864 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,865 :: 		break;
	GOTO       L_moFEnc286
;final_code_1.c,866 :: 		}
L_moFEnc287:
;final_code_1.c,867 :: 		}
	GOTO       L_moFEnc285
L_moFEnc286:
;final_code_1.c,869 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code_1.c,871 :: 		int getCompass(){
;final_code_1.c,872 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;final_code_1.c,873 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;final_code_1.c,875 :: 		void turnToPoint(int pt){
;final_code_1.c,876 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,877 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,878 :: 		if(getCompass()<pt){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint685
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint685:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint288
;final_code_1.c,880 :: 		while(getCompass()<=pt){
L_turnToPoint289:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint686
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint686:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint290
;final_code_1.c,881 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,882 :: 		}
	GOTO       L_turnToPoint289
L_turnToPoint290:
;final_code_1.c,883 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,884 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint291:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint291
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint291
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint291
	NOP
	NOP
;final_code_1.c,885 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,886 :: 		while(getCompass()>=pt){
L_turnToPoint292:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint687
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint687:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint293
;final_code_1.c,887 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,888 :: 		}
	GOTO       L_turnToPoint292
L_turnToPoint293:
;final_code_1.c,889 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,890 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint294:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint294
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint294
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint294
	NOP
	NOP
;final_code_1.c,891 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code_1.c,892 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,893 :: 		while(TMR0_value<compTemp){
L_turnToPoint295:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint688
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint688:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint296
;final_code_1.c,894 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,895 :: 		}
	GOTO       L_turnToPoint295
L_turnToPoint296:
;final_code_1.c,896 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,897 :: 		}else{
	GOTO       L_turnToPoint297
L_turnToPoint288:
;final_code_1.c,898 :: 		while(getCompass()>=pt){
L_turnToPoint298:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint689
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint689:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint299
;final_code_1.c,899 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,900 :: 		}
	GOTO       L_turnToPoint298
L_turnToPoint299:
;final_code_1.c,901 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,902 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint300:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint300
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint300
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint300
	NOP
	NOP
;final_code_1.c,903 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,904 :: 		while(getCompass()<=pt){
L_turnToPoint301:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint690
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint690:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint302
;final_code_1.c,905 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,906 :: 		}
	GOTO       L_turnToPoint301
L_turnToPoint302:
;final_code_1.c,907 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,908 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint303:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint303
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint303
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint303
	NOP
	NOP
;final_code_1.c,909 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code_1.c,910 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,911 :: 		while(TMR0_value<compTemp){
L_turnToPoint304:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint691
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint691:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint305
;final_code_1.c,912 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,913 :: 		}
	GOTO       L_turnToPoint304
L_turnToPoint305:
;final_code_1.c,914 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,916 :: 		}
L_turnToPoint297:
;final_code_1.c,917 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,918 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,919 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,920 :: 		}
	RETURN
; end of _turnToPoint

_avoidObstacles:

;final_code_1.c,923 :: 		void avoidObstacles(){
;final_code_1.c,924 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,925 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,926 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_1.c,928 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles692
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles692:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles306
;final_code_1.c,929 :: 		getDis3();
	CALL       _getDis3+0
;final_code_1.c,930 :: 		getDis2();
	CALL       _getDis2+0
;final_code_1.c,931 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles693
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles693:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles471
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles694
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles694:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles471
	GOTO       L_avoidObstacles309
L__avoidObstacles471:
;final_code_1.c,932 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,933 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,934 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,935 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_1.c,936 :: 		while(clockEncoder!=0){
L_avoidObstacles310:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles695
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles695:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles311
;final_code_1.c,937 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles696
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles696:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles312
;final_code_1.c,938 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,939 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles313
L_avoidObstacles312:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles697
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles697:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles314
;final_code_1.c,940 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,941 :: 		}
L_avoidObstacles314:
L_avoidObstacles313:
;final_code_1.c,942 :: 		}
	GOTO       L_avoidObstacles310
L_avoidObstacles311:
;final_code_1.c,943 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,944 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles315:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles315
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles315
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles315
	NOP
;final_code_1.c,946 :: 		if(getCompass()>=4){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles698
	MOVLW      4
	SUBWF      R0+0, 0
L__avoidObstacles698:
	BTFSS      STATUS+0, 0
	GOTO       L_avoidObstacles316
;final_code_1.c,947 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,948 :: 		}else{
	GOTO       L_avoidObstacles317
L_avoidObstacles316:
;final_code_1.c,949 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,950 :: 		}
L_avoidObstacles317:
;final_code_1.c,951 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,952 :: 		}else{
	GOTO       L_avoidObstacles318
L_avoidObstacles309:
;final_code_1.c,954 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,956 :: 		}
L_avoidObstacles318:
;final_code_1.c,957 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles319
L_avoidObstacles306:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles699
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles699:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles320
;final_code_1.c,958 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,959 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,961 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,964 :: 		getDis3();
	CALL       _getDis3+0
;final_code_1.c,965 :: 		getDis2();
	CALL       _getDis2+0
;final_code_1.c,970 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles700
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles700:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles323
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles701
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles701:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles323
L__avoidObstacles470:
;final_code_1.c,971 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,972 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_1.c,973 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,974 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_1.c,976 :: 		}
L_avoidObstacles323:
;final_code_1.c,977 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles702
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles702:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles326
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles703
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles703:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles326
L__avoidObstacles469:
;final_code_1.c,978 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_1.c,979 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles704
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles704:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles327
;final_code_1.c,980 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,981 :: 		}else{
	GOTO       L_avoidObstacles328
L_avoidObstacles327:
;final_code_1.c,982 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,983 :: 		}
L_avoidObstacles328:
;final_code_1.c,984 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,985 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,986 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles329:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles329
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles329
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles329
	NOP
;final_code_1.c,987 :: 		while(TMR0_value<15){
L_avoidObstacles330:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles705
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles705:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles331
;final_code_1.c,988 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,989 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_1.c,990 :: 		}
	GOTO       L_avoidObstacles330
L_avoidObstacles331:
;final_code_1.c,991 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,992 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles332:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles332
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles332
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles332
	NOP
;final_code_1.c,994 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,995 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,996 :: 		}
L_avoidObstacles326:
;final_code_1.c,998 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles333
L_avoidObstacles320:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles706
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles706:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles334
;final_code_1.c,999 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,1000 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,1002 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,1005 :: 		getDis3();
	CALL       _getDis3+0
;final_code_1.c,1006 :: 		getDis2();
	CALL       _getDis2+0
;final_code_1.c,1009 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles707
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles707:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles337
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles708
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles708:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles337
L__avoidObstacles468:
;final_code_1.c,1010 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1011 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_1.c,1012 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,1013 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_1.c,1014 :: 		}
L_avoidObstacles337:
;final_code_1.c,1015 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles709
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles709:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles340
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles710
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles710:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles340
L__avoidObstacles467:
;final_code_1.c,1016 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_1.c,1017 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles711
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles711:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles341
;final_code_1.c,1018 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,1019 :: 		}else{
	GOTO       L_avoidObstacles342
L_avoidObstacles341:
;final_code_1.c,1020 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,1021 :: 		}
L_avoidObstacles342:
;final_code_1.c,1022 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1023 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1024 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles343:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles343
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles343
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles343
	NOP
;final_code_1.c,1025 :: 		while(TMR0_value<15){
L_avoidObstacles344:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles712
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles712:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles345
;final_code_1.c,1026 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_1.c,1027 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_1.c,1028 :: 		}
	GOTO       L_avoidObstacles344
L_avoidObstacles345:
;final_code_1.c,1030 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1031 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1032 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles346:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles346
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles346
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles346
	NOP
;final_code_1.c,1033 :: 		}
L_avoidObstacles340:
;final_code_1.c,1035 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles347
L_avoidObstacles334:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles713
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles713:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles348
;final_code_1.c,1037 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles714
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles714:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles349
;final_code_1.c,1038 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1039 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_1.c,1040 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_1.c,1041 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_1.c,1042 :: 		}
L_avoidObstacles349:
;final_code_1.c,1043 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_1.c,1044 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles350
L_avoidObstacles348:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles715
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles715:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles351
;final_code_1.c,1045 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_1.c,1046 :: 		getDis3();
	CALL       _getDis3+0
;final_code_1.c,1047 :: 		getDis2();
	CALL       _getDis2+0
;final_code_1.c,1049 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles716
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles716:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles354
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles717
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles717:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles354
L__avoidObstacles466:
;final_code_1.c,1050 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1051 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_1.c,1052 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1053 :: 		}
L_avoidObstacles354:
;final_code_1.c,1054 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles355
L_avoidObstacles351:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles718
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles718:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles356
;final_code_1.c,1055 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1056 :: 		getDis3();
	CALL       _getDis3+0
;final_code_1.c,1057 :: 		getDis2();
	CALL       _getDis2+0
;final_code_1.c,1059 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles719
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles719:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles465
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles720
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles720:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles465
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles721
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles721:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles465
	GOTO       L_avoidObstacles359
L__avoidObstacles465:
;final_code_1.c,1060 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1061 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_1.c,1062 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_1.c,1063 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_1.c,1064 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_1.c,1065 :: 		}
L_avoidObstacles359:
;final_code_1.c,1067 :: 		}
L_avoidObstacles356:
L_avoidObstacles355:
L_avoidObstacles350:
L_avoidObstacles347:
L_avoidObstacles333:
L_avoidObstacles319:
;final_code_1.c,1078 :: 		}
	RETURN
; end of _avoidObstacles

_speedChange_test:

;final_code_1.c,1080 :: 		void speedChange_test(){
;final_code_1.c,1081 :: 		speed=210;
	MOVLW      210
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_1.c,1082 :: 		speed1= 190;
	MOVLW      190
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_1.c,1083 :: 		speed2=205;
	MOVLW      205
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_1.c,1084 :: 		speed3=195;
	MOVLW      195
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_1.c,1087 :: 		}
	RETURN
; end of _speedChange_test

_search_arrow:

;final_code_1.c,1089 :: 		int search_arrow(){
;final_code_1.c,1090 :: 		int state=0;
	CLRF       search_arrow_state_L0+0
	CLRF       search_arrow_state_L0+1
;final_code_1.c,1091 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,1092 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,1094 :: 		do{
L_search_arrow360:
;final_code_1.c,1095 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1096 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1097 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1098 :: 		}while(value!=0);
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow722
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow722:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow360
;final_code_1.c,1100 :: 		while(value==0){
L_search_arrow363:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow723
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow723:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow364
;final_code_1.c,1102 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1103 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1104 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1105 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow365:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow724
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow724:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow366
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow725
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow725:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow366
L__search_arrow479:
;final_code_1.c,1106 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1107 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1108 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,1109 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow726
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow726:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow369
;final_code_1.c,1110 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1111 :: 		break;
	GOTO       L_search_arrow366
;final_code_1.c,1112 :: 		}
L_search_arrow369:
;final_code_1.c,1113 :: 		}
	GOTO       L_search_arrow365
L_search_arrow366:
;final_code_1.c,1114 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow727
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow727:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow370
;final_code_1.c,1115 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1116 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow371:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow371
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow371
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow371
	NOP
	NOP
;final_code_1.c,1117 :: 		}
L_search_arrow370:
;final_code_1.c,1118 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1119 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow372:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow728
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow728:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow373
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow729
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow729:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow373
L__search_arrow478:
;final_code_1.c,1120 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1121 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1122 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1123 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow730
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow730:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow376
;final_code_1.c,1124 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1125 :: 		break;
	GOTO       L_search_arrow373
;final_code_1.c,1126 :: 		}
L_search_arrow376:
;final_code_1.c,1127 :: 		}
	GOTO       L_search_arrow372
L_search_arrow373:
;final_code_1.c,1128 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow731
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow731:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow377
;final_code_1.c,1129 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1130 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow378:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow378
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow378
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow378
	NOP
	NOP
;final_code_1.c,1131 :: 		}
L_search_arrow377:
;final_code_1.c,1133 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1134 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow379:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow732
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow732:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow380
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow733
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow733:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow380
L__search_arrow477:
;final_code_1.c,1135 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1136 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1137 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,1138 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow734
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow734:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow383
;final_code_1.c,1139 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1140 :: 		break;
	GOTO       L_search_arrow380
;final_code_1.c,1141 :: 		}
L_search_arrow383:
;final_code_1.c,1142 :: 		}
	GOTO       L_search_arrow379
L_search_arrow380:
;final_code_1.c,1143 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow735
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow735:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow384
;final_code_1.c,1144 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1145 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow385:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow385
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow385
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow385
	NOP
	NOP
;final_code_1.c,1146 :: 		}
L_search_arrow384:
;final_code_1.c,1148 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1149 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow386:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow736
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow736:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow387
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow737
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow737:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow387
L__search_arrow476:
;final_code_1.c,1150 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1151 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1152 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1153 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow738
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow738:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow390
;final_code_1.c,1154 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1155 :: 		break;
	GOTO       L_search_arrow387
;final_code_1.c,1156 :: 		}
L_search_arrow390:
;final_code_1.c,1157 :: 		}
	GOTO       L_search_arrow386
L_search_arrow387:
;final_code_1.c,1158 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow739
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow739:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow391
;final_code_1.c,1159 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1160 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow392:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow392
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow392
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow392
	NOP
	NOP
;final_code_1.c,1161 :: 		}
L_search_arrow391:
;final_code_1.c,1163 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1164 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow393:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow740
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow740:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow394
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow741
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow741:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow394
L__search_arrow475:
;final_code_1.c,1165 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1166 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1167 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;final_code_1.c,1168 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow742
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow742:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow397
;final_code_1.c,1169 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1170 :: 		break;
	GOTO       L_search_arrow394
;final_code_1.c,1171 :: 		}
L_search_arrow397:
;final_code_1.c,1172 :: 		}
	GOTO       L_search_arrow393
L_search_arrow394:
;final_code_1.c,1173 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow743
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow743:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow398
;final_code_1.c,1174 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1175 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow399:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow399
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow399
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow399
	NOP
	NOP
;final_code_1.c,1176 :: 		}
L_search_arrow398:
;final_code_1.c,1178 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1179 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow400:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow744
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow744:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow401
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow745
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow745:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow401
L__search_arrow474:
;final_code_1.c,1180 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1181 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1182 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1183 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow746
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow746:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow404
;final_code_1.c,1184 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1185 :: 		break;
	GOTO       L_search_arrow401
;final_code_1.c,1186 :: 		}
L_search_arrow404:
;final_code_1.c,1187 :: 		}
	GOTO       L_search_arrow400
L_search_arrow401:
;final_code_1.c,1188 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow747
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow747:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow405
;final_code_1.c,1189 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1190 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow406:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow406
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow406
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow406
	NOP
	NOP
;final_code_1.c,1191 :: 		}
L_search_arrow405:
;final_code_1.c,1193 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1194 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow407:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow748
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow748:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow408
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow749
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow749:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow408
L__search_arrow473:
;final_code_1.c,1195 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1196 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1197 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;final_code_1.c,1198 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow750
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow750:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow411
;final_code_1.c,1199 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1200 :: 		break;
	GOTO       L_search_arrow408
;final_code_1.c,1201 :: 		}
L_search_arrow411:
;final_code_1.c,1202 :: 		}
	GOTO       L_search_arrow407
L_search_arrow408:
;final_code_1.c,1203 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow751
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow751:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow412
;final_code_1.c,1204 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1205 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow413:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow413
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow413
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow413
	NOP
	NOP
;final_code_1.c,1206 :: 		}
L_search_arrow412:
;final_code_1.c,1208 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1209 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow414:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow752
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow752:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow415
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow753
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow753:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow415
L__search_arrow472:
;final_code_1.c,1210 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_1.c,1211 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_1.c,1212 :: 		goStraight();
	CALL       _goStraight+0
;final_code_1.c,1213 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow754
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow754:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow418
;final_code_1.c,1214 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1215 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow419:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow419
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow419
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow419
	NOP
	NOP
;final_code_1.c,1216 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_1.c,1217 :: 		break;
	GOTO       L_search_arrow415
;final_code_1.c,1218 :: 		}
L_search_arrow418:
;final_code_1.c,1219 :: 		}
	GOTO       L_search_arrow414
L_search_arrow415:
;final_code_1.c,1220 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow755
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow755:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow420
;final_code_1.c,1221 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1222 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_search_arrow421:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow421
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow421
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow421
	NOP
	NOP
;final_code_1.c,1223 :: 		}
L_search_arrow420:
;final_code_1.c,1225 :: 		if(state==1){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow756
	MOVLW      1
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow756:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow422
;final_code_1.c,1226 :: 		stopAll();
	CALL       _stopAll+0
;final_code_1.c,1227 :: 		search_arr=1;
	MOVLW      1
	MOVWF      _search_arr+0
	MOVLW      0
	MOVWF      _search_arr+1
;final_code_1.c,1228 :: 		break;
	GOTO       L_search_arrow364
;final_code_1.c,1229 :: 		}
L_search_arrow422:
;final_code_1.c,1232 :: 		}
	GOTO       L_search_arrow363
L_search_arrow364:
;final_code_1.c,1235 :: 		}
	RETURN
; end of _search_arrow

_main:

;final_code_1.c,1238 :: 		void main() {
;final_code_1.c,1239 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code_1.c,1240 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code_1.c,1241 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code_1.c,1242 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_1.c,1246 :: 		init_timer();
	CALL       _init_timer+0
;final_code_1.c,1247 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code_1.c,1248 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code_1.c,1250 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code_1.c,1251 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code_1.c,1252 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_1.c,1253 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_1.c,1254 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code_1.c,1255 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code_1.c,1256 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_1.c,1257 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code_1.c,1259 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code_1.c,1260 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code_1.c,1261 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_1.c,1262 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_1.c,1263 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code_1.c,1264 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_1.c,1265 :: 		speedChange_test();
	CALL       _speedChange_test+0
;final_code_1.c,1266 :: 		while(1){
L_main423:
;final_code_1.c,1269 :: 		search_arrow();
	CALL       _search_arrow+0
;final_code_1.c,1273 :: 		}
	GOTO       L_main423
;final_code_1.c,1276 :: 		}
	GOTO       $+0
; end of _main
