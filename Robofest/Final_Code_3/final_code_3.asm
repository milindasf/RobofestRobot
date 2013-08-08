
_fullSpeed:

;final_code_3.c,24 :: 		void fullSpeed(){
;final_code_3.c,26 :: 		speed =255;
	MOVLW      255
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_3.c,27 :: 		speed1=235;
	MOVLW      235
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_3.c,28 :: 		speed2=250;
	MOVLW      250
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_3.c,29 :: 		speed3=230;     //speed1=225;
	MOVLW      230
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_3.c,33 :: 		}
	RETURN
; end of _fullSpeed

_mediumSpeed:

;final_code_3.c,34 :: 		void mediumSpeed(){
;final_code_3.c,35 :: 		speed =230;
	MOVLW      230
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_3.c,36 :: 		speed1=200;
	MOVLW      200
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_3.c,37 :: 		speed2=225;
	MOVLW      225
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_3.c,38 :: 		speed3=205;     //speed1=225;
	MOVLW      205
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_3.c,39 :: 		}
	RETURN
; end of _mediumSpeed

_arrow_speed:

;final_code_3.c,41 :: 		void arrow_speed(){
;final_code_3.c,42 :: 		speed =170;
	MOVLW      170
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_3.c,43 :: 		speed1=170;
	MOVLW      170
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_3.c,44 :: 		speed2=180;
	MOVLW      180
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_3.c,45 :: 		speed3=180;     //speed1=225;
	MOVLW      180
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_3.c,46 :: 		}
	RETURN
; end of _arrow_speed

_rotateLeft:

;final_code_3.c,49 :: 		void rotateLeft(){
;final_code_3.c,50 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_3.c,51 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_3.c,52 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,53 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,54 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_3.c,55 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code_3.c,57 :: 		void rotateRight(){
;final_code_3.c,58 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_3.c,59 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_3.c,60 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,61 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_3.c,62 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_3.c,63 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code_3.c,65 :: 		void moveF(){
;final_code_3.c,66 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_3.c,67 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_3.c,68 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,69 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,70 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_3.c,71 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code_3.c,73 :: 		void moveB(){
;final_code_3.c,74 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_3.c,75 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_3.c,76 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,77 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_3.c,78 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_3.c,79 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code_3.c,81 :: 		forward(){
;final_code_3.c,82 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_3.c,83 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_3.c,84 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,85 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,86 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,87 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,88 :: 		}
	RETURN
; end of _forward

_backward:

;final_code_3.c,90 :: 		backward(){
;final_code_3.c,91 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_3.c,92 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_3.c,93 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,94 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_3.c,95 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,96 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,97 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code_3.c,99 :: 		leftHardTurn(){
;final_code_3.c,100 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_3.c,101 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,102 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_3.c,103 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,104 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,105 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,106 :: 		}
	RETURN
; end of _leftHardTurn

_leftHardT:

;final_code_3.c,108 :: 		leftHardT(){
;final_code_3.c,109 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_3.c,110 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,111 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_3.c,112 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,113 :: 		}
	RETURN
; end of _leftHardT

_RightHardTurn:

;final_code_3.c,115 :: 		RightHardTurn(){
;final_code_3.c,116 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_3.c,117 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_3.c,118 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_3.c,119 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,120 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,121 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,122 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code_3.c,124 :: 		leftTurn(){
;final_code_3.c,125 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_3.c,126 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,127 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_3.c,128 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,129 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,130 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,131 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code_3.c,133 :: 		RightTurn(){
;final_code_3.c,134 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_3.c,135 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,136 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_3.c,137 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,138 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,139 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,140 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code_3.c,142 :: 		leftSoftTurn(){
;final_code_3.c,143 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_3.c,144 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,145 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_3.c,146 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,147 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,148 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,150 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code_3.c,152 :: 		rightSoftTurn(){
;final_code_3.c,153 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_3.c,154 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,155 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_3.c,156 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,157 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,158 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,159 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code_3.c,161 :: 		stopAll(){
;final_code_3.c,162 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_3.c,163 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,164 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_3.c,165 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,166 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code_3.c,168 :: 		leftT(){
;final_code_3.c,169 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_3.c,170 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,171 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_3.c,172 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_3.c,173 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,174 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,176 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code_3.c,178 :: 		rightT(){
;final_code_3.c,180 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_3.c,181 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_3.c,182 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_3.c,183 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_3.c,184 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,185 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,187 :: 		}
	RETURN
; end of _rightT

_sensorRead:

;final_code_3.c,189 :: 		sensorRead(){
;final_code_3.c,191 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code_3.c,192 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code_3.c,193 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead527
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead527:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code_3.c,194 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code_3.c,195 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code_3.c,196 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_3.c,197 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code_3.c,198 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code_3.c,199 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code_3.c,200 :: 		}
L_sensorRead1:
;final_code_3.c,201 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead528
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead528:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code_3.c,202 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code_3.c,203 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code_3.c,204 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_3.c,205 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code_3.c,206 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code_3.c,207 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code_3.c,208 :: 		}
L_sensorRead3:
;final_code_3.c,209 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead529
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead529:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code_3.c,210 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code_3.c,211 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code_3.c,212 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_3.c,213 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code_3.c,214 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code_3.c,215 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code_3.c,216 :: 		}
L_sensorRead5:
;final_code_3.c,217 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead530
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead530:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code_3.c,218 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code_3.c,219 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code_3.c,220 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_3.c,221 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code_3.c,222 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code_3.c,223 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code_3.c,224 :: 		}
L_sensorRead7:
;final_code_3.c,226 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead531
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead531:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code_3.c,227 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code_3.c,228 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code_3.c,229 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_3.c,230 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code_3.c,231 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code_3.c,232 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code_3.c,233 :: 		}
L_sensorRead9:
;final_code_3.c,234 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead532
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead532:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code_3.c,235 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code_3.c,236 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code_3.c,237 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,238 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code_3.c,239 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code_3.c,240 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code_3.c,241 :: 		}
L_sensorRead11:
;final_code_3.c,243 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead533
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead533:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code_3.c,244 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code_3.c,245 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code_3.c,246 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,247 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code_3.c,248 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code_3.c,249 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code_3.c,250 :: 		}
L_sensorRead13:
;final_code_3.c,251 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead534
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead534:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code_3.c,252 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code_3.c,253 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code_3.c,254 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,255 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code_3.c,256 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code_3.c,257 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code_3.c,258 :: 		}
L_sensorRead15:
;final_code_3.c,259 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead535
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead535:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code_3.c,260 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code_3.c,261 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code_3.c,262 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,263 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code_3.c,264 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code_3.c,265 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code_3.c,266 :: 		}
L_sensorRead17:
;final_code_3.c,267 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead536
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead536:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code_3.c,268 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code_3.c,269 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code_3.c,270 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,271 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code_3.c,272 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code_3.c,273 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code_3.c,274 :: 		}
L_sensorRead19:
;final_code_3.c,275 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead537
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead537:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code_3.c,276 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code_3.c,277 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code_3.c,278 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,279 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code_3.c,280 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code_3.c,281 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code_3.c,282 :: 		}
L_sensorRead21:
;final_code_3.c,283 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead538
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead538:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code_3.c,284 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code_3.c,285 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code_3.c,286 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,287 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code_3.c,288 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code_3.c,289 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code_3.c,290 :: 		}
L_sensorRead23:
;final_code_3.c,291 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead539
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead539:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code_3.c,292 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code_3.c,293 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code_3.c,294 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,295 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code_3.c,296 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code_3.c,297 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code_3.c,298 :: 		}
L_sensorRead25:
;final_code_3.c,299 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead540
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead540:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code_3.c,300 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code_3.c,301 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code_3.c,302 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_3.c,303 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code_3.c,304 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code_3.c,305 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code_3.c,306 :: 		}
L_sensorRead27:
;final_code_3.c,308 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code_3.c,310 :: 		void printToLcd(){
;final_code_3.c,311 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code_3.c,312 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd541
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd541:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code_3.c,316 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code_3.c,319 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code_3.c,321 :: 		int  bin_deci(){
;final_code_3.c,323 :: 		int decimal_value=0;
;final_code_3.c,324 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci542:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci543
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci542
L__bin_deci543:
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
L__bin_deci544:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci545
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci544
L__bin_deci545:
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
L__bin_deci546:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci547
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci546
L__bin_deci547:
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
L__bin_deci548:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci549
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci548
L__bin_deci549:
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
L__bin_deci550:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci551
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci550
L__bin_deci551:
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
;final_code_3.c,327 :: 		return decimal_value;
;final_code_3.c,329 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code_3.c,331 :: 		lineFollow(){
;final_code_3.c,332 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code_3.c,333 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code_3.c,334 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code_3.c,335 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code_3.c,336 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,337 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_3.c,338 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow552
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow552:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow484
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow553
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow553:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow484
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow554
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow554:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow484
	GOTO       L_lineFollow33
L__lineFollow484:
;final_code_3.c,339 :: 		forward();
	CALL       _forward+0
;final_code_3.c,341 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code_3.c,342 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow555
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow555:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow483
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow556
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow556:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow483
	GOTO       L_lineFollow37
L__lineFollow483:
;final_code_3.c,343 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code_3.c,344 :: 		turnNo=1;
	MOVLW      1
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,345 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code_3.c,347 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow557
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow557:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow482
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow558
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow558:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow482
	GOTO       L_lineFollow41
L__lineFollow482:
;final_code_3.c,348 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code_3.c,349 :: 		turnNo=2;
	MOVLW      2
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,350 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code_3.c,351 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow559
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow559:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow481
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow560
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow560:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow481
	GOTO       L_lineFollow45
L__lineFollow481:
;final_code_3.c,352 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code_3.c,353 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,354 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code_3.c,355 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow561
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow561:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow480
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow562
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow562:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow480
	GOTO       L_lineFollow49
L__lineFollow480:
;final_code_3.c,356 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_3.c,357 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,358 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code_3.c,359 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow563
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow563:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow479
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow564
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow564:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow479
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow565
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow565:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow479
	GOTO       L_lineFollow53
L__lineFollow479:
;final_code_3.c,360 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_3.c,361 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,362 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code_3.c,363 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow566
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow566:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow478
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow567
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow567:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow478
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow568
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow568:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow478
	GOTO       L_lineFollow57
L__lineFollow478:
;final_code_3.c,364 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_3.c,365 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,366 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code_3.c,367 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow569
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow569:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow477
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow570
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow570:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow477
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow571
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow571:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow477
	GOTO       L_lineFollow65
L__lineFollow477:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow572
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow572:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow476
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow573
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow573:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow476
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow574
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow574:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow476
	GOTO       L_lineFollow65
L__lineFollow476:
L__lineFollow475:
;final_code_3.c,370 :: 		LeftTurn();
	CALL       _leftTurn+0
;final_code_3.c,371 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,373 :: 		}else if(((value==56) || (value==48) || (value==24)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow575
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow575:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow474
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow576
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow576:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow474
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow577
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow577:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow474
	GOTO       L_lineFollow73
L__lineFollow474:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow578
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow578:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow579
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow579:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow473:
L__lineFollow472:
;final_code_3.c,376 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_3.c,377 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,378 :: 		}else if(((value==56) || (value==48) || (value==24))&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow74
L_lineFollow73:
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow580
	MOVLW      56
	XORWF      _value+0, 0
L__lineFollow580:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow471
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow581
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow581:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow471
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow582
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow582:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow471
	GOTO       L_lineFollow81
L__lineFollow471:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow583
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow583:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow584
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow584:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow470:
L__lineFollow469:
;final_code_3.c,381 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_3.c,382 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,384 :: 		}else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow585
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow585:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow468
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow586
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow586:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow468
	GOTO       L_lineFollow89
L__lineFollow468:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow587
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow587:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow588
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow588:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow589
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow589:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow467:
L__lineFollow466:
;final_code_3.c,388 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_3.c,389 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,394 :: 		}else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow90
L_lineFollow89:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow590
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow590:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow465
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow591
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow591:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow465
	GOTO       L_lineFollow97
L__lineFollow465:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow592
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow592:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow593
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow593:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow594
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow594:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow464:
L__lineFollow463:
;final_code_3.c,398 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_3.c,399 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_3.c,404 :: 		}else {
	GOTO       L_lineFollow98
L_lineFollow97:
;final_code_3.c,405 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow595
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow595:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code_3.c,407 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_3.c,408 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow100
L_lineFollow99:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow596
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow596:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow101
;final_code_3.c,410 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_3.c,411 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow102
L_lineFollow101:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow597
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow597:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow103
;final_code_3.c,412 :: 		LeftTurn();
	CALL       _leftTurn+0
;final_code_3.c,413 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow104
L_lineFollow103:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow598
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow598:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow105
;final_code_3.c,414 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_3.c,415 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow106
L_lineFollow105:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow599
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow599:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow107
;final_code_3.c,416 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_3.c,417 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow108
L_lineFollow107:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow600
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow600:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow109
;final_code_3.c,418 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_3.c,419 :: 		}
L_lineFollow109:
L_lineFollow108:
L_lineFollow106:
L_lineFollow104:
L_lineFollow102:
L_lineFollow100:
;final_code_3.c,461 :: 		*/
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
;final_code_3.c,481 :: 		}
	RETURN
