
_fullSpeed:

;final_code_4.c,26 :: 		void fullSpeed(){
;final_code_4.c,28 :: 		speed =255;
	MOVLW      255
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_4.c,29 :: 		speed1=235;
	MOVLW      235
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_4.c,30 :: 		speed2=250;
	MOVLW      250
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_4.c,31 :: 		speed3=230;     //speed1=225;
	MOVLW      230
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_4.c,35 :: 		}
	RETURN
; end of _fullSpeed

_mediumSpeed:

;final_code_4.c,36 :: 		void mediumSpeed(){
;final_code_4.c,37 :: 		speed =230;
	MOVLW      230
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_4.c,38 :: 		speed1=200;
	MOVLW      200
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_4.c,39 :: 		speed2=225;
	MOVLW      225
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_4.c,40 :: 		speed3=205;     //speed1=225;
	MOVLW      205
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_4.c,41 :: 		}
	RETURN
; end of _mediumSpeed

_rotateLeft:

;final_code_4.c,44 :: 		void rotateLeft(){
;final_code_4.c,45 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_4.c,46 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_4.c,47 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,48 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,49 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_4.c,50 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code_4.c,52 :: 		void rotateRight(){
;final_code_4.c,53 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_4.c,54 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_4.c,55 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,56 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_4.c,57 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_4.c,58 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code_4.c,60 :: 		void moveF(){
;final_code_4.c,61 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_4.c,62 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_4.c,63 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,64 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,65 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_4.c,66 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code_4.c,68 :: 		void moveB(){
;final_code_4.c,69 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_4.c,70 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_4.c,71 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,72 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_4.c,73 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_4.c,74 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code_4.c,76 :: 		forward(){
;final_code_4.c,77 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_4.c,78 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_4.c,79 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,80 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,81 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,82 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,83 :: 		}
	RETURN
; end of _forward

_backward:

;final_code_4.c,85 :: 		backward(){
;final_code_4.c,86 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_4.c,87 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_4.c,88 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,89 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_4.c,90 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,91 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,92 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code_4.c,94 :: 		leftHardTurn(){
;final_code_4.c,95 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_4.c,96 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,97 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_4.c,98 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,99 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,100 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,101 :: 		}
	RETURN
; end of _leftHardTurn

_RightHardTurn:

;final_code_4.c,103 :: 		RightHardTurn(){
;final_code_4.c,104 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_4.c,105 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_4.c,106 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_4.c,107 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,108 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,109 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,110 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code_4.c,112 :: 		leftTurn(){
;final_code_4.c,113 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_4.c,114 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,115 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_4.c,116 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,117 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,118 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,119 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code_4.c,121 :: 		RightTurn(){
;final_code_4.c,122 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_4.c,123 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,124 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_4.c,125 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,126 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,127 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,128 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code_4.c,130 :: 		leftSoftTurn(){
;final_code_4.c,131 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_4.c,132 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,133 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_4.c,134 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,135 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,136 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,138 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code_4.c,140 :: 		rightSoftTurn(){
;final_code_4.c,141 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_4.c,142 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,143 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_4.c,144 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,145 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,146 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,147 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code_4.c,149 :: 		stopAll(){
;final_code_4.c,150 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_4.c,151 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,152 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_4.c,153 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,154 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code_4.c,156 :: 		leftT(){
;final_code_4.c,157 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_4.c,158 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,159 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_4.c,160 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_4.c,161 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,162 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,164 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code_4.c,166 :: 		rightT(){
;final_code_4.c,168 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_4.c,169 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_4.c,170 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_4.c,171 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_4.c,172 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,173 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,175 :: 		}
	RETURN
; end of _rightT

_sensorRead:

;final_code_4.c,177 :: 		sensorRead(){
;final_code_4.c,179 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code_4.c,180 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code_4.c,181 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead424
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead424:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code_4.c,182 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code_4.c,183 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code_4.c,184 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_4.c,185 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code_4.c,186 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code_4.c,187 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code_4.c,188 :: 		}
L_sensorRead1:
;final_code_4.c,189 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead425
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead425:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code_4.c,190 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code_4.c,191 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code_4.c,192 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_4.c,193 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code_4.c,194 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code_4.c,195 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code_4.c,196 :: 		}
L_sensorRead3:
;final_code_4.c,197 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead426
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead426:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code_4.c,198 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code_4.c,199 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code_4.c,200 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_4.c,201 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code_4.c,202 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code_4.c,203 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code_4.c,204 :: 		}
L_sensorRead5:
;final_code_4.c,205 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead427
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead427:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code_4.c,206 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code_4.c,207 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code_4.c,208 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_4.c,209 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code_4.c,210 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code_4.c,211 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code_4.c,212 :: 		}
L_sensorRead7:
;final_code_4.c,214 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead428
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead428:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code_4.c,215 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code_4.c,216 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code_4.c,217 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_4.c,218 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code_4.c,219 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code_4.c,220 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code_4.c,221 :: 		}
L_sensorRead9:
;final_code_4.c,222 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead429
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead429:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code_4.c,223 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code_4.c,224 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code_4.c,225 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,226 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code_4.c,227 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code_4.c,228 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code_4.c,229 :: 		}
L_sensorRead11:
;final_code_4.c,231 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead430
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead430:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code_4.c,232 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code_4.c,233 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code_4.c,234 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,235 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code_4.c,236 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code_4.c,237 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code_4.c,238 :: 		}
L_sensorRead13:
;final_code_4.c,239 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead431
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead431:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code_4.c,240 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code_4.c,241 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code_4.c,242 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,243 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code_4.c,244 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code_4.c,245 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code_4.c,246 :: 		}
L_sensorRead15:
;final_code_4.c,247 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead432
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead432:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code_4.c,248 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code_4.c,249 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code_4.c,250 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,251 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code_4.c,252 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code_4.c,253 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code_4.c,254 :: 		}
L_sensorRead17:
;final_code_4.c,255 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead433
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead433:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code_4.c,256 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code_4.c,257 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code_4.c,258 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,259 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code_4.c,260 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code_4.c,261 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code_4.c,262 :: 		}
L_sensorRead19:
;final_code_4.c,263 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead434
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead434:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code_4.c,264 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code_4.c,265 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code_4.c,266 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,267 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code_4.c,268 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code_4.c,269 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code_4.c,270 :: 		}
L_sensorRead21:
;final_code_4.c,271 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead435
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead435:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code_4.c,272 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code_4.c,273 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code_4.c,274 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,275 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code_4.c,276 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code_4.c,277 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code_4.c,278 :: 		}
L_sensorRead23:
;final_code_4.c,279 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead436
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead436:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code_4.c,280 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code_4.c,281 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code_4.c,282 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,283 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code_4.c,284 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code_4.c,285 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code_4.c,286 :: 		}
L_sensorRead25:
;final_code_4.c,287 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead437
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead437:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code_4.c,288 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code_4.c,289 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code_4.c,290 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_4.c,291 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code_4.c,292 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code_4.c,293 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code_4.c,294 :: 		}
L_sensorRead27:
;final_code_4.c,296 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code_4.c,298 :: 		void printToLcd(){
;final_code_4.c,299 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code_4.c,300 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd438
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd438:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code_4.c,304 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code_4.c,307 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code_4.c,309 :: 		int  bin_deci(){
;final_code_4.c,311 :: 		int decimal_value=0;
;final_code_4.c,312 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci439:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci440
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci439
L__bin_deci440:
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
L__bin_deci441:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci442
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci441
L__bin_deci442:
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
L__bin_deci443:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci444
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci443
L__bin_deci444:
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
L__bin_deci445:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci446
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci445
L__bin_deci446:
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
L__bin_deci447:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci448
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci447
L__bin_deci448:
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
;final_code_4.c,315 :: 		return decimal_value;
;final_code_4.c,317 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code_4.c,319 :: 		lineFollow(){
;final_code_4.c,320 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code_4.c,321 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code_4.c,322 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code_4.c,323 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code_4.c,324 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,325 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_4.c,326 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow449
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow449:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow393
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow450
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow450:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow393
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow451
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow451:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow393
	GOTO       L_lineFollow33
L__lineFollow393:
;final_code_4.c,327 :: 		forward();
	CALL       _forward+0
;final_code_4.c,329 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code_4.c,330 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow452
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow452:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow392
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow453
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow453:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow392
	GOTO       L_lineFollow37
L__lineFollow392:
;final_code_4.c,331 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code_4.c,333 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code_4.c,335 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow454
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow454:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow391
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow455
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow455:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow391
	GOTO       L_lineFollow41
L__lineFollow391:
;final_code_4.c,336 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code_4.c,338 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code_4.c,339 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow456
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow456:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow390
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow457
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow457:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow390
	GOTO       L_lineFollow45
L__lineFollow390:
;final_code_4.c,340 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code_4.c,341 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,342 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code_4.c,343 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow458
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow458:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow389
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow459
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow459:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow389
	GOTO       L_lineFollow49
L__lineFollow389:
;final_code_4.c,344 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_4.c,345 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,346 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code_4.c,347 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow460
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow460:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow388
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow461
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow461:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow388
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow462
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow462:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow388
	GOTO       L_lineFollow53
L__lineFollow388:
;final_code_4.c,348 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_4.c,349 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,350 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code_4.c,351 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow463
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow463:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow387
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow464
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow464:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow387
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow465
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow465:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow387
	GOTO       L_lineFollow57
L__lineFollow387:
;final_code_4.c,352 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_4.c,353 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,354 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code_4.c,355 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow466
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow466:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow386
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow467
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow467:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow386
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow468
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow468:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow386
	GOTO       L_lineFollow65
L__lineFollow386:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow469
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow469:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow385
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow470
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow470:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow385
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow471
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow471:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow385
	GOTO       L_lineFollow65
L__lineFollow385:
L__lineFollow384:
;final_code_4.c,358 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_4.c,359 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,361 :: 		}else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow472
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow472:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow383
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow473
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow473:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow383
	GOTO       L_lineFollow73
L__lineFollow383:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow474
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow474:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow475
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow475:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow476
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow476:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow382:
L__lineFollow381:
;final_code_4.c,365 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_4.c,366 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,371 :: 		}else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow74
L_lineFollow73:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow477
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow477:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow380
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow478
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow478:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow380
	GOTO       L_lineFollow81
L__lineFollow380:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow479
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow479:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow480
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow480:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow481
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow481:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow379:
L__lineFollow378:
;final_code_4.c,375 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_4.c,376 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,381 :: 		}else if(((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow482
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow482:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow377
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow483
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow483:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow377
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow484
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow484:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow377
	GOTO       L_lineFollow89
L__lineFollow377:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow485
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow485:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow486
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow486:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow376:
L__lineFollow375:
;final_code_4.c,384 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_4.c,385 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,386 :: 		}else if((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow90
L_lineFollow89:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow487
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow487:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow374
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow488
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow488:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow374
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow489
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow489:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow374
	GOTO       L_lineFollow97
L__lineFollow374:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow490
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow490:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow491
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow491:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow373:
L__lineFollow372:
;final_code_4.c,389 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_4.c,390 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_4.c,392 :: 		}else if(value==511){
	GOTO       L_lineFollow98
L_lineFollow97:
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow492
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow492:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code_4.c,393 :: 		forward();
	CALL       _forward+0
;final_code_4.c,394 :: 		delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_lineFollow100:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow100
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow100
	DECFSZ     R11+0, 1
	GOTO       L_lineFollow100
	NOP
	NOP
;final_code_4.c,395 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,397 :: 		}else {
	GOTO       L_lineFollow101
L_lineFollow99:
;final_code_4.c,398 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow493
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow493:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
;final_code_4.c,400 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_4.c,401 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow103
L_lineFollow102:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow494
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow494:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow104
;final_code_4.c,403 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_4.c,404 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow105
L_lineFollow104:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow495
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow495:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow106
;final_code_4.c,405 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_4.c,406 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow107
L_lineFollow106:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow496
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow496:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow108
;final_code_4.c,407 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_4.c,408 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow109
L_lineFollow108:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow497
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow497:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow110
;final_code_4.c,409 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_4.c,410 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow111
L_lineFollow110:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow498
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow498:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow112
;final_code_4.c,411 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_4.c,412 :: 		}
L_lineFollow112:
L_lineFollow111:
L_lineFollow109:
L_lineFollow107:
L_lineFollow105:
L_lineFollow103:
;final_code_4.c,454 :: 		*/
L_lineFollow101:
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
;final_code_4.c,474 :: 		}
	RETURN
; end of _lineFollow

_straight:

;final_code_4.c,479 :: 		int straight(){
;final_code_4.c,483 :: 		initialDirection=63;
	MOVLW      63
	MOVWF      _initialDirection+0
	MOVLW      0
	MOVWF      _initialDirection+1
;final_code_4.c,484 :: 		newAngle= 180-initialDirection+angle;
	MOVF       _angle+0, 0
	ADDLW      117
	MOVWF      R1+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _angle+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _newAngle+0
	MOVF       R1+1, 0
	MOVWF      _newAngle+1
;final_code_4.c,485 :: 		if(newAngle<0){
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight499
	MOVLW      0
	SUBWF      R1+0, 0
L__straight499:
	BTFSC      STATUS+0, 0
	GOTO       L_straight113
;final_code_4.c,486 :: 		newAngle= newAngle+360;
	MOVLW      104
	ADDWF      _newAngle+0, 1
	MOVLW      1
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _newAngle+1, 1
;final_code_4.c,487 :: 		}else if(newAngle>360){
	GOTO       L_straight114
L_straight113:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight500
	MOVF       _newAngle+0, 0
	SUBLW      104
L__straight500:
	BTFSC      STATUS+0, 0
	GOTO       L_straight115
;final_code_4.c,488 :: 		newAngle= newAngle-360;
	MOVLW      104
	SUBWF      _newAngle+0, 1
	BTFSS      STATUS+0, 0
	DECF       _newAngle+1, 1
	MOVLW      1
	SUBWF      _newAngle+1, 1
;final_code_4.c,489 :: 		}
L_straight115:
L_straight114:
;final_code_4.c,490 :: 		if(newAngle<170&& newAngle>0){
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight501
	MOVLW      170
	SUBWF      _newAngle+0, 0
L__straight501:
	BTFSC      STATUS+0, 0
	GOTO       L_straight118
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight502
	MOVF       _newAngle+0, 0
	SUBLW      0
L__straight502:
	BTFSC      STATUS+0, 0
	GOTO       L_straight118
L__straight395:
;final_code_4.c,491 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,492 :: 		}else if(newAngle>190&& newAngle<360){
	GOTO       L_straight119
L_straight118:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight503
	MOVF       _newAngle+0, 0
	SUBLW      190
L__straight503:
	BTFSC      STATUS+0, 0
	GOTO       L_straight122
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight504
	MOVLW      104
	SUBWF      _newAngle+0, 0
L__straight504:
	BTFSC      STATUS+0, 0
	GOTO       L_straight122
L__straight394:
;final_code_4.c,493 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,494 :: 		}else{
	GOTO       L_straight123
L_straight122:
;final_code_4.c,495 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,498 :: 		}
L_straight123:
L_straight119:
;final_code_4.c,500 :: 		}
	RETURN
; end of _straight

_straight_com:

;final_code_4.c,502 :: 		void straight_com(){
;final_code_4.c,504 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,505 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,508 :: 		if(PORTD.F3==1 && PORTD.F4==1){
	BTFSS      PORTD+0, 3
	GOTO       L_straight_com126
	BTFSS      PORTD+0, 4
	GOTO       L_straight_com126
L__straight_com398:
;final_code_4.c,509 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,510 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_straight_com127:
	DECFSZ     R13+0, 1
	GOTO       L_straight_com127
	DECFSZ     R12+0, 1
	GOTO       L_straight_com127
	DECFSZ     R11+0, 1
	GOTO       L_straight_com127
	NOP
;final_code_4.c,511 :: 		}else if(PORTD.F4==1 && PORTD.F3==0){
	GOTO       L_straight_com128
L_straight_com126:
	BTFSS      PORTD+0, 4
	GOTO       L_straight_com131
	BTFSC      PORTD+0, 3
	GOTO       L_straight_com131
L__straight_com397:
;final_code_4.c,512 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,513 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,514 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,515 :: 		}else if(PORTD.F4==0 && PORTD.F3==1){
	GOTO       L_straight_com132
L_straight_com131:
	BTFSC      PORTD+0, 4
	GOTO       L_straight_com135
	BTFSS      PORTD+0, 3
	GOTO       L_straight_com135
L__straight_com396:
;final_code_4.c,516 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,517 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,518 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,519 :: 		}
L_straight_com135:
L_straight_com132:
L_straight_com128:
;final_code_4.c,522 :: 		}
	RETURN
; end of _straight_com

_SemSmallFollow:

;final_code_4.c,527 :: 		void SemSmallFollow(){
;final_code_4.c,528 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,529 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow505
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow505:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow506
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow506:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow507
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow507:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow508
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow508:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow509
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow509:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
L__SemSmallFollow410:
;final_code_4.c,530 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,531 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow139
L_SemSmallFollow138:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow510
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow510:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow511
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow511:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow512
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow512:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow513
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow513:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow514
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow514:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
L__SemSmallFollow409:
;final_code_4.c,532 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,533 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow143
L_SemSmallFollow142:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow515
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow515:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow516
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow516:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow517
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow517:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow518
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow518:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow519
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow519:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
L__SemSmallFollow408:
;final_code_4.c,534 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,535 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow147
L_SemSmallFollow146:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow520
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow520:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow521
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow521:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow522
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow522:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow523
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow523:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow524
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow524:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
L__SemSmallFollow407:
;final_code_4.c,536 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,537 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow151
L_SemSmallFollow150:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow525
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow525:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow526
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow526:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow527
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow527:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow528
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow528:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow529
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow529:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
L__SemSmallFollow406:
;final_code_4.c,538 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,539 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow155
L_SemSmallFollow154:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow530
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow530:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow531
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow531:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow532
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow532:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow533
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow533:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow534
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow534:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
L__SemSmallFollow405:
;final_code_4.c,541 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,542 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow159
L_SemSmallFollow158:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow535
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow535:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow536
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow536:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow537
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow537:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow538
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow538:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow539
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow539:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
L__SemSmallFollow404:
;final_code_4.c,544 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,545 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow163
L_SemSmallFollow162:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow540
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow540:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow541
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow541:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow542
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow542:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow543
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow543:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow544
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow544:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
L__SemSmallFollow403:
;final_code_4.c,547 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,548 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow167
L_SemSmallFollow166:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow545
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow545:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow546
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow546:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow547
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow547:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow548
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow548:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow549
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow549:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
L__SemSmallFollow402:
;final_code_4.c,549 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,550 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow171
L_SemSmallFollow170:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow550
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow550:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow551
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow551:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow552
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow552:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow553
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow553:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow554
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow554:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
L__SemSmallFollow401:
;final_code_4.c,551 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,552 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow175
L_SemSmallFollow174:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow555
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow555:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow556
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow556:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow557
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow557:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow558
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow558:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow559
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow559:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
L__SemSmallFollow400:
;final_code_4.c,554 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,555 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow179
L_SemSmallFollow178:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow560
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow560:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow561
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow561:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow562
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow562:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow563
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow563:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow564
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow564:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
L__SemSmallFollow399:
;final_code_4.c,556 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,557 :: 		}else{
	GOTO       L_SemSmallFollow183
L_SemSmallFollow182:
;final_code_4.c,558 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,559 :: 		}
L_SemSmallFollow183:
L_SemSmallFollow179:
L_SemSmallFollow175:
L_SemSmallFollow171:
L_SemSmallFollow167:
L_SemSmallFollow163:
L_SemSmallFollow159:
L_SemSmallFollow155:
L_SemSmallFollow151:
L_SemSmallFollow147:
L_SemSmallFollow143:
L_SemSmallFollow139:
;final_code_4.c,561 :: 		}
	RETURN
; end of _SemSmallFollow

_encoder:

;final_code_4.c,564 :: 		void encoder(){
;final_code_4.c,565 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder184
;final_code_4.c,566 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code_4.c,568 :: 		}
L_encoder184:
;final_code_4.c,569 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder187
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder565
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder565:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder187
L__encoder412:
;final_code_4.c,570 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code_4.c,571 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code_4.c,572 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder566
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder566:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder188
;final_code_4.c,573 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code_4.c,574 :: 		}else if(rotationMode==2){
	GOTO       L_encoder189
L_encoder188:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder567
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder567:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder190
;final_code_4.c,575 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code_4.c,576 :: 		}
L_encoder190:
L_encoder189:
;final_code_4.c,577 :: 		}
L_encoder187:
;final_code_4.c,579 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder191
;final_code_4.c,580 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code_4.c,581 :: 		}
L_encoder191:
;final_code_4.c,582 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder194
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder568
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder568:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder194
L__encoder411:
;final_code_4.c,583 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code_4.c,584 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code_4.c,585 :: 		}
L_encoder194:
;final_code_4.c,586 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;final_code_4.c,588 :: 		void initEncoder(){
;final_code_4.c,589 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code_4.c,590 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code_4.c,591 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code_4.c,593 :: 		void goStraight(){
;final_code_4.c,595 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code_4.c,596 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code_4.c,597 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,598 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,599 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight569
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight569:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight413
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight570
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight570:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight413
	GOTO       L_goStraight197
L__goStraight413:
;final_code_4.c,600 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,601 :: 		}
L_goStraight197:
;final_code_4.c,602 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,604 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight571
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight571:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight198
;final_code_4.c,606 :: 		if(TMR0_value-TMR1_value>=5){
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
	GOTO       L__goStraight572
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight572:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight199
;final_code_4.c,607 :: 		do{
L_goStraight200:
;final_code_4.c,608 :: 		rightT();
	CALL       _rightT+0
;final_code_4.c,609 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight573
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight573:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight200
;final_code_4.c,610 :: 		}
L_goStraight199:
;final_code_4.c,613 :: 		}else{
	GOTO       L_goStraight203
L_goStraight198:
;final_code_4.c,615 :: 		if(TMR1_value-TMR0_value>=5){
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
	GOTO       L__goStraight574
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight574:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight204
;final_code_4.c,616 :: 		do{
L_goStraight205:
;final_code_4.c,617 :: 		leftT();
	CALL       _leftT+0
;final_code_4.c,618 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight575
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight575:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight205
;final_code_4.c,619 :: 		}
L_goStraight204:
;final_code_4.c,620 :: 		}
L_goStraight203:
;final_code_4.c,621 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;final_code_4.c,624 :: 		void goStraight2(){
;final_code_4.c,625 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,626 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2576
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2576:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2415
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2577
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2577:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2415
	GOTO       L_goStraight2210
L__goStraight2415:
;final_code_4.c,627 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,629 :: 		}
L_goStraight2210:
;final_code_4.c,630 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2578
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2578:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2213
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2579
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2579:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2213
L__goStraight2414:
;final_code_4.c,631 :: 		distCounter= (TMR0_value*200);
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
;final_code_4.c,632 :: 		distCounter = distCounter/TMR1_value;
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
;final_code_4.c,633 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2580
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2580
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2580
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2580:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2214
;final_code_4.c,634 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,635 :: 		}else{
	GOTO       L_goStraight2215
L_goStraight2214:
;final_code_4.c,636 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,637 :: 		}
L_goStraight2215:
;final_code_4.c,639 :: 		distCounter = (TMR1_value*200);
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
;final_code_4.c,640 :: 		distCounter = distCounter/TMR0_value;
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
;final_code_4.c,641 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2581
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2581
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2581
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2581:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2216
;final_code_4.c,642 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,643 :: 		}else{
	GOTO       L_goStraight2217
L_goStraight2216:
;final_code_4.c,644 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,645 :: 		}
L_goStraight2217:
;final_code_4.c,646 :: 		}
L_goStraight2213:
;final_code_4.c,648 :: 		}
	RETURN