; end of _lineFollow

_SemSmallFollow:

;final_code_3.c,483 :: 		void SemSmallFollow(){
;final_code_3.c,484 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,485 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow601
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow601:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow112
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow602
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow602:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow112
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow603
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow603:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow112
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow604
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow604:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow112
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow605
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow605:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow112
L__SemSmallFollow499:
;final_code_3.c,486 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,487 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow113
L_SemSmallFollow112:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow606
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow606:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow116
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow607
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow607:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow116
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow608
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow608:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow116
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow609
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow609:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow116
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow610
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow610:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow116
L__SemSmallFollow498:
;final_code_3.c,488 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,489 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow117
L_SemSmallFollow116:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow611
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow611:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow120
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow612
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow612:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow120
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow613
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow613:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow120
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow614
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow614:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow120
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow615
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow615:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow120
L__SemSmallFollow497:
;final_code_3.c,490 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,492 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow121
L_SemSmallFollow120:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow616
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow616:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow124
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow617
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow617:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow124
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow618
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow618:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow124
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow619
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow619:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow124
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow620
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow620:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow124
L__SemSmallFollow496:
;final_code_3.c,493 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,494 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow125
L_SemSmallFollow124:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow621
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow621:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow128
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow622
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow622:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow128
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow623
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow623:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow128
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow624
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow624:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow128
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow625
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow625:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow128
L__SemSmallFollow495:
;final_code_3.c,495 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,496 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow129
L_SemSmallFollow128:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow626
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow626:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow132
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow627
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow627:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow132
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow628
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow628:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow132
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow629
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow629:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow132
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow630
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow630:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow132
L__SemSmallFollow494:
;final_code_3.c,497 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,498 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow133
L_SemSmallFollow132:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow631
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow631:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow136
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow632
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow632:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow136
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow633
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow633:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow136
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow634
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow634:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow136
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow635
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow635:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow136
L__SemSmallFollow493:
;final_code_3.c,500 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,501 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow137
L_SemSmallFollow136:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow636
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow636:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow140
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow637
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow637:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow140
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow638
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow638:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow140
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow639
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow639:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow140
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow640
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow640:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow140
L__SemSmallFollow492:
;final_code_3.c,503 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,504 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow141
L_SemSmallFollow140:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow641
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow641:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow144
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow642
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow642:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow144
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow643
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow643:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow144
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow644
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow644:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow144
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow645
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow645:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow144
L__SemSmallFollow491:
;final_code_3.c,506 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,508 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow145
L_SemSmallFollow144:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow646
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow646:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow148
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow647
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow647:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow148
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow648
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow648:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow148
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow649
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow649:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow148
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow650
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow650:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow148
L__SemSmallFollow490:
;final_code_3.c,510 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,511 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow149
L_SemSmallFollow148:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow651
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow651:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow152
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow652
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow652:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow152
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow653
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow653:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow152
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow654
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow654:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow152
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow655
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow655:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow152
L__SemSmallFollow489:
;final_code_3.c,512 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,513 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow153
L_SemSmallFollow152:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow656
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow656:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow156
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow657
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow657:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow156
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow658
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow658:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow156
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow659
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow659:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow156
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow660
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow660:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow156
L__SemSmallFollow488:
;final_code_3.c,514 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,515 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow157
L_SemSmallFollow156:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow661
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow661:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow160
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow662
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow662:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow160
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow663
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow663:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow160
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow664
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow664:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow160
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow665
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow665:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow160
L__SemSmallFollow487:
;final_code_3.c,517 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,518 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow161
L_SemSmallFollow160:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow666
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow666:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow164
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow667
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow667:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow164
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow668
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow668:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow164
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow669
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow669:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow164
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow670
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow670:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow164
L__SemSmallFollow486:
;final_code_3.c,519 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,520 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow165
L_SemSmallFollow164:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow671
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow671:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow168
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow672
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow672:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow168
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow673
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow673:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow168
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow674
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow674:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow168
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow675
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow675:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow168
L__SemSmallFollow485:
;final_code_3.c,521 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,523 :: 		}else{
	GOTO       L_SemSmallFollow169
L_SemSmallFollow168:
;final_code_3.c,524 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,526 :: 		}
L_SemSmallFollow169:
L_SemSmallFollow165:
L_SemSmallFollow161:
L_SemSmallFollow157:
L_SemSmallFollow153:
L_SemSmallFollow149:
L_SemSmallFollow145:
L_SemSmallFollow141:
L_SemSmallFollow137:
L_SemSmallFollow133:
L_SemSmallFollow129:
L_SemSmallFollow125:
L_SemSmallFollow121:
L_SemSmallFollow117:
L_SemSmallFollow113:
;final_code_3.c,528 :: 		}
	RETURN