; end of _goStraight2

_tuneToMiddle:

;final_code_4.c,650 :: 		int tuneToMiddle(){
;final_code_4.c,651 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,652 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle582
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle582:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle218
;final_code_4.c,654 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,655 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_4.c,656 :: 		}
L_tuneToMiddle218:
;final_code_4.c,657 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle583
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle583:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle220
;final_code_4.c,658 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle584
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle584:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle416
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle585
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle585:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle416
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle586
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle586:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle416
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle587
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle587:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle416
	GOTO       L_tuneToMiddle223
L__tuneToMiddle416:
;final_code_4.c,659 :: 		while(sw[0][4]==0){
L_tuneToMiddle224:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle588
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle588:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle225
;final_code_4.c,660 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,661 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle589
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle589:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle226
;final_code_4.c,663 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,664 :: 		}else{
	GOTO       L_tuneToMiddle227
L_tuneToMiddle226:
;final_code_4.c,665 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,666 :: 		}
L_tuneToMiddle227:
;final_code_4.c,667 :: 		}
	GOTO       L_tuneToMiddle224
L_tuneToMiddle225:
;final_code_4.c,668 :: 		}
	GOTO       L_tuneToMiddle228
L_tuneToMiddle223:
;final_code_4.c,670 :: 		while(sw[0][4]==0){
L_tuneToMiddle229:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle590
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle590:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle230
;final_code_4.c,671 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,672 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle591
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle591:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle231
;final_code_4.c,674 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,675 :: 		}else{
	GOTO       L_tuneToMiddle232
L_tuneToMiddle231:
;final_code_4.c,676 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,677 :: 		}
L_tuneToMiddle232:
;final_code_4.c,678 :: 		}
	GOTO       L_tuneToMiddle229