; end of _SemSmallFollow

_encoder:

;final_code_3.c,531 :: 		void encoder(){
;final_code_3.c,532 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder170
;final_code_3.c,533 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code_3.c,535 :: 		}
L_encoder170:
;final_code_3.c,536 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder173
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder676
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder676:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder173
L__encoder501:
;final_code_3.c,537 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code_3.c,538 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code_3.c,539 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder677
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder677:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder174
;final_code_3.c,540 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code_3.c,541 :: 		}else if(rotationMode==2){
	GOTO       L_encoder175
L_encoder174:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder678
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder678:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder176
;final_code_3.c,542 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code_3.c,543 :: 		}
L_encoder176:
L_encoder175:
;final_code_3.c,544 :: 		}
L_encoder173:
;final_code_3.c,546 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder177
;final_code_3.c,547 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code_3.c,548 :: 		}
L_encoder177:
;final_code_3.c,549 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder180
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder679
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder679:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder180
L__encoder500:
;final_code_3.c,550 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code_3.c,551 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code_3.c,552 :: 		}
L_encoder180:
;final_code_3.c,553 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;final_code_3.c,555 :: 		void initEncoder(){
;final_code_3.c,556 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code_3.c,557 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code_3.c,558 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code_3.c,560 :: 		void goStraight(){
;final_code_3.c,562 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code_3.c,563 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code_3.c,564 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,565 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,566 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight680
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight680:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight502
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight681
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight681:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight502
	GOTO       L_goStraight183
L__goStraight502:
;final_code_3.c,567 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,568 :: 		}
L_goStraight183:
;final_code_3.c,569 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,571 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight682
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight682:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight184
;final_code_3.c,573 :: 		if(TMR0_value-TMR1_value>=3){
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
	GOTO       L__goStraight683
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight683:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight185
;final_code_3.c,574 :: 		do{
L_goStraight186:
;final_code_3.c,575 :: 		rightT();
	CALL       _rightT+0
;final_code_3.c,576 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight684
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight684:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight186
;final_code_3.c,577 :: 		}
L_goStraight185:
;final_code_3.c,580 :: 		}else{
	GOTO       L_goStraight189
L_goStraight184:
;final_code_3.c,582 :: 		if(TMR1_value-TMR0_value>=3){
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
	GOTO       L__goStraight685
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight685:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight190
;final_code_3.c,583 :: 		do{
L_goStraight191:
;final_code_3.c,584 :: 		leftT();
	CALL       _leftT+0
;final_code_3.c,585 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight686
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight686:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight191
;final_code_3.c,586 :: 		}
L_goStraight190:
;final_code_3.c,587 :: 		}
L_goStraight189:
;final_code_3.c,588 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;final_code_3.c,591 :: 		void goStraight2(){
;final_code_3.c,592 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,593 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2687
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2687:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2504
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2688
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2688:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2504
	GOTO       L_goStraight2196
L__goStraight2504:
;final_code_3.c,594 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,596 :: 		}
L_goStraight2196:
;final_code_3.c,597 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2689
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2689:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2199
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2690
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2690:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2199
L__goStraight2503:
;final_code_3.c,598 :: 		distCounter= (TMR0_value*200);
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
;final_code_3.c,599 :: 		distCounter = distCounter/TMR1_value;
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
;final_code_3.c,600 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2691
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2691
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2691
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2691:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2200
;final_code_3.c,601 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,602 :: 		}else{
	GOTO       L_goStraight2201
L_goStraight2200:
;final_code_3.c,603 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,604 :: 		}
L_goStraight2201:
;final_code_3.c,606 :: 		distCounter = (TMR1_value*200);
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
;final_code_3.c,607 :: 		distCounter = distCounter/TMR0_value;
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
;final_code_3.c,608 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2692
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2692
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2692
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2692:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2202
;final_code_3.c,609 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,610 :: 		}else{
	GOTO       L_goStraight2203
L_goStraight2202:
;final_code_3.c,611 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,612 :: 		}
L_goStraight2203:
;final_code_3.c,613 :: 		}
L_goStraight2199:
;final_code_3.c,615 :: 		}
	RETURN
; end of _goStraight2

_tuneToMiddle:

;final_code_3.c,617 :: 		int tuneToMiddle(){
;final_code_3.c,618 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,619 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle693
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle693:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle204
;final_code_3.c,621 :: 		goStraight();
	CALL       _goStraight+0
;final_code_3.c,622 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_3.c,623 :: 		}
L_tuneToMiddle204:
;final_code_3.c,624 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle694
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle694:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle206
;final_code_3.c,625 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle695
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle695:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle505
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle696
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle696:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle505
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle697
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle697:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle505
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle698
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle698:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle505
	GOTO       L_tuneToMiddle209
L__tuneToMiddle505:
;final_code_3.c,626 :: 		while(sw[0][4]==0){
L_tuneToMiddle210:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle699
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle699:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle211
;final_code_3.c,627 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,628 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle700
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle700:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle212
;final_code_3.c,630 :: 		goStraight();
	CALL       _goStraight+0
;final_code_3.c,631 :: 		}else{
	GOTO       L_tuneToMiddle213
L_tuneToMiddle212:
;final_code_3.c,632 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,633 :: 		}
L_tuneToMiddle213:
;final_code_3.c,634 :: 		}
	GOTO       L_tuneToMiddle210
L_tuneToMiddle211:
;final_code_3.c,635 :: 		}
	GOTO       L_tuneToMiddle214
L_tuneToMiddle209:
;final_code_3.c,637 :: 		while(sw[0][4]==0){
L_tuneToMiddle215:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle701
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle701:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle216
;final_code_3.c,638 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,639 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle702
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle702:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle217
;final_code_3.c,641 :: 		goStraight();
	CALL       _goStraight+0
;final_code_3.c,642 :: 		}else{
	GOTO       L_tuneToMiddle218
L_tuneToMiddle217:
;final_code_3.c,643 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,644 :: 		}
L_tuneToMiddle218:
;final_code_3.c,645 :: 		}
	GOTO       L_tuneToMiddle215