L_tuneToMiddle230:
;final_code_4.c,679 :: 		}
L_tuneToMiddle228:
;final_code_4.c,680 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_4.c,681 :: 		}
L_tuneToMiddle220:
;final_code_4.c,683 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code_4.c,685 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code_4.c,688 :: 		void printClockEncoders(){
;final_code_4.c,689 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders592
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders592:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders234
;final_code_4.c,693 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders235
L_printClockEncoders234:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders593
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders593:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders236
;final_code_4.c,697 :: 		}
L_printClockEncoders236:
L_printClockEncoders235:
;final_code_4.c,699 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code_4.c,702 :: 		int getFrontDecimal(){
;final_code_4.c,703 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,705 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal594:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal595
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal594
L__getFrontDecimal595:
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
L__getFrontDecimal596:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal597
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal596
L__getFrontDecimal597:
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
L__getFrontDecimal598:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal599
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal598
L__getFrontDecimal599:
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
L__getFrontDecimal600:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal601
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal600
L__getFrontDecimal601:
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
L__getFrontDecimal602:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal603
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal602
L__getFrontDecimal603:
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
;final_code_4.c,706 :: 		return val;
;final_code_4.c,707 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code_4.c,708 :: 		int getBackDecimal(){
;final_code_4.c,709 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,710 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal604:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal605
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal604
L__getBackDecimal605:
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
L__getBackDecimal606:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal607
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal606
L__getBackDecimal607:
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
;final_code_4.c,711 :: 		return val;
;final_code_4.c,712 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code_4.c,716 :: 		void followArrow(){
;final_code_4.c,717 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow608
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow608:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow237
;final_code_4.c,718 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code_4.c,719 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow609
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow609:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow238
;final_code_4.c,720 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,721 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow239:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow239
	DECFSZ     R12+0, 1
	GOTO       L_followArrow239
	DECFSZ     R11+0, 1
	GOTO       L_followArrow239
	NOP
;final_code_4.c,726 :: 		}
L_followArrow238:
;final_code_4.c,727 :: 		} else if(k==1){
	GOTO       L_followArrow240
L_followArrow237:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow610
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow610:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow241
;final_code_4.c,728 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,729 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow611
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow611:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow242
;final_code_4.c,730 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,731 :: 		}else{
	GOTO       L_followArrow243
L_followArrow242:
;final_code_4.c,732 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,733 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow244:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow244
	DECFSZ     R12+0, 1
	GOTO       L_followArrow244
	DECFSZ     R11+0, 1
	GOTO       L_followArrow244
	NOP
;final_code_4.c,734 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,736 :: 		}
L_followArrow243:
;final_code_4.c,737 :: 		}else if(k==2){
	GOTO       L_followArrow245
L_followArrow241:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow612
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow612:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow246
;final_code_4.c,738 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_4.c,739 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow613
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow613:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow247
;final_code_4.c,740 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,741 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,742 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow248:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow248
	DECFSZ     R12+0, 1
	GOTO       L_followArrow248
	DECFSZ     R11+0, 1
	GOTO       L_followArrow248
	NOP
;final_code_4.c,743 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,744 :: 		}
L_followArrow247:
;final_code_4.c,745 :: 		}else if(k==3){
	GOTO       L_followArrow249
L_followArrow246:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow614
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow614:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow250
;final_code_4.c,746 :: 		moveB();
	CALL       _moveB+0
;final_code_4.c,747 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow615
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow615:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow251
;final_code_4.c,750 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,751 :: 		}
L_followArrow251:
;final_code_4.c,753 :: 		}else if(k==4){
	GOTO       L_followArrow252
L_followArrow250:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow616
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow616:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow253
;final_code_4.c,754 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,755 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,756 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow617
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow617:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow254
;final_code_4.c,759 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,760 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,761 :: 		}
L_followArrow254:
;final_code_4.c,763 :: 		}else if(k==5){
	GOTO       L_followArrow255
L_followArrow253:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow618
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow618:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow256
;final_code_4.c,764 :: 		PWM1_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,765 :: 		PWM2_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,766 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_4.c,767 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow619
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow619:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow257
;final_code_4.c,770 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,772 :: 		}
L_followArrow257:
;final_code_4.c,773 :: 		}else if(k==6){
	GOTO       L_followArrow258
L_followArrow256:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow620
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow620:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow259
;final_code_4.c,774 :: 		PWM1_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,775 :: 		PWM2_Set_Duty(170);
	MOVLW      170
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,776 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow621
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow621:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow260
;final_code_4.c,777 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,778 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow261
L_followArrow260:
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
	GOTO       L__followArrow622
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow622:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow262
;final_code_4.c,779 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,780 :: 		}else{
	GOTO       L_followArrow263
L_followArrow262:
;final_code_4.c,781 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,782 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow264:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow264
	DECFSZ     R12+0, 1
	GOTO       L_followArrow264
	DECFSZ     R11+0, 1
	GOTO       L_followArrow264
	NOP
;final_code_4.c,783 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_4.c,784 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,785 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,786 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,787 :: 		}
L_followArrow263:
L_followArrow261:
;final_code_4.c,788 :: 		}else if(k==7){
	GOTO       L_followArrow265
L_followArrow259:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow623
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow623:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow266
;final_code_4.c,789 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,790 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,791 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow624
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow624:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow267
;final_code_4.c,792 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,793 :: 		Delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_followArrow268:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow268
	DECFSZ     R12+0, 1
	GOTO       L_followArrow268
	DECFSZ     R11+0, 1
	GOTO       L_followArrow268
	NOP
	NOP
;final_code_4.c,794 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code_4.c,796 :: 		}
L_followArrow267:
;final_code_4.c,798 :: 		}
L_followArrow266:
L_followArrow265:
L_followArrow258:
L_followArrow255:
L_followArrow252:
L_followArrow249:
L_followArrow245:
L_followArrow240:
;final_code_4.c,799 :: 		}
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