L_tuneToMiddle216:
;final_code_3.c,646 :: 		}
L_tuneToMiddle214:
;final_code_3.c,647 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_3.c,648 :: 		}
L_tuneToMiddle206:
;final_code_3.c,650 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code_3.c,652 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code_3.c,655 :: 		void printClockEncoders(){
;final_code_3.c,656 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders703
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders703:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders220
;final_code_3.c,660 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders221
L_printClockEncoders220:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders704
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders704:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders222
;final_code_3.c,664 :: 		}
L_printClockEncoders222:
L_printClockEncoders221:
;final_code_3.c,666 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code_3.c,669 :: 		int getFrontDecimal(){
;final_code_3.c,670 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,672 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal705:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal706
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal705
L__getFrontDecimal706:
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
L__getFrontDecimal707:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal708
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal707
L__getFrontDecimal708:
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
L__getFrontDecimal709:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal710
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal709
L__getFrontDecimal710:
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
L__getFrontDecimal711:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal712
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal711
L__getFrontDecimal712:
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
L__getFrontDecimal713:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal714
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal713
L__getFrontDecimal714:
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
;final_code_3.c,673 :: 		return val;
;final_code_3.c,674 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code_3.c,675 :: 		int getBackDecimal(){
;final_code_3.c,676 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,677 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal715:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal716
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal715
L__getBackDecimal716:
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
L__getBackDecimal717:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal718
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal717
L__getBackDecimal718:
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
;final_code_3.c,678 :: 		return val;
;final_code_3.c,679 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code_3.c,683 :: 		void followArrow(){
;final_code_3.c,684 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow719
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow719:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow223
;final_code_3.c,685 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code_3.c,686 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow720
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow720:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow224
;final_code_3.c,687 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,693 :: 		}
L_followArrow224:
;final_code_3.c,694 :: 		} else if(k==1){
	GOTO       L_followArrow225
L_followArrow223:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow721
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow721:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow226
;final_code_3.c,695 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,696 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow722
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow722:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow227
;final_code_3.c,697 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,698 :: 		}else{
	GOTO       L_followArrow228
L_followArrow227:
;final_code_3.c,699 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,701 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,703 :: 		}
L_followArrow228:
;final_code_3.c,704 :: 		}else if(k==2){
	GOTO       L_followArrow229
L_followArrow226:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow723
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow723:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow230
;final_code_3.c,705 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_3.c,706 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow724
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow724:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow231
;final_code_3.c,707 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,708 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,710 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,711 :: 		}
L_followArrow231:
;final_code_3.c,712 :: 		}else if(k==3){
	GOTO       L_followArrow232
L_followArrow230:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow725
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow725:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow233
;final_code_3.c,713 :: 		moveB();
	CALL       _moveB+0
;final_code_3.c,714 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,715 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,716 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow726
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow726:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow234
;final_code_3.c,719 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,720 :: 		}
L_followArrow234:
;final_code_3.c,722 :: 		}else if(k==4){
	GOTO       L_followArrow235
L_followArrow233:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow727
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow727:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow236
;final_code_3.c,723 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,724 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,725 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow728
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow728:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow237
;final_code_3.c,728 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,729 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,730 :: 		}
L_followArrow237:
;final_code_3.c,732 :: 		}else if(k==5){
	GOTO       L_followArrow238
L_followArrow236:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow729
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow729:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow239
;final_code_3.c,733 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,734 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,735 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_3.c,736 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow730
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow730:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow240
;final_code_3.c,739 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,741 :: 		}
L_followArrow240:
;final_code_3.c,742 :: 		}else if(k==6){
	GOTO       L_followArrow241
L_followArrow239:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow731
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow731:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow242
;final_code_3.c,743 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,744 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,745 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow732
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow732:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow243
;final_code_3.c,746 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,747 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow244
L_followArrow243:
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
	GOTO       L__followArrow733
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow733:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow245
;final_code_3.c,748 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,749 :: 		}else{
	GOTO       L_followArrow246
L_followArrow245:
;final_code_3.c,750 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,752 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_3.c,753 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,754 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,755 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,756 :: 		}
L_followArrow246:
L_followArrow244:
;final_code_3.c,779 :: 		}else if(k==7){
	GOTO       L_followArrow247
L_followArrow242:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow734
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow734:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow248
;final_code_3.c,780 :: 		goStraight();
	CALL       _goStraight+0
;final_code_3.c,781 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_3.c,782 :: 		if(totFront==4){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow735
	MOVLW      4
	XORWF      _totFront+0, 0
L__followArrow735:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow249
;final_code_3.c,783 :: 		headfound=1;
	MOVLW      1
	MOVWF      _headfound+0
	MOVLW      0
	MOVWF      _headfound+1
;final_code_3.c,784 :: 		}
L_followArrow249:
;final_code_3.c,785 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow736
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow736:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow250
;final_code_3.c,786 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,788 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code_3.c,789 :: 		if(headfound==0){
	MOVLW      0
	XORWF      _headfound+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow737
	MOVLW      0
	XORWF      _headfound+0, 0
L__followArrow737:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow251
;final_code_3.c,790 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,791 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,792 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow252:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow252
	DECFSZ     R12+0, 1
	GOTO       L_followArrow252
	DECFSZ     R11+0, 1
	GOTO       L_followArrow252
	NOP
;final_code_3.c,793 :: 		while(TMR0_value<55){
L_followArrow253:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow738
	MOVLW      55
	SUBWF      _TMR0_value+0, 0
L__followArrow738:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow254
;final_code_3.c,794 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,795 :: 		}
	GOTO       L_followArrow253
L_followArrow254:
;final_code_3.c,796 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,797 :: 		}
L_followArrow251:
;final_code_3.c,798 :: 		headfound=0;
	CLRF       _headfound+0
	CLRF       _headfound+1
;final_code_3.c,800 :: 		}
L_followArrow250:
;final_code_3.c,802 :: 		}
L_followArrow248:
L_followArrow247:
L_followArrow241:
L_followArrow238:
L_followArrow235:
L_followArrow232:
L_followArrow229:
L_followArrow225:
;final_code_3.c,803 :: 		}
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

;final_code_3.c,805 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code_3.c,806 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt255
;final_code_3.c,807 :: 		encoder();
	CALL       _encoder+0