;final_code_4.c,801 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code_4.c,802 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt269
;final_code_4.c,803 :: 		encoder();
	CALL       _encoder+0
;final_code_4.c,804 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code_4.c,805 :: 		}
L_interrupt269:
;final_code_4.c,808 :: 		}
L__interrupt625:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code_4.c,811 :: 		void init_timer(){
;final_code_4.c,812 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code_4.c,813 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code_4.c,814 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code_4.c,817 :: 		int pulseIn1(){
;final_code_4.c,818 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_4.c,819 :: 		while(1){
L_pulseIn1270:
;final_code_4.c,820 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_4.c,821 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,822 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1272
	GOTO       L_pulseIn1271
L_pulseIn1272:
;final_code_4.c,823 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1626
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1626:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1273
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1273:
;final_code_4.c,824 :: 		}
	GOTO       L_pulseIn1270
L_pulseIn1271:
;final_code_4.c,825 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_4.c,826 :: 		while(1){
L_pulseIn1274:
;final_code_4.c,827 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_4.c,828 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,829 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1276
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1276:
;final_code_4.c,830 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1627
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1627:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1277
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1277:
;final_code_4.c,831 :: 		}
	GOTO       L_pulseIn1274
;final_code_4.c,833 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code_4.c,835 :: 		int pulseIn2(){
;final_code_4.c,836 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_4.c,837 :: 		while(1){
L_pulseIn2278:
;final_code_4.c,838 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_4.c,839 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,840 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2280
	GOTO       L_pulseIn2279
L_pulseIn2280:
;final_code_4.c,841 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2628
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2628:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2281
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2281:
;final_code_4.c,842 :: 		}
	GOTO       L_pulseIn2278
L_pulseIn2279:
;final_code_4.c,843 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_4.c,844 :: 		while(1){
L_pulseIn2282:
;final_code_4.c,845 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_4.c,846 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,847 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2284
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2284:
;final_code_4.c,848 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2629
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2629:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2285
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2285:
;final_code_4.c,849 :: 		}
	GOTO       L_pulseIn2282
;final_code_4.c,850 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code_4.c,853 :: 		int pulseIn3(){
;final_code_4.c,854 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_4.c,855 :: 		while(1){
L_pulseIn3286:
;final_code_4.c,856 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_4.c,857 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,858 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3288
	GOTO       L_pulseIn3287
L_pulseIn3288:
;final_code_4.c,859 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3630
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3630:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3289
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3289:
;final_code_4.c,860 :: 		}
	GOTO       L_pulseIn3286
L_pulseIn3287:
;final_code_4.c,861 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_4.c,862 :: 		while(1){
L_pulseIn3290:
;final_code_4.c,863 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_4.c,864 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_4.c,865 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3292
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3292:
;final_code_4.c,866 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3631
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3631:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3293
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3293:
;final_code_4.c,867 :: 		}
	GOTO       L_pulseIn3290
;final_code_4.c,868 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code_4.c,871 :: 		int getDis1(){
;final_code_4.c,872 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_4.c,873 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1294:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1294
	NOP
	NOP
;final_code_4.c,874 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_4.c,875 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1295:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1295
	NOP
	NOP
;final_code_4.c,876 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_4.c,877 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_4.c,878 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1296:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1296
	DECFSZ     R12+0, 1
	GOTO       L_getDis1296
	DECFSZ     R11+0, 1
	GOTO       L_getDis1296
	NOP
	NOP
;final_code_4.c,879 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_4.c,881 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code_4.c,883 :: 		int getDis2(){
;final_code_4.c,884 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_4.c,885 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2297:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2297
	NOP
	NOP
;final_code_4.c,886 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_4.c,887 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2298:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2298
	NOP
	NOP
;final_code_4.c,888 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_4.c,889 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_4.c,890 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2299:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2299
	DECFSZ     R12+0, 1
	GOTO       L_getDis2299
	NOP
	NOP
;final_code_4.c,891 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_4.c,893 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code_4.c,895 :: 		int getDis3(){
;final_code_4.c,896 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_4.c,897 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3300:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3300
	NOP
	NOP
;final_code_4.c,898 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code_4.c,899 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3301:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3301
	NOP
	NOP
;final_code_4.c,900 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_4.c,901 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_4.c,902 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3302:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3302
	DECFSZ     R12+0, 1
	GOTO       L_getDis3302
	NOP
	NOP
;final_code_4.c,903 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_4.c,905 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code_4.c,906 :: 		void NidegL(){
;final_code_4.c,907 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,908 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,909 :: 		while(1){
L_NidegL303:
;final_code_4.c,910 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL632
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL632:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL305
;final_code_4.c,911 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,912 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,913 :: 		break;
	GOTO       L_NidegL304
;final_code_4.c,914 :: 		}
L_NidegL305:
;final_code_4.c,915 :: 		}
	GOTO       L_NidegL303
L_NidegL304:
;final_code_4.c,916 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code_4.c,918 :: 		void NidegR(){
;final_code_4.c,919 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,920 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,921 :: 		while(1){
L_NidegR306:
;final_code_4.c,922 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR633
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR633:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR308
;final_code_4.c,923 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,924 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,925 :: 		break;
	GOTO       L_NidegR307
;final_code_4.c,926 :: 		}
L_NidegR308:
;final_code_4.c,927 :: 		}
	GOTO       L_NidegR306
L_NidegR307:
;final_code_4.c,928 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code_4.c,930 :: 		void moFEnc(int count){
;final_code_4.c,931 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,932 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,933 :: 		while(1){
L_moFEnc309:
;final_code_4.c,934 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc634
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc634:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc311
;final_code_4.c,935 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,936 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,937 :: 		break;
	GOTO       L_moFEnc310
;final_code_4.c,938 :: 		}
L_moFEnc311:
;final_code_4.c,939 :: 		}
	GOTO       L_moFEnc309
L_moFEnc310:
;final_code_4.c,941 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code_4.c,943 :: 		int getCompass(){
;final_code_4.c,944 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;final_code_4.c,945 :: 		}
	RETURN
; end of _getCompass

_avoidObstacles:

;final_code_4.c,996 :: 		void avoidObstacles(){
;final_code_4.c,997 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,998 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,999 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_4.c,1001 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles635
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles635:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles312
;final_code_4.c,1002 :: 		getDis3();
	CALL       _getDis3+0
;final_code_4.c,1003 :: 		getDis2();
	CALL       _getDis2+0
;final_code_4.c,1004 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles636
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles636:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles423
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles637
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles637:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles423
	GOTO       L_avoidObstacles315
L__avoidObstacles423:
;final_code_4.c,1005 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1006 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,1007 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,1008 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_4.c,1009 :: 		while(clockEncoder!=0){
L_avoidObstacles316:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles638
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles638:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles317
;final_code_4.c,1010 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles639
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles639:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles318
;final_code_4.c,1011 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,1012 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles319
L_avoidObstacles318:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles640
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles640:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles320
;final_code_4.c,1013 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,1014 :: 		}
L_avoidObstacles320:
L_avoidObstacles319:
;final_code_4.c,1015 :: 		}
	GOTO       L_avoidObstacles316
L_avoidObstacles317:
;final_code_4.c,1016 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1017 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles321:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles321
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles321
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles321
	NOP
;final_code_4.c,1019 :: 		if(getCompass()>=4){
	CALL       _getCompass+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles641
	MOVLW      4
	SUBWF      R0+0, 0
L__avoidObstacles641:
	BTFSS      STATUS+0, 0
	GOTO       L_avoidObstacles322
;final_code_4.c,1020 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1021 :: 		}else{
	GOTO       L_avoidObstacles323
L_avoidObstacles322:
;final_code_4.c,1022 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1023 :: 		}
L_avoidObstacles323:
;final_code_4.c,1024 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1025 :: 		}else{
	GOTO       L_avoidObstacles324
L_avoidObstacles315:
;final_code_4.c,1027 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,1029 :: 		}
L_avoidObstacles324:
;final_code_4.c,1030 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles325
L_avoidObstacles312:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles642
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles642:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles326
;final_code_4.c,1031 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,1032 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,1034 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,1037 :: 		getDis3();
	CALL       _getDis3+0
;final_code_4.c,1038 :: 		getDis2();
	CALL       _getDis2+0
;final_code_4.c,1043 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles643
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles643:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles329
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles644
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles644:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles329
L__avoidObstacles422:
;final_code_4.c,1044 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1045 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_4.c,1046 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1047 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_4.c,1049 :: 		}
L_avoidObstacles329:
;final_code_4.c,1050 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles645
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles645:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles332
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles646
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles646:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles332
L__avoidObstacles421:
;final_code_4.c,1051 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_4.c,1052 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles647
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles647:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles333
;final_code_4.c,1053 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1054 :: 		}else{
	GOTO       L_avoidObstacles334
L_avoidObstacles333:
;final_code_4.c,1055 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1056 :: 		}
L_avoidObstacles334:
;final_code_4.c,1057 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1058 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1059 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles335:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles335
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles335
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles335
	NOP
;final_code_4.c,1060 :: 		while(TMR0_value<15){
L_avoidObstacles336:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles648
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles648:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles337
;final_code_4.c,1061 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,1062 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_4.c,1063 :: 		}
	GOTO       L_avoidObstacles336
L_avoidObstacles337:
;final_code_4.c,1064 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1065 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles338:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles338
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles338
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles338
	NOP
;final_code_4.c,1067 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1068 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1069 :: 		}
L_avoidObstacles332:
;final_code_4.c,1071 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles339
L_avoidObstacles326:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles649
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles649:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles340
;final_code_4.c,1072 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,1073 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,1075 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,1078 :: 		getDis3();
	CALL       _getDis3+0
;final_code_4.c,1079 :: 		getDis2();
	CALL       _getDis2+0
;final_code_4.c,1082 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles650
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles650:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles343
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles651
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles651:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles343
L__avoidObstacles420:
;final_code_4.c,1083 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1084 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_4.c,1085 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1086 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_4.c,1087 :: 		}
L_avoidObstacles343:
;final_code_4.c,1088 :: 		if(TMR0_value>15&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles652
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles652:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles346
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles653
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles653:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles346
L__avoidObstacles419:
;final_code_4.c,1089 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_4.c,1090 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles654
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles654:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles347
;final_code_4.c,1091 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1092 :: 		}else{
	GOTO       L_avoidObstacles348
L_avoidObstacles347:
;final_code_4.c,1093 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1094 :: 		}
L_avoidObstacles348:
;final_code_4.c,1095 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1096 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1097 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles349:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles349
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles349
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles349
	NOP
;final_code_4.c,1098 :: 		while(TMR0_value<15){
L_avoidObstacles350:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles655
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles655:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles351
;final_code_4.c,1099 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_4.c,1100 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_4.c,1101 :: 		}
	GOTO       L_avoidObstacles350
L_avoidObstacles351:
;final_code_4.c,1103 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1104 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1105 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles352:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles352
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles352
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles352
	NOP
;final_code_4.c,1106 :: 		}
L_avoidObstacles346:
;final_code_4.c,1108 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles353
L_avoidObstacles340:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles656
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles656:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles354
;final_code_4.c,1110 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles657
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles657:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles355
;final_code_4.c,1111 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1112 :: 		straight_com();
	CALL       _straight_com+0
;final_code_4.c,1113 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_4.c,1114 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_4.c,1115 :: 		}
L_avoidObstacles355:
;final_code_4.c,1116 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_4.c,1117 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles356
L_avoidObstacles354:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles658
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles658:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles357
;final_code_4.c,1118 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_4.c,1119 :: 		getDis3();
	CALL       _getDis3+0