;final_code_3.c,808 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code_3.c,809 :: 		}
L_interrupt255:
;final_code_3.c,812 :: 		}
L__interrupt739:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code_3.c,815 :: 		void init_timer(){
;final_code_3.c,816 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code_3.c,817 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code_3.c,818 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code_3.c,821 :: 		int pulseIn1(){
;final_code_3.c,822 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_3.c,823 :: 		while(1){
L_pulseIn1256:
;final_code_3.c,824 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_3.c,825 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,826 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1258
	GOTO       L_pulseIn1257
L_pulseIn1258:
;final_code_3.c,827 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1740
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1740:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1259
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1259:
;final_code_3.c,828 :: 		}
	GOTO       L_pulseIn1256
L_pulseIn1257:
;final_code_3.c,829 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_3.c,830 :: 		while(1){
L_pulseIn1260:
;final_code_3.c,831 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_3.c,832 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,833 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1262
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1262:
;final_code_3.c,834 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1741
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1741:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1263
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1263:
;final_code_3.c,835 :: 		}
	GOTO       L_pulseIn1260
;final_code_3.c,837 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code_3.c,839 :: 		int pulseIn2(){
;final_code_3.c,840 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_3.c,841 :: 		while(1){
L_pulseIn2264:
;final_code_3.c,842 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_3.c,843 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,844 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2266
	GOTO       L_pulseIn2265
L_pulseIn2266:
;final_code_3.c,845 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2742
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2742:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2267
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2267:
;final_code_3.c,846 :: 		}
	GOTO       L_pulseIn2264
L_pulseIn2265:
;final_code_3.c,847 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_3.c,848 :: 		while(1){
L_pulseIn2268:
;final_code_3.c,849 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_3.c,850 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,851 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2270
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2270:
;final_code_3.c,852 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2743
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2743:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2271
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2271:
;final_code_3.c,853 :: 		}
	GOTO       L_pulseIn2268
;final_code_3.c,854 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code_3.c,857 :: 		int pulseIn3(){
;final_code_3.c,858 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_3.c,859 :: 		while(1){
L_pulseIn3272:
;final_code_3.c,860 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_3.c,861 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,862 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3274
	GOTO       L_pulseIn3273
L_pulseIn3274:
;final_code_3.c,863 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3744
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3744:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3275
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3275:
;final_code_3.c,864 :: 		}
	GOTO       L_pulseIn3272
L_pulseIn3273:
;final_code_3.c,865 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_3.c,866 :: 		while(1){
L_pulseIn3276:
;final_code_3.c,867 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_3.c,868 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_3.c,869 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3278
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3278:
;final_code_3.c,870 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3745
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3745:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3279
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3279:
;final_code_3.c,871 :: 		}
	GOTO       L_pulseIn3276
;final_code_3.c,872 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code_3.c,875 :: 		int getDis1(){
;final_code_3.c,876 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_3.c,877 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1280:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1280
	NOP
	NOP
;final_code_3.c,878 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_3.c,879 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1281:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1281
	NOP
	NOP
;final_code_3.c,880 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_3.c,881 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_3.c,882 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1282:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1282
	DECFSZ     R12+0, 1
	GOTO       L_getDis1282
	DECFSZ     R11+0, 1
	GOTO       L_getDis1282
	NOP
	NOP
;final_code_3.c,883 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_3.c,885 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code_3.c,887 :: 		int getDis2(){
;final_code_3.c,888 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_3.c,889 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2283:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2283
	NOP
	NOP
;final_code_3.c,890 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_3.c,891 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2284:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2284
	NOP
	NOP
;final_code_3.c,892 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_3.c,893 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_3.c,894 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2285:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2285
	DECFSZ     R12+0, 1
	GOTO       L_getDis2285
	NOP
	NOP
;final_code_3.c,895 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_3.c,897 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code_3.c,899 :: 		int getDis3(){
;final_code_3.c,900 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_3.c,901 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3286:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3286
	NOP
	NOP
;final_code_3.c,902 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code_3.c,903 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3287:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3287
	NOP
	NOP
;final_code_3.c,904 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_3.c,905 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_3.c,906 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3288:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3288
	DECFSZ     R12+0, 1
	GOTO       L_getDis3288
	NOP
	NOP
;final_code_3.c,907 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_3.c,909 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code_3.c,910 :: 		void NidegL(){
;final_code_3.c,911 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,912 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,913 :: 		while(1){
L_NidegL289:
;final_code_3.c,914 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL746
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL746:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL291
;final_code_3.c,915 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,916 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,917 :: 		break;
	GOTO       L_NidegL290
;final_code_3.c,918 :: 		}
L_NidegL291:
;final_code_3.c,919 :: 		}
	GOTO       L_NidegL289
L_NidegL290:
;final_code_3.c,920 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code_3.c,922 :: 		void NidegR(){
;final_code_3.c,923 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,924 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,925 :: 		while(1){
L_NidegR292:
;final_code_3.c,926 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR747
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR747:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR294
;final_code_3.c,927 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,928 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,929 :: 		break;
	GOTO       L_NidegR293
;final_code_3.c,930 :: 		}
L_NidegR294:
;final_code_3.c,931 :: 		}
	GOTO       L_NidegR292
L_NidegR293:
;final_code_3.c,932 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code_3.c,934 :: 		void moFEnc(int count){
;final_code_3.c,935 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,936 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,937 :: 		while(1){
L_moFEnc295:
;final_code_3.c,938 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc748
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc748:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc297
;final_code_3.c,939 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,940 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,941 :: 		break;
	GOTO       L_moFEnc296
;final_code_3.c,942 :: 		}
L_moFEnc297:
;final_code_3.c,943 :: 		}
	GOTO       L_moFEnc295
L_moFEnc296:
;final_code_3.c,945 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code_3.c,947 :: 		int getCompass(){
;final_code_3.c,948 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;final_code_3.c,949 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;final_code_3.c,951 :: 		void turnToPoint(int pt){
;final_code_3.c,952 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,953 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,954 :: 		if(getCompass()<pt){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint749
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint749:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint298
;final_code_3.c,956 :: 		while(getCompass()<=pt){
L_turnToPoint299:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint750
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint750:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint300
;final_code_3.c,957 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,958 :: 		}
	GOTO       L_turnToPoint299
L_turnToPoint300:
;final_code_3.c,959 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,960 :: 		Delay_ms(2000);
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
;final_code_3.c,961 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,962 :: 		while(getCompass()>=pt){
L_turnToPoint302:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint751
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint751:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint303
;final_code_3.c,963 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,964 :: 		}
	GOTO       L_turnToPoint302
L_turnToPoint303:
;final_code_3.c,965 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,966 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint304:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint304
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint304
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint304
	NOP
	NOP
;final_code_3.c,967 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code_3.c,968 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,969 :: 		while(TMR0_value<compTemp){
L_turnToPoint305:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint752
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint752:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint306
;final_code_3.c,970 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,971 :: 		}
	GOTO       L_turnToPoint305
L_turnToPoint306:
;final_code_3.c,972 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,973 :: 		}else{
	GOTO       L_turnToPoint307
L_turnToPoint298:
;final_code_3.c,974 :: 		while(getCompass()>=pt){
L_turnToPoint308:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint753
	MOVF       FARG_turnToPoint_pt+0, 0
	SUBWF      R0+0, 0
L__turnToPoint753:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint309
;final_code_3.c,975 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,976 :: 		}
	GOTO       L_turnToPoint308
L_turnToPoint309:
;final_code_3.c,977 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,978 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint310:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint310
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint310
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint310
	NOP
	NOP
;final_code_3.c,979 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,980 :: 		while(getCompass()<=pt){
L_turnToPoint311:
	CALL       _getCompass+0
	MOVLW      128
	XORWF      FARG_turnToPoint_pt+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint754
	MOVF       R0+0, 0
	SUBWF      FARG_turnToPoint_pt+0, 0
L__turnToPoint754:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToPoint312
;final_code_3.c,981 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,982 :: 		}
	GOTO       L_turnToPoint311
L_turnToPoint312:
;final_code_3.c,983 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,984 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_turnToPoint313:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint313
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint313
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint313
	NOP
	NOP
;final_code_3.c,985 :: 		compTemp= TMR0_value/2;
	MOVF       _TMR0_value+0, 0
	MOVWF      _compTemp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _compTemp+1
	RRF        _compTemp+1, 1
	RRF        _compTemp+0, 1
	BCF        _compTemp+1, 7
	BTFSC      _compTemp+1, 6
	BSF        _compTemp+1, 7
;final_code_3.c,986 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,987 :: 		while(TMR0_value<compTemp){
L_turnToPoint314:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _compTemp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToPoint755
	MOVF       _compTemp+0, 0
	SUBWF      _TMR0_value+0, 0
L__turnToPoint755:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToPoint315
;final_code_3.c,988 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,989 :: 		}
	GOTO       L_turnToPoint314
L_turnToPoint315:
;final_code_3.c,990 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,992 :: 		}
L_turnToPoint307:
;final_code_3.c,993 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,994 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,995 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,996 :: 		}
	RETURN
; end of _turnToPoint

_convert:

;final_code_3.c,998 :: 		int convert(int x_high,int x_low){
;final_code_3.c,1000 :: 		if(x_high>=127){
	MOVLW      128
	XORWF      FARG_convert_x_high+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__convert756
	MOVLW      127
	SUBWF      FARG_convert_x_high+0, 0
L__convert756:
	BTFSS      STATUS+0, 0
	GOTO       L_convert316
;final_code_3.c,1001 :: 		number=(x_high<<8)+x_low;
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
;final_code_3.c,1002 :: 		number=number-1;
	MOVLW      1
	SUBWF      convert_number_L0+0, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+1, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+2, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+3, 1
;final_code_3.c,1003 :: 		number=~(number);
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
;final_code_3.c,1006 :: 		number=(-1)*number;
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
;final_code_3.c,1007 :: 		return number;
	RETURN
;final_code_3.c,1008 :: 		}else{
L_convert316:
;final_code_3.c,1009 :: 		number=(x_high<<8)+x_low;
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
;final_code_3.c,1010 :: 		return number;
	MOVF       convert_number_L0+0, 0
	MOVWF      R0+0
	MOVF       convert_number_L0+1, 0
	MOVWF      R0+1
;final_code_3.c,1013 :: 		}
	RETURN
; end of _convert

_Read_Compass:

;final_code_3.c,1019 :: 		void Read_Compass(){
;final_code_3.c,1020 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1021 :: 		I2C1_Wr(0x3C);   //sellecting magnatometer
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1022 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1023 :: 		I2C1_Wr(0x00); //single mode readinh
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1024 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1026 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1027 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass318:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass318
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass318
	NOP
	NOP
;final_code_3.c,1028 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass319
;final_code_3.c,1030 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1031 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1032 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1033 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1034 :: 		x_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_h+0
;final_code_3.c,1035 :: 		}
L_Read_Compass319:
;final_code_3.c,1036 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1039 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1040 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass320:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass320
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass320
	NOP
	NOP
;final_code_3.c,1041 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass321
;final_code_3.c,1043 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1044 :: 		I2C1_Wr(0x04);
	MOVLW      4
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1045 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1046 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1047 :: 		x_l=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_l+0
;final_code_3.c,1048 :: 		}
L_Read_Compass321:
;final_code_3.c,1049 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1052 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1053 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass322:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass322
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass322
	NOP
	NOP
;final_code_3.c,1054 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass323
;final_code_3.c,1056 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1057 :: 		I2C1_Wr(0x05);
	MOVLW      5
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1058 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1059 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1060 :: 		z_h=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_h+0
;final_code_3.c,1061 :: 		}
L_Read_Compass323:
;final_code_3.c,1062 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1065 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1066 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass324:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass324
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass324
	NOP
	NOP
;final_code_3.c,1067 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass325
;final_code_3.c,1069 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1070 :: 		I2C1_Wr(0x06);
	MOVLW      6
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1071 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1072 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1073 :: 		z_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_l+0
;final_code_3.c,1074 :: 		}
L_Read_Compass325:
;final_code_3.c,1075 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1078 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1079 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass326:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass326
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass326
	NOP
	NOP
;final_code_3.c,1080 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass327
;final_code_3.c,1082 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1083 :: 		I2C1_Wr(0x07);
	MOVLW      7
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1084 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1085 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1086 :: 		y_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_h+0
;final_code_3.c,1087 :: 		}
L_Read_Compass327:
;final_code_3.c,1088 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1090 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_3.c,1091 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass328:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass328
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass328
	NOP
	NOP
;final_code_3.c,1092 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass329
;final_code_3.c,1094 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1095 :: 		I2C1_Wr(0x08);
	MOVLW      8
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1096 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_3.c,1097 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_3.c,1098 :: 		y_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_l+0
;final_code_3.c,1099 :: 		}
L_Read_Compass329:
;final_code_3.c,1100 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_3.c,1102 :: 		X_Value=convert(x_h,x_l);
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
;final_code_3.c,1103 :: 		Y_Value=convert(y_h,y_l);
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
;final_code_3.c,1105 :: 		if(X_Value>=0 && Y_Value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass757
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass757
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass757
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass757:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass332
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass758
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass758
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass758
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass758:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass332
L__Read_Compass509:
;final_code_3.c,1107 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;final_code_3.c,1108 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_3.c,1110 :: 		}else if(X_Value<0 && Y_Value>=0){
	GOTO       L_Read_Compass333
L_Read_Compass332:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass759
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass759
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass759
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass759:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass336
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass760
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass760
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass760
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass760:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass336
L__Read_Compass508:
;final_code_3.c,1113 :: 		angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
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
;final_code_3.c,1114 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_3.c,1115 :: 		angle=180-angle;
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
;final_code_3.c,1119 :: 		}else if(X_Value<0 && Y_Value<0){
	GOTO       L_Read_Compass337
L_Read_Compass336:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass761
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass761
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass761
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass761:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass340
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass762
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass762
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass762
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass762:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass340
L__Read_Compass507:
;final_code_3.c,1121 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;final_code_3.c,1122 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_3.c,1123 :: 		angle=angle+180;
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
;final_code_3.c,1127 :: 		}else if(X_Value>=0 && Y_Value<0){
	GOTO       L_Read_Compass341
L_Read_Compass340:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass763
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass763
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass763
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass763:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass344
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass764
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass764
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass764
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass764:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass344
L__Read_Compass506:
;final_code_3.c,1129 :: 		angle=atan(((((double)(-1)*Y_Value)/(double)X_Value)));
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
;final_code_3.c,1130 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_3.c,1131 :: 		angle=360-angle;
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
;final_code_3.c,1134 :: 		}
L_Read_Compass344:
L_Read_Compass341:
L_Read_Compass337:
L_Read_Compass333:
;final_code_3.c,1136 :: 		if(X_value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass765
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass765
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass765
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass765:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass345
;final_code_3.c,1138 :: 		}else{
	GOTO       L_Read_Compass346
L_Read_Compass345:
;final_code_3.c,1139 :: 		X_value=(-1)*X_value;
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
;final_code_3.c,1141 :: 		}
L_Read_Compass346:
;final_code_3.c,1142 :: 		if(Y_value>=0){
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass766
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass766
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass766
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass766:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass347
;final_code_3.c,1144 :: 		}else{
	GOTO       L_Read_Compass348
L_Read_Compass347:
;final_code_3.c,1145 :: 		Y_value=(-1)*Y_value;
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
;final_code_3.c,1147 :: 		}
L_Read_Compass348:
;final_code_3.c,1148 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Read_Compass349:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass349
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass349
	DECFSZ     R11+0, 1
	GOTO       L_Read_Compass349
	NOP
	NOP
;final_code_3.c,1149 :: 		}
	RETURN
; end of _Read_Compass

_avoidObstacles:

;final_code_3.c,1153 :: 		void avoidObstacles(){
;final_code_3.c,1154 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1155 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1156 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_3.c,1158 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles767
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles767:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles350
;final_code_3.c,1159 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1160 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1161 :: 		if((counter2<200)||(counter3<200)||TMR0_value>50){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles768
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles768:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles516
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles769
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles769:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles516
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles770
	MOVF       _TMR0_value+0, 0
	SUBLW      50
L__avoidObstacles770:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles516
	GOTO       L_avoidObstacles353
L__avoidObstacles516:
;final_code_3.c,1162 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1163 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1164 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1165 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_3.c,1166 :: 		while(clockEncoder!=0){
L_avoidObstacles354:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles771
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles771:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles355
;final_code_3.c,1167 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles772
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles772:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles356
;final_code_3.c,1168 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1169 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles357
L_avoidObstacles356:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles773
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles773:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles358
;final_code_3.c,1170 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1171 :: 		}
L_avoidObstacles358:
L_avoidObstacles357:
;final_code_3.c,1172 :: 		}
	GOTO       L_avoidObstacles354
L_avoidObstacles355:
;final_code_3.c,1173 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1174 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles359:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles359
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles359
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles359
	NOP
;final_code_3.c,1177 :: 		if(direction==0){
	MOVLW      0
	XORWF      _direction+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles774
	MOVLW      0
	XORWF      _direction+0, 0
L__avoidObstacles774:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles360
;final_code_3.c,1178 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1179 :: 		}else{
	GOTO       L_avoidObstacles361
L_avoidObstacles360:
;final_code_3.c,1180 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1181 :: 		}
L_avoidObstacles361:
;final_code_3.c,1182 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1183 :: 		}else{
	GOTO       L_avoidObstacles362
L_avoidObstacles353:
;final_code_3.c,1184 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,1187 :: 		}
L_avoidObstacles362:
;final_code_3.c,1188 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles363
L_avoidObstacles350:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles775
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles775:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles364
;final_code_3.c,1189 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1190 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1192 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1195 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1196 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1201 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles776
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles776:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles367
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles777
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles777:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles367
L__avoidObstacles515:
;final_code_3.c,1202 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1203 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_3.c,1204 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1205 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_3.c,1207 :: 		}
L_avoidObstacles367:
;final_code_3.c,1208 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles778
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles778:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles370
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles779
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles779:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles370
L__avoidObstacles514:
;final_code_3.c,1209 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_3.c,1210 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles780
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles780:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles371
;final_code_3.c,1211 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1212 :: 		}else{
	GOTO       L_avoidObstacles372
L_avoidObstacles371:
;final_code_3.c,1213 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1214 :: 		}
L_avoidObstacles372:
;final_code_3.c,1215 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1216 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1217 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles373:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles373
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles373
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles373
	NOP
;final_code_3.c,1218 :: 		while(TMR0_value<15){
L_avoidObstacles374:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles781
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles781:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles375
;final_code_3.c,1219 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1220 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_3.c,1221 :: 		}
	GOTO       L_avoidObstacles374
L_avoidObstacles375:
;final_code_3.c,1222 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1223 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles376:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles376
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles376
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles376
	NOP
;final_code_3.c,1225 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1226 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1227 :: 		}
L_avoidObstacles370:
;final_code_3.c,1229 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles377
L_avoidObstacles364:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles782
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles782:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles378
;final_code_3.c,1230 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1231 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1233 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1236 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1237 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1240 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles783
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles783:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles381
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles784
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles784:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles381
L__avoidObstacles513:
;final_code_3.c,1241 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1242 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_3.c,1243 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1244 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_3.c,1245 :: 		}
L_avoidObstacles381:
;final_code_3.c,1246 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles785
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles785:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles384
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles786
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles786:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles384
L__avoidObstacles512:
;final_code_3.c,1247 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_3.c,1248 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles787
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles787:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles385
;final_code_3.c,1249 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1250 :: 		}else{
	GOTO       L_avoidObstacles386
L_avoidObstacles385:
;final_code_3.c,1251 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1252 :: 		}
L_avoidObstacles386:
;final_code_3.c,1253 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1254 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1255 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles387:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles387
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles387
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles387
	NOP