;final_code_4.c,1120 :: 		getDis2();
	CALL       _getDis2+0
;final_code_4.c,1122 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles659
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles659:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles360
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles660
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles660:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles360
L__avoidObstacles418:
;final_code_4.c,1123 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1124 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_4.c,1125 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1126 :: 		}
L_avoidObstacles360:
;final_code_4.c,1127 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles361
L_avoidObstacles357:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles661
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles661:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles362
;final_code_4.c,1128 :: 		goStraight();
	CALL       _goStraight+0
;final_code_4.c,1129 :: 		getDis3();
	CALL       _getDis3+0
;final_code_4.c,1130 :: 		getDis2();
	CALL       _getDis2+0
;final_code_4.c,1132 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles662
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles662:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles417
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles663
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles663:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles417
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles664
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles664:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles417
	GOTO       L_avoidObstacles365
L__avoidObstacles417:
;final_code_4.c,1133 :: 		stopAll();
	CALL       _stopAll+0
;final_code_4.c,1135 :: 		straight_com();
	CALL       _straight_com+0
;final_code_4.c,1136 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_4.c,1137 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_4.c,1138 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_4.c,1139 :: 		}
L_avoidObstacles365:
;final_code_4.c,1141 :: 		}
L_avoidObstacles362:
L_avoidObstacles361:
L_avoidObstacles356:
L_avoidObstacles353:
L_avoidObstacles339:
L_avoidObstacles325:
;final_code_4.c,1152 :: 		}
	RETURN