;final_code_3.c,1256 :: 		while(TMR0_value<15){
L_avoidObstacles388:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles788
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles788:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles389
;final_code_3.c,1257 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1258 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_3.c,1259 :: 		}
	GOTO       L_avoidObstacles388
L_avoidObstacles389:
;final_code_3.c,1261 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1262 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1263 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles390:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles390
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles390
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles390
	NOP
;final_code_3.c,1264 :: 		}
L_avoidObstacles384:
;final_code_3.c,1266 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles391
L_avoidObstacles378:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles789
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles789:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles392
;final_code_3.c,1268 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles790
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles790:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles393
;final_code_3.c,1269 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1270 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_3.c,1271 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_3.c,1272 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_3.c,1273 :: 		}
L_avoidObstacles393:
;final_code_3.c,1274 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_3.c,1275 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles394
L_avoidObstacles392:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles791
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles791:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles395
;final_code_3.c,1276 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1277 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1278 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1280 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles792
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles792:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles398
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles793
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles793:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles398
L__avoidObstacles511:
;final_code_3.c,1281 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1282 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_3.c,1283 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1284 :: 		}
L_avoidObstacles398:
;final_code_3.c,1285 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles399
L_avoidObstacles395:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles794
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles794:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles400
;final_code_3.c,1286 :: 		goStraight();
	CALL       _goStraight+0