; end of _avoidObstacles

_main:

;final_code_4.c,1156 :: 		void main() {
;final_code_4.c,1157 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code_4.c,1158 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code_4.c,1159 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code_4.c,1160 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_4.c,1164 :: 		init_timer();
	CALL       _init_timer+0
;final_code_4.c,1165 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code_4.c,1166 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code_4.c,1168 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code_4.c,1169 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code_4.c,1170 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_4.c,1171 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_4.c,1172 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code_4.c,1173 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code_4.c,1174 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_4.c,1175 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code_4.c,1177 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code_4.c,1178 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code_4.c,1179 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_4.c,1180 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_4.c,1181 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code_4.c,1182 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_4.c,1183 :: 		do{
L_main366:
;final_code_4.c,1184 :: 		moveF();
	CALL       _moveF+0
;final_code_4.c,1185 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_4.c,1186 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_4.c,1187 :: 		}while(value==0);
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main665
	MOVLW      0
	XORWF      R0+0, 0
L__main665:
	BTFSC      STATUS+0, 2
	GOTO       L_main366
;final_code_4.c,1188 :: 		fullSpeed();
	CALL       _fullSpeed+0
;final_code_4.c,1189 :: 		while(1){
L_main369:
;final_code_4.c,1206 :: 		avoidObstacles();
	CALL       _avoidObstacles+0
;final_code_4.c,1208 :: 		Delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_main371:
	DECFSZ     R13+0, 1
	GOTO       L_main371
	NOP
;final_code_4.c,1213 :: 		}
	GOTO       L_main369
;final_code_4.c,1216 :: 		}
	GOTO       $+0
; end of _main