;final_code_3.c,1287 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1288 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1290 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles795
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles795:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles510
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles796
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles796:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles510
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles797
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles797:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles510
	GOTO       L_avoidObstacles403
L__avoidObstacles510:
;final_code_3.c,1291 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1292 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_3.c,1293 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_3.c,1294 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_3.c,1295 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1296 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_3.c,1297 :: 		}
L_avoidObstacles403:
;final_code_3.c,1299 :: 		}
L_avoidObstacles400:
L_avoidObstacles399:
L_avoidObstacles394:
L_avoidObstacles391:
L_avoidObstacles377:
L_avoidObstacles363:
;final_code_3.c,1310 :: 		}
	RETURN
; end of _avoidObstacles

_cal_front:

;final_code_3.c,1314 :: 		cal_front(){
;final_code_3.c,1315 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_3.c,1316 :: 		initialDirection=angle;
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      _initialDirection+0
	MOVF       R0+1, 0
	MOVWF      _initialDirection+1
;final_code_3.c,1317 :: 		fdirection = angle;
	MOVF       R0+0, 0
	MOVWF      _fdirection+0
	MOVF       R0+1, 0
	MOVWF      _fdirection+1
;final_code_3.c,1324 :: 		}
	RETURN
; end of _cal_front

_straight:

;final_code_3.c,1327 :: 		int straight(){
;final_code_3.c,1329 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_3.c,1330 :: 		newAngle= 180-initialDirection+angle;
	MOVF       _initialDirection+0, 0
	SUBLW      180
	MOVWF      R0+0
	MOVF       _initialDirection+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	CALL       _Int2Double+0
	MOVF       _angle+0, 0
	MOVWF      R4+0
	MOVF       _angle+1, 0
	MOVWF      R4+1
	MOVF       _angle+2, 0
	MOVWF      R4+2
	MOVF       _angle+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      _newAngle+0
	MOVF       R0+1, 0
	MOVWF      _newAngle+1
;final_code_3.c,1331 :: 		if(newAngle<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight798
	MOVLW      0
	SUBWF      R0+0, 0
L__straight798:
	BTFSC      STATUS+0, 0
	GOTO       L_straight404
;final_code_3.c,1332 :: 		newAngle= newAngle+360;
	MOVLW      104
	ADDWF      _newAngle+0, 1
	MOVLW      1
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _newAngle+1, 1
;final_code_3.c,1333 :: 		}else if(newAngle>360){
	GOTO       L_straight405
L_straight404:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight799
	MOVF       _newAngle+0, 0
	SUBLW      104
L__straight799:
	BTFSC      STATUS+0, 0
	GOTO       L_straight406
;final_code_3.c,1334 :: 		newAngle= newAngle-360;
	MOVLW      104
	SUBWF      _newAngle+0, 1
	BTFSS      STATUS+0, 0
	DECF       _newAngle+1, 1
	MOVLW      1
	SUBWF      _newAngle+1, 1
;final_code_3.c,1335 :: 		}
L_straight406:
L_straight405:
;final_code_3.c,1336 :: 		if(newAngle<170&& newAngle>0){
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight800
	MOVLW      170
	SUBWF      _newAngle+0, 0
L__straight800:
	BTFSC      STATUS+0, 0
	GOTO       L_straight409
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight801
	MOVF       _newAngle+0, 0
	SUBLW      0
L__straight801:
	BTFSC      STATUS+0, 0
	GOTO       L_straight409
L__straight518:
;final_code_3.c,1337 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1338 :: 		}else if(newAngle>190&& newAngle<360){
	GOTO       L_straight410
L_straight409:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight802
	MOVF       _newAngle+0, 0
	SUBLW      190
L__straight802:
	BTFSC      STATUS+0, 0
	GOTO       L_straight413
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight803
	MOVLW      104
	SUBWF      _newAngle+0, 0
L__straight803:
	BTFSC      STATUS+0, 0
	GOTO       L_straight413
L__straight517:
;final_code_3.c,1339 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1340 :: 		}else{
	GOTO       L_straight414
L_straight413:
;final_code_3.c,1341 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1344 :: 		}
L_straight414:
L_straight410:
;final_code_3.c,1346 :: 		}
	RETURN
; end of _straight

_avoidObstacles2:

;final_code_3.c,1348 :: 		void avoidObstacles2(){
;final_code_3.c,1349 :: 		if(stat2==0){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2804
	MOVLW      0
	XORWF      _stat2+0, 0
L__avoidObstacles2804:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2415
;final_code_3.c,1350 :: 		moveF();
	CALL       _moveF+0
;final_code_3.c,1351 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1352 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1353 :: 		if(counter2<250||counter3<250){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2805
	MOVLW      250
	SUBWF      _counter2+0, 0
L__avoidObstacles2805:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2521
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2806
	MOVLW      250
	SUBWF      _counter3+0, 0
L__avoidObstacles2806:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2521
	GOTO       L_avoidObstacles2418
L__avoidObstacles2521:
;final_code_3.c,1354 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1355 :: 		stat2=11;
	MOVLW      11
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_3.c,1357 :: 		}
L_avoidObstacles2418:
;final_code_3.c,1359 :: 		}else if(stat2==11){
	GOTO       L_avoidObstacles2419
L_avoidObstacles2415:
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2807
	MOVLW      11
	XORWF      _stat2+0, 0
L__avoidObstacles2807:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2420
;final_code_3.c,1361 :: 		straight();
	CALL       _straight+0
;final_code_3.c,1364 :: 		}
	GOTO       L_avoidObstacles2421
L_avoidObstacles2420:
;final_code_3.c,1365 :: 		else if(stat2==1){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2808
	MOVLW      1
	XORWF      _stat2+0, 0
L__avoidObstacles2808:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2422
;final_code_3.c,1366 :: 		getDis2();
	CALL       _getDis2+0
;final_code_3.c,1367 :: 		getDis3();
	CALL       _getDis3+0
;final_code_3.c,1368 :: 		if(mem==0){
	MOVLW      0
	XORWF      _mem+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2809
	MOVLW      0
	XORWF      _mem+0, 0
L__avoidObstacles2809:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2423
;final_code_3.c,1370 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1371 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2810
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles2810:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2426
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2811
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles2811:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2426
L__avoidObstacles2520:
;final_code_3.c,1372 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1373 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_3.c,1374 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;final_code_3.c,1375 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_3.c,1376 :: 		}
L_avoidObstacles2426:
;final_code_3.c,1377 :: 		}else{
	GOTO       L_avoidObstacles2427
L_avoidObstacles2423:
;final_code_3.c,1378 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1379 :: 		if(counter2>350&&counter3>350){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2812
	MOVF       _counter2+0, 0
	SUBLW      94
L__avoidObstacles2812:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2430
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2813
	MOVF       _counter3+0, 0
	SUBLW      94
L__avoidObstacles2813:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2430
L__avoidObstacles2519:
;final_code_3.c,1380 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1381 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_3.c,1382 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;final_code_3.c,1383 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_3.c,1384 :: 		}
L_avoidObstacles2430:
;final_code_3.c,1386 :: 		}
L_avoidObstacles2427:
;final_code_3.c,1387 :: 		}
L_avoidObstacles2422:
L_avoidObstacles2421:
L_avoidObstacles2419:
;final_code_3.c,1388 :: 		}
	RETURN
; end of _avoidObstacles2

_turnToMiddle:

;final_code_3.c,1483 :: 		void turnToMiddle(int ang){
;final_code_3.c,1485 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_3.c,1486 :: 		dif=angle-ang;
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
;final_code_3.c,1488 :: 		while(1){
L_turnToMiddle431:
;final_code_3.c,1489 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_3.c,1490 :: 		dif=angle-ang;
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
;final_code_3.c,1491 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle814
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle814:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle433
;final_code_3.c,1492 :: 		dif=dif*(-1);
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
;final_code_3.c,1493 :: 		}
L_turnToMiddle433:
;final_code_3.c,1494 :: 		duty=180+(dif*50)/360;
	MOVF       turnToMiddle_dif_L0+0, 0
	MOVWF      R0+0
	MOVF       turnToMiddle_dif_L0+1, 0
	MOVWF      R0+1
	MOVLW      50
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
	ADDLW      180
	MOVWF      turnToMiddle_duty_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      turnToMiddle_duty_L0+1
;final_code_3.c,1495 :: 		leftHardT();
	CALL       _leftHardT+0
;final_code_3.c,1496 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1497 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1498 :: 		if(dif>=0 && dif<=40){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle815
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle815:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle436
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle816
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      40
L__turnToMiddle816:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle436
L__turnToMiddle522:
;final_code_3.c,1499 :: 		break;
	GOTO       L_turnToMiddle432
;final_code_3.c,1500 :: 		}
L_turnToMiddle436:
;final_code_3.c,1506 :: 		}
	GOTO       L_turnToMiddle431
L_turnToMiddle432:
;final_code_3.c,1508 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1509 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_turnToMiddle437:
	DECFSZ     R13+0, 1
	GOTO       L_turnToMiddle437
	DECFSZ     R12+0, 1
	GOTO       L_turnToMiddle437
	DECFSZ     R11+0, 1
	GOTO       L_turnToMiddle437
	NOP
;final_code_3.c,1511 :: 		}
	RETURN
; end of _turnToMiddle

_AF:

;final_code_3.c,1517 :: 		void AF(){
;final_code_3.c,1518 :: 		arrow_speed();
	CALL       _arrow_speed+0
;final_code_3.c,1520 :: 		if(afound==0){
	MOVLW      0
	XORWF      _afound+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF817
	MOVLW      0
	XORWF      _afound+0, 0
L__AF817:
	BTFSS      STATUS+0, 2
	GOTO       L_AF438
;final_code_3.c,1521 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code_3.c,1522 :: 		if(sw[1][1]==1 || sw[1][2]==1 || sw[1][3]==1){
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF818
	MOVLW      1
	XORWF      _sw+20, 0
L__AF818:
	BTFSC      STATUS+0, 2
	GOTO       L__AF523
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF819
	MOVLW      1
	XORWF      _sw+22, 0
L__AF819:
	BTFSC      STATUS+0, 2
	GOTO       L__AF523
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF820
	MOVLW      1
	XORWF      _sw+24, 0
L__AF820:
	BTFSC      STATUS+0, 2
	GOTO       L__AF523
	GOTO       L_AF441
L__AF523:
;final_code_3.c,1523 :: 		afound=1;
	MOVLW      1
	MOVWF      _afound+0
	MOVLW      0
	MOVWF      _afound+1
;final_code_3.c,1524 :: 		}
L_AF441:
;final_code_3.c,1525 :: 		}
L_AF438:
;final_code_3.c,1526 :: 		if(afound==1){
	MOVLW      0
	XORWF      _afound+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF821
	MOVLW      1
	XORWF      _afound+0, 0
L__AF821:
	BTFSS      STATUS+0, 2
	GOTO       L_AF442
;final_code_3.c,1527 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1528 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_AF443:
	DECFSZ     R13+0, 1
	GOTO       L_AF443
	DECFSZ     R12+0, 1
	GOTO       L_AF443
	DECFSZ     R11+0, 1
	GOTO       L_AF443
	NOP
;final_code_3.c,1529 :: 		do{
L_AF444:
;final_code_3.c,1530 :: 		semSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_3.c,1531 :: 		}while(sw[0][4]!=0);
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__AF822
	MOVLW      0
	XORWF      _sw+8, 0
L__AF822:
	BTFSS      STATUS+0, 2
	GOTO       L_AF444
;final_code_3.c,1532 :: 		backward();
	CALL       _backward+0
;final_code_3.c,1533 :: 		delay_ms(600);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_AF447:
	DECFSZ     R13+0, 1
	GOTO       L_AF447
	DECFSZ     R12+0, 1
	GOTO       L_AF447
	DECFSZ     R11+0, 1
	GOTO       L_AF447
	NOP
	NOP
;final_code_3.c,1534 :: 		afound=0;
	CLRF       _afound+0
	CLRF       _afound+1
;final_code_3.c,1535 :: 		}
L_AF442:
;final_code_3.c,1538 :: 		}
	RETURN
; end of _AF

_straight_com:

;final_code_3.c,1539 :: 		void straight_com(){
;final_code_3.c,1541 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1542 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1545 :: 		if(PORTD.F3==1 && PORTD.F4==1){
	BTFSS      PORTD+0, 3
	GOTO       L_straight_com450
	BTFSS      PORTD+0, 4
	GOTO       L_straight_com450
L__straight_com526:
;final_code_3.c,1546 :: 		stopAll();
	CALL       _stopAll+0
;final_code_3.c,1547 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_straight_com451:
	DECFSZ     R13+0, 1
	GOTO       L_straight_com451
	DECFSZ     R12+0, 1
	GOTO       L_straight_com451
	DECFSZ     R11+0, 1
	GOTO       L_straight_com451
	NOP
;final_code_3.c,1548 :: 		}else if(PORTD.F4==1 && PORTD.F3==0){
	GOTO       L_straight_com452
L_straight_com450:
	BTFSS      PORTD+0, 4
	GOTO       L_straight_com455
	BTFSC      PORTD+0, 3
	GOTO       L_straight_com455
L__straight_com525:
;final_code_3.c,1549 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1550 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1551 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_3.c,1552 :: 		}else if(PORTD.F4==0 && PORTD.F3==1){
	GOTO       L_straight_com456
L_straight_com455:
	BTFSC      PORTD+0, 4
	GOTO       L_straight_com459
	BTFSS      PORTD+0, 3
	GOTO       L_straight_com459
L__straight_com524:
;final_code_3.c,1553 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1554 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1555 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_3.c,1556 :: 		}
L_straight_com459:
L_straight_com456:
L_straight_com452:
;final_code_3.c,1559 :: 		}
	RETURN
; end of _straight_com

_main:

;final_code_3.c,1564 :: 		void main() {
;final_code_3.c,1565 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code_3.c,1566 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code_3.c,1567 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code_3.c,1568 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_3.c,1572 :: 		init_timer();
	CALL       _init_timer+0
;final_code_3.c,1573 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code_3.c,1574 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code_3.c,1576 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code_3.c,1577 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code_3.c,1578 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_3.c,1579 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_3.c,1580 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code_3.c,1581 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code_3.c,1582 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_3.c,1583 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code_3.c,1585 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code_3.c,1586 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code_3.c,1587 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_3.c,1588 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_3.c,1589 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code_3.c,1590 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;final_code_3.c,1591 :: 		TRISC.F4=0;
	BCF        TRISC+0, 4
;final_code_3.c,1592 :: 		TRISC.F5=0;
	BCF        TRISC+0, 5
;final_code_3.c,1593 :: 		TRISC.F6=0;
	BCF        TRISC+0, 6
;final_code_3.c,1594 :: 		TRISD.F3=1;
	BSF        TRISD+0, 3
;final_code_3.c,1595 :: 		TRISD.F4=1;
	BSF        TRISD+0, 4
;final_code_3.c,1596 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_3.c,1601 :: 		mediumSpeed();
	CALL       _mediumSpeed+0
;final_code_3.c,1603 :: 		while(1){
L_main460:
;final_code_3.c,1638 :: 		straight_com();
	CALL       _straight_com+0
;final_code_3.c,1639 :: 		Delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_main462:
	DECFSZ     R13+0, 1
	GOTO       L_main462
	NOP
;final_code_3.c,1646 :: 		}
	GOTO       L_main460
;final_code_3.c,1649 :: 		}
	GOTO       $+0
; end of _main
