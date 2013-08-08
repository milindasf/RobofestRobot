
_speedChangeObsF:

;code_added.c,29 :: 		void speedChangeObsF(){
;code_added.c,31 :: 		speed=180;
	MOVLW      180
	MOVWF      _speed+0
	CLRF       _speed+1
;code_added.c,32 :: 		speed1=190;
	MOVLW      190
	MOVWF      _speed1+0
	CLRF       _speed1+1
;code_added.c,33 :: 		speed2=175;
	MOVLW      175
	MOVWF      _speed2+0
	CLRF       _speed2+1
;code_added.c,34 :: 		speed3=165;
	MOVLW      165
	MOVWF      _speed3+0
	CLRF       _speed3+1
;code_added.c,36 :: 		}
	RETURN
; end of _speedChangeObsF

_speedChangeback:

;code_added.c,37 :: 		void speedChangeback(){
;code_added.c,39 :: 		speed=230;
	MOVLW      230
	MOVWF      _speed+0
	CLRF       _speed+1
;code_added.c,40 :: 		speed1=200;
	MOVLW      200
	MOVWF      _speed1+0
	CLRF       _speed1+1
;code_added.c,41 :: 		speed2=225;
	MOVLW      225
	MOVWF      _speed2+0
	CLRF       _speed2+1
;code_added.c,42 :: 		speed3=215;
	MOVLW      215
	MOVWF      _speed3+0
	CLRF       _speed3+1
;code_added.c,46 :: 		}
	RETURN
; end of _speedChangeback

_rotateLeft:

;code_added.c,48 :: 		void rotateLeft(){
;code_added.c,49 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;code_added.c,50 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;code_added.c,51 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,52 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,53 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;code_added.c,54 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;code_added.c,56 :: 		void rotateRight(){
;code_added.c,57 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;code_added.c,58 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;code_added.c,59 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,60 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;code_added.c,61 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;code_added.c,62 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;code_added.c,64 :: 		void moveF(){
;code_added.c,65 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;code_added.c,66 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;code_added.c,67 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,68 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,69 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;code_added.c,70 :: 		}
	RETURN
; end of _moveF

_moveB:

;code_added.c,72 :: 		void moveB(){
;code_added.c,73 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;code_added.c,74 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;code_added.c,75 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,76 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;code_added.c,77 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;code_added.c,78 :: 		}
	RETURN
; end of _moveB

_forward:

;code_added.c,80 :: 		forward(){
;code_added.c,81 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;code_added.c,82 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;code_added.c,83 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,84 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,85 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,86 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,87 :: 		}
	RETURN
; end of _forward

_backward:

;code_added.c,89 :: 		backward(){
;code_added.c,90 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;code_added.c,91 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;code_added.c,92 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,93 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;code_added.c,94 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,95 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,96 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;code_added.c,98 :: 		leftHardTurn(){
;code_added.c,99 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;code_added.c,100 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,101 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;code_added.c,102 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,103 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,104 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,105 :: 		}
	RETURN
; end of _leftHardTurn

_RightHardTurn:

;code_added.c,107 :: 		RightHardTurn(){
;code_added.c,108 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;code_added.c,109 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;code_added.c,110 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;code_added.c,111 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,112 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,113 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,114 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;code_added.c,116 :: 		leftTurn(){
;code_added.c,117 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;code_added.c,118 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,119 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;code_added.c,120 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,121 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,122 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,123 :: 		}
	RETURN
; end of _leftTurn

_leftT:

;code_added.c,124 :: 		leftT(){
;code_added.c,125 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;code_added.c,126 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,127 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;code_added.c,128 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,129 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,130 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,132 :: 		}
	RETURN
; end of _leftT

_RightTurn:

;code_added.c,133 :: 		RightTurn(){
;code_added.c,134 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;code_added.c,135 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,136 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;code_added.c,137 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,138 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,139 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,140 :: 		}
	RETURN
; end of _RightTurn

_rightT:

;code_added.c,142 :: 		rightT(){
;code_added.c,144 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;code_added.c,145 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,146 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;code_added.c,147 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,148 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,149 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,151 :: 		}
	RETURN
; end of _rightT

_leftSoftTurn:

;code_added.c,153 :: 		leftSoftTurn(){
;code_added.c,154 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;code_added.c,155 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,156 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;code_added.c,157 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,158 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,159 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,161 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;code_added.c,163 :: 		rightSoftTurn(){
;code_added.c,164 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;code_added.c,165 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,166 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;code_added.c,167 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;code_added.c,168 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,169 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,170 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;code_added.c,172 :: 		stopAll(){
;code_added.c,173 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;code_added.c,174 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;code_added.c,175 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;code_added.c,176 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;code_added.c,177 :: 		}
	RETURN
; end of _stopAll

_sensorRead:

;code_added.c,179 :: 		sensorRead(){
;code_added.c,181 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;code_added.c,182 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;code_added.c,183 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead443
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead443:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;code_added.c,184 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;code_added.c,185 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;code_added.c,186 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;code_added.c,187 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;code_added.c,188 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;code_added.c,189 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;code_added.c,190 :: 		}
L_sensorRead1:
;code_added.c,191 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead444
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead444:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;code_added.c,192 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;code_added.c,193 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;code_added.c,194 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;code_added.c,195 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;code_added.c,196 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;code_added.c,197 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;code_added.c,198 :: 		}
L_sensorRead3:
;code_added.c,199 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead445
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead445:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;code_added.c,200 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;code_added.c,201 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;code_added.c,202 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;code_added.c,203 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;code_added.c,204 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;code_added.c,205 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;code_added.c,206 :: 		}
L_sensorRead5:
;code_added.c,207 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead446
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead446:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;code_added.c,208 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;code_added.c,209 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;code_added.c,210 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;code_added.c,211 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;code_added.c,212 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;code_added.c,213 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;code_added.c,214 :: 		}
L_sensorRead7:
;code_added.c,216 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead447
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead447:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;code_added.c,217 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;code_added.c,218 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;code_added.c,219 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;code_added.c,220 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;code_added.c,221 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;code_added.c,222 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;code_added.c,223 :: 		}
L_sensorRead9:
;code_added.c,224 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead448
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead448:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;code_added.c,225 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;code_added.c,226 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;code_added.c,227 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,228 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;code_added.c,229 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;code_added.c,230 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;code_added.c,231 :: 		}
L_sensorRead11:
;code_added.c,233 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead449
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead449:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;code_added.c,234 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;code_added.c,235 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;code_added.c,236 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,237 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;code_added.c,238 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;code_added.c,239 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;code_added.c,240 :: 		}
L_sensorRead13:
;code_added.c,241 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead450
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead450:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;code_added.c,242 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;code_added.c,243 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;code_added.c,244 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,245 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;code_added.c,246 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;code_added.c,247 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;code_added.c,248 :: 		}
L_sensorRead15:
;code_added.c,249 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead451
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead451:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;code_added.c,250 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;code_added.c,251 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;code_added.c,252 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,253 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;code_added.c,254 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;code_added.c,255 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;code_added.c,256 :: 		}
L_sensorRead17:
;code_added.c,257 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead452
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead452:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;code_added.c,258 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;code_added.c,259 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;code_added.c,260 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,261 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;code_added.c,262 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;code_added.c,263 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;code_added.c,264 :: 		}
L_sensorRead19:
;code_added.c,265 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead453
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead453:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;code_added.c,266 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;code_added.c,267 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;code_added.c,268 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,269 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;code_added.c,270 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;code_added.c,271 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;code_added.c,272 :: 		}
L_sensorRead21:
;code_added.c,273 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead454
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead454:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;code_added.c,274 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;code_added.c,275 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;code_added.c,276 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,277 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;code_added.c,278 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;code_added.c,279 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;code_added.c,280 :: 		}
L_sensorRead23:
;code_added.c,281 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead455
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead455:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;code_added.c,282 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;code_added.c,283 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;code_added.c,284 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,285 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;code_added.c,286 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;code_added.c,287 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;code_added.c,288 :: 		}
L_sensorRead25:
;code_added.c,289 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead456
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead456:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;code_added.c,290 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;code_added.c,291 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;code_added.c,292 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;code_added.c,293 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;code_added.c,294 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;code_added.c,295 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;code_added.c,296 :: 		}
L_sensorRead27:
;code_added.c,298 :: 		}
	RETURN
; end of _sensorRead

_bin_deci:

;code_added.c,300 :: 		int  bin_deci(){
;code_added.c,302 :: 		int decimal_value=0;
;code_added.c,303 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci457:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci458
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci457
L__bin_deci458:
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
L__bin_deci459:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci460
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci459
L__bin_deci460:
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
L__bin_deci461:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci462
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci461
L__bin_deci462:
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
L__bin_deci463:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci464
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci463
L__bin_deci464:
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
L__bin_deci465:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci466
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci465
L__bin_deci466:
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
;code_added.c,306 :: 		return decimal_value;
;code_added.c,308 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;code_added.c,310 :: 		lineFollow(){
;code_added.c,311 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;code_added.c,312 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;code_added.c,313 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;code_added.c,314 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;code_added.c,315 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,316 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;code_added.c,317 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow467
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow467:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow416
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow468
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow468:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow416
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow469
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow469:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow416
	GOTO       L_lineFollow30
L__lineFollow416:
;code_added.c,318 :: 		forward();
	CALL       _forward+0
;code_added.c,319 :: 		}
	GOTO       L_lineFollow31
L_lineFollow30:
;code_added.c,320 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow470
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow470:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow415
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow471
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow471:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow415
	GOTO       L_lineFollow34
L__lineFollow415:
;code_added.c,321 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;code_added.c,322 :: 		}
	GOTO       L_lineFollow35
L_lineFollow34:
;code_added.c,323 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow472
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow472:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow414
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow473
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow473:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow414
	GOTO       L_lineFollow38
L__lineFollow414:
;code_added.c,324 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;code_added.c,325 :: 		}
	GOTO       L_lineFollow39
L_lineFollow38:
;code_added.c,326 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow474
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow474:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow413
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow475
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow475:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow413
	GOTO       L_lineFollow42
L__lineFollow413:
;code_added.c,327 :: 		rightTurn();
	CALL       _RightTurn+0
;code_added.c,328 :: 		}
	GOTO       L_lineFollow43
L_lineFollow42:
;code_added.c,329 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow476
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow476:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow412
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow477
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow477:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow412
	GOTO       L_lineFollow46
L__lineFollow412:
;code_added.c,330 :: 		leftTurn();
	CALL       _leftTurn+0
;code_added.c,331 :: 		}
	GOTO       L_lineFollow47
L_lineFollow46:
;code_added.c,332 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow478
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow478:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow411
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow479
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow479:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow411
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow480
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow480:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow411
	GOTO       L_lineFollow50
L__lineFollow411:
;code_added.c,333 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,334 :: 		}
	GOTO       L_lineFollow51
L_lineFollow50:
;code_added.c,335 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow481
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow481:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow410
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow482
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow482:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow410
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow483
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow483:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow410
	GOTO       L_lineFollow54
L__lineFollow410:
;code_added.c,336 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,337 :: 		}
	GOTO       L_lineFollow55
L_lineFollow54:
;code_added.c,338 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow484
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow484:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow409
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow485
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow485:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow409
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow486
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow486:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow409
	GOTO       L_lineFollow62
L__lineFollow409:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow487
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow487:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow408
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow488
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow488:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow408
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow489
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow489:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow408
	GOTO       L_lineFollow62
L__lineFollow408:
L__lineFollow407:
;code_added.c,339 :: 		RightTurn();
	CALL       _RightTurn+0
;code_added.c,340 :: 		} else if((sw[0][4]==1 || sw[0][5]==1 || sw[0][3]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow63
L_lineFollow62:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow490
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow490:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow406
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow491
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow491:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow406
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow492
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow492:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow406
	GOTO       L_lineFollow70
L__lineFollow406:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow493
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow493:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow70
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow494
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow494:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow70
L__lineFollow405:
L__lineFollow404:
;code_added.c,341 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,342 :: 		}else if((sw[0][4]==1 || sw[0][5]==1 || sw[0][3]==1) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow71
L_lineFollow70:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow495
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow495:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow403
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow496
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow496:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow403
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow497
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow497:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow403
	GOTO       L_lineFollow78
L__lineFollow403:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow498
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow498:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow78
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow499
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow499:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow78
L__lineFollow402:
L__lineFollow401:
;code_added.c,343 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,344 :: 		}  else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow79
L_lineFollow78:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow500
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow500:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow400
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow501
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow501:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow400
	GOTO       L_lineFollow86
L__lineFollow400:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow502
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow502:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow503
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow503:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow504
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow504:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow86
L__lineFollow399:
L__lineFollow398:
;code_added.c,345 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,346 :: 		}
	GOTO       L_lineFollow87
L_lineFollow86:
;code_added.c,347 :: 		else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow505
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow505:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow397
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow506
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow506:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow397
	GOTO       L_lineFollow94
L__lineFollow397:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow507
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow507:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow508
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow508:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow509
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow509:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow94
L__lineFollow396:
L__lineFollow395:
;code_added.c,348 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,349 :: 		}
	GOTO       L_lineFollow95
L_lineFollow94:
;code_added.c,350 :: 		else if ( (sw[0][2]==1 || sw[0][3]==1) && (sw[0][7]==0 && sw[0][8]==0)){
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow510
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow510:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow394
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow511
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow511:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow394
	GOTO       L_lineFollow102
L__lineFollow394:
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow512
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow512:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow513
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow513:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
L__lineFollow393:
L__lineFollow392:
;code_added.c,351 :: 		rightTurn();
	CALL       _RightTurn+0
;code_added.c,352 :: 		}
	GOTO       L_lineFollow103
L_lineFollow102:
;code_added.c,353 :: 		else if ((sw[0][6]==1 || sw[0][5] ==1) && (sw[0][0]==0 && sw[0][1]==0))  {
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow514
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow514:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow391
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow515
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow515:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow391
	GOTO       L_lineFollow110
L__lineFollow391:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow516
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow516:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow110
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow517
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow517:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow110
L__lineFollow390:
L__lineFollow389:
;code_added.c,354 :: 		leftTurn();
	CALL       _leftTurn+0
;code_added.c,355 :: 		}else if(sw[0][8]==1 && sw[0][7]==1){
	GOTO       L_lineFollow111
L_lineFollow110:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow518
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow518:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow114
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow519
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow519:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow114
L__lineFollow388:
;code_added.c,356 :: 		do{
L_lineFollow115:
;code_added.c,357 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,358 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_lineFollow118:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow118
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow118
	NOP
	NOP
;code_added.c,359 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,361 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,362 :: 		count=count+1;
	INCF       lineFollow_count_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       lineFollow_count_L0+1, 1
;code_added.c,363 :: 		if(count==10){
	MOVLW      0
	XORWF      lineFollow_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow520
	MOVLW      10
	XORWF      lineFollow_count_L0+0, 0
L__lineFollow520:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow119
;code_added.c,364 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,365 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_lineFollow120:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow120
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow120
	DECFSZ     R11+0, 1
	GOTO       L_lineFollow120
	NOP
	NOP
;code_added.c,366 :: 		forward();
	CALL       _forward+0
;code_added.c,367 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_lineFollow121:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow121
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow121
	DECFSZ     R11+0, 1
	GOTO       L_lineFollow121
	NOP
	NOP
;code_added.c,368 :: 		count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;code_added.c,369 :: 		break;
	GOTO       L_lineFollow116
;code_added.c,370 :: 		}
L_lineFollow119:
;code_added.c,371 :: 		}while(!(sw[0][6]==1 || sw[0][5]==1||sw[0][4]==1||sw[0][3]==1));
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow521
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow521:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow123
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow522
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow522:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow123
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow523
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow523:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow123
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow524
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow524:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow123
	CLRF       R0+0
	GOTO       L_lineFollow122
L_lineFollow123:
	MOVLW      1
	MOVWF      R0+0
L_lineFollow122:
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow115
L_lineFollow116:
;code_added.c,372 :: 		}else if(sw[0][0]==1&& sw[0][1]==1){
	GOTO       L_lineFollow124
L_lineFollow114:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow525
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow525:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow127
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow526
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow526:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow127
L__lineFollow387:
;code_added.c,373 :: 		do{
L_lineFollow128:
;code_added.c,374 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,375 :: 		delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_lineFollow131:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow131
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow131
	NOP
	NOP
;code_added.c,376 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,378 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,379 :: 		count_1=count_1+1;
	INCF       lineFollow_count_1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       lineFollow_count_1_L0+1, 1
;code_added.c,380 :: 		if(count_1==10){
	MOVLW      0
	XORWF      lineFollow_count_1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow527
	MOVLW      10
	XORWF      lineFollow_count_1_L0+0, 0
L__lineFollow527:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow132
;code_added.c,381 :: 		count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;code_added.c,382 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,383 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_lineFollow133:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow133
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow133
	DECFSZ     R11+0, 1
	GOTO       L_lineFollow133
	NOP
	NOP
;code_added.c,384 :: 		forward();
	CALL       _forward+0
;code_added.c,385 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_lineFollow134:
	DECFSZ     R13+0, 1
	GOTO       L_lineFollow134
	DECFSZ     R12+0, 1
	GOTO       L_lineFollow134
	DECFSZ     R11+0, 1
	GOTO       L_lineFollow134
	NOP
	NOP
;code_added.c,386 :: 		break;
	GOTO       L_lineFollow129
;code_added.c,387 :: 		}
L_lineFollow132:
;code_added.c,388 :: 		}while(!(sw[0][2]==1 || sw[0][3]==1||sw[0][4]==1 || sw[0][5]==1));
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow528
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow528:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow136
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow529
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow529:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow136
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow530
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow530:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow136
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow531
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow531:
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow136
	CLRF       R0+0
	GOTO       L_lineFollow135
L_lineFollow136:
	MOVLW      1
	MOVWF      R0+0
L_lineFollow135:
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lineFollow128
L_lineFollow129:
;code_added.c,389 :: 		}
L_lineFollow127:
L_lineFollow124:
L_lineFollow111:
L_lineFollow103:
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
;code_added.c,410 :: 		}
	RETURN
; end of _lineFollow

_SemSmallFollow:

;code_added.c,412 :: 		void SemSmallFollow(){
;code_added.c,414 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,415 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow532
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow532:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow533
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow533:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow534
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow534:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow535
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow535:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow536
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow536:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow139
L__SemSmallFollow428:
;code_added.c,416 :: 		moveF();
	CALL       _moveF+0
;code_added.c,417 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow140
L_SemSmallFollow139:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow537
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow537:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow538
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow538:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow539
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow539:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow540
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow540:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow541
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow541:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow143
L__SemSmallFollow427:
;code_added.c,418 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,419 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow144
L_SemSmallFollow143:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow542
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow542:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow543
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow543:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow544
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow544:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow545
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow545:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow546
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow546:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow147
L__SemSmallFollow426:
;code_added.c,420 :: 		moveF();
	CALL       _moveF+0
;code_added.c,421 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow148
L_SemSmallFollow147:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow547
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow547:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow548
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow548:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow549
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow549:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow550
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow550:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow551
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow551:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow151
L__SemSmallFollow425:
;code_added.c,422 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,423 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow152
L_SemSmallFollow151:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow552
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow552:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow553
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow553:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow554
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow554:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow555
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow555:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow556
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow556:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow155
L__SemSmallFollow424:
;code_added.c,424 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,425 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow156
L_SemSmallFollow155:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow557
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow557:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow159
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow558
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow558:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow159
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow559
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow559:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow159
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow560
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow560:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow159
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow561
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow561:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow159
L__SemSmallFollow423:
;code_added.c,427 :: 		moveF();
	CALL       _moveF+0
;code_added.c,428 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow160
L_SemSmallFollow159:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow562
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow562:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow163
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow563
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow563:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow163
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow564
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow564:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow163
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow565
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow565:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow163
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow566
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow566:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow163
L__SemSmallFollow422:
;code_added.c,430 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,431 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow164
L_SemSmallFollow163:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow567
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow567:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow167
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow568
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow568:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow167
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow569
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow569:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow167
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow570
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow570:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow167
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow571
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow571:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow167
L__SemSmallFollow421:
;code_added.c,433 :: 		moveF();
	CALL       _moveF+0
;code_added.c,434 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow168
L_SemSmallFollow167:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow572
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow572:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow171
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow573
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow573:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow171
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow574
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow574:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow171
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow575
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow575:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow171
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow576
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow576:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow171
L__SemSmallFollow420:
;code_added.c,435 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,436 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow172
L_SemSmallFollow171:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow577
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow577:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow175
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow578
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow578:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow175
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow579
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow579:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow175
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow580
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow580:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow175
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow581
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow581:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow175
L__SemSmallFollow419:
;code_added.c,437 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,438 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow176
L_SemSmallFollow175:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow582
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow582:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow179
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow583
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow583:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow179
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow584
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow584:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow179
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow585
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow585:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow179
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow586
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow586:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow179
L__SemSmallFollow418:
;code_added.c,440 :: 		moveF();
	CALL       _moveF+0
;code_added.c,441 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow180
L_SemSmallFollow179:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow587
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow587:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow183
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow588
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow588:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow183
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow589
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow589:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow183
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow590
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow590:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow183
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow591
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow591:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow183
L__SemSmallFollow417:
;code_added.c,442 :: 		moveF();
	CALL       _moveF+0
;code_added.c,443 :: 		}else{
	GOTO       L_SemSmallFollow184
L_SemSmallFollow183:
;code_added.c,444 :: 		moveF();
	CALL       _moveF+0
;code_added.c,445 :: 		}
L_SemSmallFollow184:
L_SemSmallFollow180:
L_SemSmallFollow176:
L_SemSmallFollow172:
L_SemSmallFollow168:
L_SemSmallFollow164:
L_SemSmallFollow160:
L_SemSmallFollow156:
L_SemSmallFollow152:
L_SemSmallFollow148:
L_SemSmallFollow144:
L_SemSmallFollow140:
;code_added.c,447 :: 		}
	RETURN
; end of _SemSmallFollow

_tuneToMiddle:

;code_added.c,449 :: 		int tuneToMiddle(){
;code_added.c,450 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,451 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle592
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle592:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle185
;code_added.c,452 :: 		moveF();
	CALL       _moveF+0
;code_added.c,453 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;code_added.c,454 :: 		}
L_tuneToMiddle185:
;code_added.c,455 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle593
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle593:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle187
;code_added.c,456 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle594
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle594:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle429
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle595
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle595:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle429
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle596
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle596:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle429
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle597
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle597:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle429
	GOTO       L_tuneToMiddle190
L__tuneToMiddle429:
;code_added.c,457 :: 		while(sw[0][4]==0){
L_tuneToMiddle191:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle598
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle598:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle192
;code_added.c,458 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,459 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle599
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle599:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle193
;code_added.c,460 :: 		moveF();
	CALL       _moveF+0
;code_added.c,461 :: 		}else{
	GOTO       L_tuneToMiddle194
L_tuneToMiddle193:
;code_added.c,462 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,463 :: 		}
L_tuneToMiddle194:
;code_added.c,464 :: 		}
	GOTO       L_tuneToMiddle191
L_tuneToMiddle192:
;code_added.c,465 :: 		}
	GOTO       L_tuneToMiddle195
L_tuneToMiddle190:
;code_added.c,467 :: 		while(sw[0][4]==0){
L_tuneToMiddle196:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle600
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle600:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle197
;code_added.c,468 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,469 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle601
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle601:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle198
;code_added.c,470 :: 		moveF();
	CALL       _moveF+0
;code_added.c,471 :: 		}else{
	GOTO       L_tuneToMiddle199
L_tuneToMiddle198:
;code_added.c,472 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,473 :: 		}
L_tuneToMiddle199:
;code_added.c,474 :: 		}
	GOTO       L_tuneToMiddle196
L_tuneToMiddle197:
;code_added.c,475 :: 		}
L_tuneToMiddle195:
;code_added.c,476 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;code_added.c,477 :: 		}
L_tuneToMiddle187:
;code_added.c,479 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;code_added.c,481 :: 		}
	RETURN
; end of _tuneToMiddle

_encoder:

;code_added.c,483 :: 		void encoder(){
;code_added.c,484 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder201
;code_added.c,485 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;code_added.c,487 :: 		}
L_encoder201:
;code_added.c,488 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder204
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder602
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder602:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder204
L__encoder431:
;code_added.c,489 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;code_added.c,490 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;code_added.c,491 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder603
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder603:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder205
;code_added.c,492 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;code_added.c,493 :: 		}else if(rotationMode==2){
	GOTO       L_encoder206
L_encoder205:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder604
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder604:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder207
;code_added.c,494 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;code_added.c,495 :: 		}
L_encoder207:
L_encoder206:
;code_added.c,496 :: 		}
L_encoder204:
;code_added.c,498 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder208
;code_added.c,499 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;code_added.c,500 :: 		}
L_encoder208:
;code_added.c,501 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder211
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder605
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder605:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder211
L__encoder430:
;code_added.c,502 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;code_added.c,503 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;code_added.c,504 :: 		}
L_encoder211:
;code_added.c,505 :: 		}
	RETURN
; end of _encoder

_initEncoder:

;code_added.c,507 :: 		void initEncoder(){
;code_added.c,508 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;code_added.c,509 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;code_added.c,510 :: 		}
	RETURN
; end of _initEncoder

_printClockEncoders:

;code_added.c,512 :: 		void printClockEncoders(){
;code_added.c,513 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders606
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders606:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders212
;code_added.c,514 :: 		Lcd_Chr(2,7,'P');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      80
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,515 :: 		WordToStr(clockEncoder,to_LCD);
	MOVF       _clockEncoder+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _clockEncoder+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,516 :: 		LCD_Out(2, 10, to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,517 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders213
L_printClockEncoders212:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders607
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders607:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders214
;code_added.c,518 :: 		Lcd_Chr(2,7,'N');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      78
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,519 :: 		WordToStr(-clockEncoder,to_LCD);
	MOVF       _clockEncoder+0, 0
	SUBLW      0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _clockEncoder+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       FARG_WordToStr_input+1
	SUBWF      FARG_WordToStr_input+1, 1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,520 :: 		LCD_Out(2, 10, to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,521 :: 		}
L_printClockEncoders214:
L_printClockEncoders213:
;code_added.c,523 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;code_added.c,526 :: 		int getFrontDecimal(){
;code_added.c,527 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,529 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal608:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal609
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal608
L__getFrontDecimal609:
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
L__getFrontDecimal610:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal611
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal610
L__getFrontDecimal611:
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
L__getFrontDecimal612:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal613
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal612
L__getFrontDecimal613:
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
L__getFrontDecimal614:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal615
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal614
L__getFrontDecimal615:
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
L__getFrontDecimal616:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal617
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal616
L__getFrontDecimal617:
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
;code_added.c,530 :: 		return val;
;code_added.c,531 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;code_added.c,532 :: 		int getBackDecimal(){
;code_added.c,533 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,534 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal618:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal619
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal618
L__getBackDecimal619:
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
L__getBackDecimal620:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal621
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal620
L__getBackDecimal621:
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
;code_added.c,535 :: 		return val;
;code_added.c,536 :: 		}
	RETURN
; end of _getBackDecimal

_goStraight:

;code_added.c,538 :: 		void goStraight(){
;code_added.c,544 :: 		moveF();
	CALL       _moveF+0
;code_added.c,545 :: 		if(TMR0_value>20 || TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight622
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight622:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight433
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight623
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight623:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight433
	GOTO       L_goStraight217
L__goStraight433:
;code_added.c,547 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,550 :: 		}
L_goStraight217:
;code_added.c,551 :: 		if(TMR0_value>5&&TMR1_value>5){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight624
	MOVF       _TMR0_value+0, 0
	SUBLW      5
L__goStraight624:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight220
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight625
	MOVF       _TMR1_value+0, 0
	SUBLW      5
L__goStraight625:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight220
L__goStraight432:
;code_added.c,552 :: 		if(((TMR0_value*180)/TMR1_value)>255){
	MOVF       _TMR0_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R0+1
	MOVLW      180
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _TMR1_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      128
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight626
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight626:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight221
;code_added.c,553 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,554 :: 		}else{
	GOTO       L_goStraight222
L_goStraight221:
;code_added.c,555 :: 		PWM2_Set_Duty((TMR0_value*180)/TMR1_value);
	MOVF       _TMR0_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R0+1
	MOVLW      180
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _TMR1_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,556 :: 		}
L_goStraight222:
;code_added.c,558 :: 		if(((TMR1_value*180)/TMR0_value)>255){
	MOVF       _TMR1_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R0+1
	MOVLW      180
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _TMR0_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      128
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight627
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight627:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight223
;code_added.c,559 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,560 :: 		}else{
	GOTO       L_goStraight224
L_goStraight223:
;code_added.c,561 :: 		PWM1_Set_Duty((TMR1_value*180)/TMR0_value);
	MOVF       _TMR1_value+0, 0
	MOVWF      R0+0
	MOVF       _TMR1_value+1, 0
	MOVWF      R0+1
	MOVLW      180
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _TMR0_value+0, 0
	MOVWF      R4+0
	MOVF       _TMR0_value+1, 0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,562 :: 		}
L_goStraight224:
;code_added.c,563 :: 		}
L_goStraight220:
;code_added.c,565 :: 		}
	RETURN
; end of _goStraight

_goStraight_1:

;code_added.c,567 :: 		void goStraight_1(){
;code_added.c,568 :: 		int left=0;
	CLRF       goStraight_1_left_L0+0
	CLRF       goStraight_1_left_L0+1
;code_added.c,569 :: 		int right=0;
	CLRF       goStraight_1_right_L0+0
	CLRF       goStraight_1_right_L0+1
;code_added.c,570 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight_1628
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight_1628:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight_1434
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight_1629
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight_1629:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight_1434
	GOTO       L_goStraight_1227
L__goStraight_1434:
;code_added.c,571 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,572 :: 		}
L_goStraight_1227:
;code_added.c,573 :: 		moveF();
	CALL       _moveF+0
;code_added.c,575 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight_1630
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight_1630:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight_1228
;code_added.c,577 :: 		if(TMR0_value-TMR1_value>=5){
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
	GOTO       L__goStraight_1631
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight_1631:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight_1229
;code_added.c,580 :: 		do{
L_goStraight_1230:
;code_added.c,581 :: 		rightT();
	CALL       _rightT+0
;code_added.c,582 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight_1632
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight_1632:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight_1230
;code_added.c,583 :: 		}
L_goStraight_1229:
;code_added.c,586 :: 		}else{
	GOTO       L_goStraight_1233
L_goStraight_1228:
;code_added.c,588 :: 		if(TMR1_value-TMR0_value>=5){
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
	GOTO       L__goStraight_1633
	MOVLW      5
	SUBWF      R1+0, 0
L__goStraight_1633:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight_1234
;code_added.c,591 :: 		do{
L_goStraight_1235:
;code_added.c,592 :: 		leftT();
	CALL       _leftT+0
;code_added.c,593 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight_1634
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight_1634:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight_1235
;code_added.c,594 :: 		}
L_goStraight_1234:
;code_added.c,599 :: 		}
L_goStraight_1233:
;code_added.c,604 :: 		}
	RETURN
; end of _goStraight_1

_followArrow:

;code_added.c,607 :: 		void followArrow(){
;code_added.c,608 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow635
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow635:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow238
;code_added.c,609 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;code_added.c,610 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow636
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow636:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow239
;code_added.c,611 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,613 :: 		}
L_followArrow239:
;code_added.c,614 :: 		} else if(k==1){
	GOTO       L_followArrow240
L_followArrow238:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow637
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow637:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow241
;code_added.c,615 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,616 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow638
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow638:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow242
;code_added.c,617 :: 		moveF();
	CALL       _moveF+0
;code_added.c,618 :: 		}else{
	GOTO       L_followArrow243
L_followArrow242:
;code_added.c,619 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,621 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,623 :: 		}
L_followArrow243:
;code_added.c,624 :: 		}else if(k==2){
	GOTO       L_followArrow244
L_followArrow241:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow639
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow639:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow245
;code_added.c,625 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;code_added.c,626 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow640
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow640:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow246
;code_added.c,627 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,628 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,630 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,631 :: 		}
L_followArrow246:
;code_added.c,632 :: 		}else if(k==3){
	GOTO       L_followArrow247
L_followArrow245:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow641
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow641:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow248
;code_added.c,633 :: 		moveB();
	CALL       _moveB+0
;code_added.c,634 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow642
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow642:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow249
;code_added.c,635 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,636 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,637 :: 		}
L_followArrow249:
;code_added.c,639 :: 		}else if(k==4){
	GOTO       L_followArrow250
L_followArrow248:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow643
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow643:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow251
;code_added.c,640 :: 		moveF();
	CALL       _moveF+0
;code_added.c,641 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,642 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow644
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow644:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow252
;code_added.c,643 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,644 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,645 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,646 :: 		}
L_followArrow252:
;code_added.c,648 :: 		}else if(k==5){
	GOTO       L_followArrow253
L_followArrow251:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow645
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow645:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow254
;code_added.c,649 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;code_added.c,650 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow646
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow646:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow255
;code_added.c,651 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,652 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,654 :: 		}
L_followArrow255:
;code_added.c,655 :: 		}else if(k==6){
	GOTO       L_followArrow256
L_followArrow254:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow647
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow647:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow257
;code_added.c,656 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,657 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,658 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow648
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow648:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow258
;code_added.c,659 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,660 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow259
L_followArrow258:
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
	GOTO       L__followArrow649
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow649:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow260
;code_added.c,661 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,662 :: 		}else{
	GOTO       L_followArrow261
L_followArrow260:
;code_added.c,663 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,664 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;code_added.c,665 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,666 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,667 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,668 :: 		}
L_followArrow261:
L_followArrow259:
;code_added.c,669 :: 		}else if(k==7){
	GOTO       L_followArrow262
L_followArrow257:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow650
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow650:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow263
;code_added.c,670 :: 		goStraight();
	CALL       _goStraight+0
;code_added.c,671 :: 		sensorRead();
	CALL       _sensorRead+0
;code_added.c,672 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow651
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow651:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow264
;code_added.c,673 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,674 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;code_added.c,675 :: 		}
L_followArrow264:
;code_added.c,677 :: 		}
L_followArrow263:
L_followArrow262:
L_followArrow256:
L_followArrow253:
L_followArrow250:
L_followArrow247:
L_followArrow244:
L_followArrow240:
;code_added.c,678 :: 		}
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

;code_added.c,680 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;code_added.c,681 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt265
;code_added.c,682 :: 		encoder();
	CALL       _encoder+0
;code_added.c,683 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;code_added.c,684 :: 		}
L_interrupt265:
;code_added.c,687 :: 		}
L__interrupt652:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;code_added.c,689 :: 		void init_timer(){
;code_added.c,690 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;code_added.c,691 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;code_added.c,692 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;code_added.c,695 :: 		int pulseIn1(){
;code_added.c,696 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;code_added.c,697 :: 		while(1){
L_pulseIn1266:
;code_added.c,698 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;code_added.c,699 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,700 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1268
	GOTO       L_pulseIn1267
L_pulseIn1268:
;code_added.c,701 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1653
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1653:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1269
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1269:
;code_added.c,702 :: 		}
	GOTO       L_pulseIn1266
L_pulseIn1267:
;code_added.c,703 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;code_added.c,704 :: 		while(1){
L_pulseIn1270:
;code_added.c,705 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;code_added.c,706 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,707 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1272
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1272:
;code_added.c,708 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1654
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1654:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1273
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1273:
;code_added.c,709 :: 		}
	GOTO       L_pulseIn1270
;code_added.c,711 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;code_added.c,713 :: 		int pulseIn2(){
;code_added.c,714 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;code_added.c,715 :: 		while(1){
L_pulseIn2274:
;code_added.c,716 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;code_added.c,717 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,718 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2276
	GOTO       L_pulseIn2275
L_pulseIn2276:
;code_added.c,719 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2655
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2655:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2277
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2277:
;code_added.c,720 :: 		}
	GOTO       L_pulseIn2274
L_pulseIn2275:
;code_added.c,721 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;code_added.c,722 :: 		while(1){
L_pulseIn2278:
;code_added.c,723 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;code_added.c,724 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,725 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2280
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2280:
;code_added.c,726 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2656
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2656:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2281
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2281:
;code_added.c,727 :: 		}
	GOTO       L_pulseIn2278
;code_added.c,728 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;code_added.c,731 :: 		int pulseIn3(){
;code_added.c,732 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;code_added.c,733 :: 		while(1){
L_pulseIn3282:
;code_added.c,734 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;code_added.c,735 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,736 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3284
	GOTO       L_pulseIn3283
L_pulseIn3284:
;code_added.c,737 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3657
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3657:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3285
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3285:
;code_added.c,738 :: 		}
	GOTO       L_pulseIn3282
L_pulseIn3283:
;code_added.c,739 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;code_added.c,740 :: 		while(1){
L_pulseIn3286:
;code_added.c,741 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;code_added.c,742 :: 		Delay_1us();
	CALL       _Delay_1us+0
;code_added.c,743 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3288
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3288:
;code_added.c,744 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3658
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3658:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3289
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3289:
;code_added.c,745 :: 		}
	GOTO       L_pulseIn3286
;code_added.c,746 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;code_added.c,749 :: 		int getDis1(){
;code_added.c,750 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;code_added.c,751 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1290:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1290
	NOP
	NOP
;code_added.c,752 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;code_added.c,753 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1291:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1291
	NOP
	NOP
;code_added.c,754 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;code_added.c,755 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;code_added.c,756 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1292:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1292
	DECFSZ     R12+0, 1
	GOTO       L_getDis1292
	DECFSZ     R11+0, 1
	GOTO       L_getDis1292
	NOP
	NOP
;code_added.c,757 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;code_added.c,759 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;code_added.c,761 :: 		int getDis2(){
;code_added.c,762 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;code_added.c,763 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2293:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2293
	NOP
	NOP
;code_added.c,764 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;code_added.c,765 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2294:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2294
	NOP
	NOP
;code_added.c,766 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;code_added.c,767 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;code_added.c,768 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2295:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2295
	DECFSZ     R12+0, 1
	GOTO       L_getDis2295
	NOP
	NOP
;code_added.c,769 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;code_added.c,771 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;code_added.c,773 :: 		int getDis3(){
;code_added.c,774 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;code_added.c,775 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3296:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3296
	NOP
	NOP
;code_added.c,776 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;code_added.c,777 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3297:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3297
	NOP
	NOP
;code_added.c,778 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;code_added.c,779 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;code_added.c,780 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3298:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3298
	DECFSZ     R12+0, 1
	GOTO       L_getDis3298
	NOP
	NOP
;code_added.c,781 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;code_added.c,783 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;code_added.c,784 :: 		void NidegL(){
;code_added.c,785 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,786 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,787 :: 		while(1){
L_NidegL299:
;code_added.c,788 :: 		if(TMR0_value>22){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL659
	MOVF       _TMR0_value+0, 0
	SUBLW      22
L__NidegL659:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL301
;code_added.c,789 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,790 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,791 :: 		break;
	GOTO       L_NidegL300
;code_added.c,792 :: 		}
L_NidegL301:
;code_added.c,793 :: 		}
	GOTO       L_NidegL299
L_NidegL300:
;code_added.c,794 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;code_added.c,796 :: 		void NidegR(){
;code_added.c,797 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,798 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,799 :: 		while(1){
L_NidegR302:
;code_added.c,800 :: 		if(TMR0_value>17){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR660
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__NidegR660:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR304
;code_added.c,801 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,802 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,803 :: 		break;
	GOTO       L_NidegR303
;code_added.c,804 :: 		}
L_NidegR304:
;code_added.c,805 :: 		}
	GOTO       L_NidegR302
L_NidegR303:
;code_added.c,806 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;code_added.c,808 :: 		void moFEnc(int count){
;code_added.c,809 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,810 :: 		moveF();
	CALL       _moveF+0
;code_added.c,811 :: 		while(1){
L_moFEnc305:
;code_added.c,812 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc661
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc661:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc307
;code_added.c,813 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,814 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,815 :: 		break;
	GOTO       L_moFEnc306
;code_added.c,816 :: 		}
L_moFEnc307:
;code_added.c,817 :: 		}
	GOTO       L_moFEnc305
L_moFEnc306:
;code_added.c,819 :: 		}
	RETURN
; end of _moFEnc

_AllUltrasonicRead:

;code_added.c,822 :: 		void AllUltrasonicRead(){
;code_added.c,824 :: 		getDis2(); // left ultrasonic read
	CALL       _getDis2+0
;code_added.c,825 :: 		WordToStr(counter2,to_LCD);
	MOVF       _counter2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,826 :: 		LCD_Out(1, 11,to_LCD);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,828 :: 		getDis3(); // right ultrasonic read;
	CALL       _getDis3+0
;code_added.c,829 :: 		WordToStr(counter3,to_LCD);
	MOVF       _counter3+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter3+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,830 :: 		LCD_Out(2, 6,to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,831 :: 		Delay_us(1);
	NOP
	NOP
	NOP
	NOP
	NOP
;code_added.c,835 :: 		}
	RETURN
; end of _AllUltrasonicRead

_normalize:

;code_added.c,837 :: 		void normalize(int left,int k){
;code_added.c,839 :: 		med=left;
	MOVF       FARG_normalize_left+0, 0
	MOVWF      normalize_med_L0+0
	MOVF       FARG_normalize_left+1, 0
	MOVWF      normalize_med_L0+1
;code_added.c,840 :: 		WordToStr(med,to_LCD);
	MOVF       FARG_normalize_left+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       FARG_normalize_left+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,841 :: 		Lcd_Out(2,1,to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,844 :: 		if(k==0){
	MOVLW      0
	XORWF      FARG_normalize_k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__normalize662
	MOVLW      0
	XORWF      FARG_normalize_k+0, 0
L__normalize662:
	BTFSS      STATUS+0, 2
	GOTO       L_normalize308
;code_added.c,845 :: 		speedChangeObsF();
	CALL       _speedChangeObsF+0
;code_added.c,846 :: 		med=left;
	MOVF       FARG_normalize_left+0, 0
	MOVWF      normalize_med_L0+0
	MOVF       FARG_normalize_left+1, 0
	MOVWF      normalize_med_L0+1
;code_added.c,847 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,848 :: 		do{
L_normalize309:
;code_added.c,849 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,850 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_normalize312:
	DECFSZ     R13+0, 1
	GOTO       L_normalize312
	DECFSZ     R12+0, 1
	GOTO       L_normalize312
	DECFSZ     R11+0, 1
	GOTO       L_normalize312
	NOP
	NOP
;code_added.c,851 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,852 :: 		}while(TMR0_value<med);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      normalize_med_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__normalize663
	MOVF       normalize_med_L0+0, 0
	SUBWF      _TMR0_value+0, 0
L__normalize663:
	BTFSS      STATUS+0, 0
	GOTO       L_normalize309
;code_added.c,853 :: 		speedChangeback();
	CALL       _speedChangeback+0
;code_added.c,854 :: 		}else if(k==1){
	GOTO       L_normalize313
L_normalize308:
	MOVLW      0
	XORWF      FARG_normalize_k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__normalize664
	MOVLW      1
	XORWF      FARG_normalize_k+0, 0
L__normalize664:
	BTFSS      STATUS+0, 2
	GOTO       L_normalize314
;code_added.c,856 :: 		speedChangeObsF();
	CALL       _speedChangeObsF+0
;code_added.c,857 :: 		med=left;
	MOVF       FARG_normalize_left+0, 0
	MOVWF      normalize_med_L0+0
	MOVF       FARG_normalize_left+1, 0
	MOVWF      normalize_med_L0+1
;code_added.c,858 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,859 :: 		do{
L_normalize315:
;code_added.c,860 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,861 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_normalize318:
	DECFSZ     R13+0, 1
	GOTO       L_normalize318
	DECFSZ     R12+0, 1
	GOTO       L_normalize318
	DECFSZ     R11+0, 1
	GOTO       L_normalize318
	NOP
	NOP
;code_added.c,862 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,863 :: 		}while(TMR0_value<med);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      normalize_med_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__normalize665
	MOVF       normalize_med_L0+0, 0
	SUBWF      _TMR0_value+0, 0
L__normalize665:
	BTFSS      STATUS+0, 0
	GOTO       L_normalize315
;code_added.c,865 :: 		speedChangeback();
	CALL       _speedChangeback+0
;code_added.c,868 :: 		}
L_normalize314:
L_normalize313:
;code_added.c,869 :: 		}
	RETURN
; end of _normalize

_Obs_avoid:

;code_added.c,871 :: 		void Obs_avoid(){
;code_added.c,872 :: 		int thv=200;
	MOVLW      200
	MOVWF      Obs_avoid_thv_L0+0
	MOVLW      0
	MOVWF      Obs_avoid_thv_L0+1
;code_added.c,873 :: 		int encorder_90=16;
	MOVLW      16
	MOVWF      Obs_avoid_encorder_90_L0+0
	MOVLW      0
	MOVWF      Obs_avoid_encorder_90_L0+1
;code_added.c,874 :: 		AllUltrasonicRead();
	CALL       _AllUltrasonicRead+0
;code_added.c,875 :: 		if(counter3>=thv && counter2>=thv){
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid666
	MOVF       Obs_avoid_thv_L0+0, 0
	SUBWF      _counter3+0, 0
L__Obs_avoid666:
	BTFSS      STATUS+0, 0
	GOTO       L_Obs_avoid321
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid667
	MOVF       Obs_avoid_thv_L0+0, 0
	SUBWF      _counter2+0, 0
L__Obs_avoid667:
	BTFSS      STATUS+0, 0
	GOTO       L_Obs_avoid321
L__Obs_avoid439:
;code_added.c,876 :: 		forward();
	CALL       _forward+0
;code_added.c,877 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Obs_avoid322:
	DECFSZ     R13+0, 1
	GOTO       L_Obs_avoid322
	DECFSZ     R12+0, 1
	GOTO       L_Obs_avoid322
	DECFSZ     R11+0, 1
	GOTO       L_Obs_avoid322
	NOP
	NOP
;code_added.c,878 :: 		if(count_4==0){
	MOVLW      0
	XORWF      _count_4+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid668
	MOVLW      0
	XORWF      _count_4+0, 0
L__Obs_avoid668:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid323
;code_added.c,879 :: 		state3=0;
	CLRF       _state3+0
	CLRF       _state3+1
;code_added.c,880 :: 		count_4=1;
	MOVLW      1
	MOVWF      _count_4+0
	MOVLW      0
	MOVWF      _count_4+1
;code_added.c,881 :: 		}else{
	GOTO       L_Obs_avoid324
L_Obs_avoid323:
;code_added.c,882 :: 		state3=1;
	MOVLW      1
	MOVWF      _state3+0
	MOVLW      0
	MOVWF      _state3+1
;code_added.c,883 :: 		}
L_Obs_avoid324:
;code_added.c,885 :: 		}else if(turn_state==0){
	GOTO       L_Obs_avoid325
L_Obs_avoid321:
	MOVLW      0
	XORWF      _turn_state+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid669
	MOVLW      0
	XORWF      _turn_state+0, 0
L__Obs_avoid669:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid326
;code_added.c,886 :: 		if(turn_state_1==1){
	MOVLW      0
	XORWF      _turn_state_1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid670
	MOVLW      1
	XORWF      _turn_state_1+0, 0
L__Obs_avoid670:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid327
;code_added.c,887 :: 		normalize(temp,1);
	MOVF       _temp+0, 0
	MOVWF      FARG_normalize_left+0
	MOVF       _temp+1, 0
	MOVWF      FARG_normalize_left+1
	MOVLW      1
	MOVWF      FARG_normalize_k+0
	MOVLW      0
	MOVWF      FARG_normalize_k+1
	CALL       _normalize+0
;code_added.c,888 :: 		turn_state_1=0;
	CLRF       _turn_state_1+0
	CLRF       _turn_state_1+1
;code_added.c,889 :: 		if(state3==0){
	MOVLW      0
	XORWF      _state3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid671
	MOVLW      0
	XORWF      _state3+0, 0
L__Obs_avoid671:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid328
;code_added.c,890 :: 		turn_state=0;
	CLRF       _turn_state+0
	CLRF       _turn_state+1
;code_added.c,891 :: 		state3=1;
	MOVLW      1
	MOVWF      _state3+0
	MOVLW      0
	MOVWF      _state3+1
;code_added.c,892 :: 		}else{
	GOTO       L_Obs_avoid329
L_Obs_avoid328:
;code_added.c,893 :: 		turn_state=0;
	CLRF       _turn_state+0
	CLRF       _turn_state+1
;code_added.c,894 :: 		}
L_Obs_avoid329:
;code_added.c,895 :: 		}else{
	GOTO       L_Obs_avoid330
L_Obs_avoid327:
;code_added.c,896 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,897 :: 		speedChangeObsF();
	CALL       _speedChangeObsF+0
;code_added.c,898 :: 		do{
L_Obs_avoid331:
;code_added.c,899 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;code_added.c,900 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_Obs_avoid334:
	DECFSZ     R13+0, 1
	GOTO       L_Obs_avoid334
	DECFSZ     R12+0, 1
	GOTO       L_Obs_avoid334
	DECFSZ     R11+0, 1
	GOTO       L_Obs_avoid334
	NOP
	NOP
;code_added.c,901 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,902 :: 		AllUltrasonicRead();
	CALL       _AllUltrasonicRead+0
;code_added.c,903 :: 		WordToStr(TMR0_value,to_LCD);
	MOVF       _TMR0_value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _TMR0_value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,904 :: 		Lcd_Out(2,1,to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,905 :: 		}while((counter2<=thv || counter3<=thv) && TMR0_value<=encorder_90);
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid672
	MOVF       _counter2+0, 0
	SUBWF      Obs_avoid_thv_L0+0, 0
L__Obs_avoid672:
	BTFSC      STATUS+0, 0
	GOTO       L__Obs_avoid438
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid673
	MOVF       _counter3+0, 0
	SUBWF      Obs_avoid_thv_L0+0, 0
L__Obs_avoid673:
	BTFSC      STATUS+0, 0
	GOTO       L__Obs_avoid438
	GOTO       L__Obs_avoid437
L__Obs_avoid438:
	MOVLW      128
	XORWF      Obs_avoid_encorder_90_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid674
	MOVF       _TMR0_value+0, 0
	SUBWF      Obs_avoid_encorder_90_L0+0, 0
L__Obs_avoid674:
	BTFSS      STATUS+0, 0
	GOTO       L__Obs_avoid437
	GOTO       L_Obs_avoid331
L__Obs_avoid437:
;code_added.c,907 :: 		temp=TMR0_value;
	MOVF       _TMR0_value+0, 0
	MOVWF      _temp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _temp+1
;code_added.c,908 :: 		speedChangeback();
	CALL       _speedChangeback+0
;code_added.c,909 :: 		turn_state_1=1;
	MOVLW      1
	MOVWF      _turn_state_1+0
	MOVLW      0
	MOVWF      _turn_state_1+1
;code_added.c,910 :: 		turn_state=1;
	MOVLW      1
	MOVWF      _turn_state+0
	MOVLW      0
	MOVWF      _turn_state+1
;code_added.c,912 :: 		}
L_Obs_avoid330:
;code_added.c,913 :: 		state3=0;
	CLRF       _state3+0
	CLRF       _state3+1
;code_added.c,915 :: 		}else if(turn_state==1){
	GOTO       L_Obs_avoid339
L_Obs_avoid326:
	MOVLW      0
	XORWF      _turn_state+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid675
	MOVLW      1
	XORWF      _turn_state+0, 0
L__Obs_avoid675:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid340
;code_added.c,916 :: 		if(turn_state_1==1){
	MOVLW      0
	XORWF      _turn_state_1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid676
	MOVLW      1
	XORWF      _turn_state_1+0, 0
L__Obs_avoid676:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid341
;code_added.c,917 :: 		normalize(temp,0);
	MOVF       _temp+0, 0
	MOVWF      FARG_normalize_left+0
	MOVF       _temp+1, 0
	MOVWF      FARG_normalize_left+1
	CLRF       FARG_normalize_k+0
	CLRF       FARG_normalize_k+1
	CALL       _normalize+0
;code_added.c,918 :: 		turn_state_1=0;
	CLRF       _turn_state_1+0
	CLRF       _turn_state_1+1
;code_added.c,919 :: 		if(state3==0){
	MOVLW      0
	XORWF      _state3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid677
	MOVLW      0
	XORWF      _state3+0, 0
L__Obs_avoid677:
	BTFSS      STATUS+0, 2
	GOTO       L_Obs_avoid342
;code_added.c,920 :: 		turn_state=1;
	MOVLW      1
	MOVWF      _turn_state+0
	MOVLW      0
	MOVWF      _turn_state+1
;code_added.c,921 :: 		state3=1;
	MOVLW      1
	MOVWF      _state3+0
	MOVLW      0
	MOVWF      _state3+1
;code_added.c,922 :: 		}else{
	GOTO       L_Obs_avoid343
L_Obs_avoid342:
;code_added.c,923 :: 		turn_state=1;
	MOVLW      1
	MOVWF      _turn_state+0
	MOVLW      0
	MOVWF      _turn_state+1
;code_added.c,924 :: 		}
L_Obs_avoid343:
;code_added.c,925 :: 		}else{
	GOTO       L_Obs_avoid344
L_Obs_avoid341:
;code_added.c,926 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,927 :: 		speedChangeObsF();
	CALL       _speedChangeObsF+0
;code_added.c,929 :: 		do{
L_Obs_avoid345:
;code_added.c,930 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;code_added.c,931 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_Obs_avoid348:
	DECFSZ     R13+0, 1
	GOTO       L_Obs_avoid348
	DECFSZ     R12+0, 1
	GOTO       L_Obs_avoid348
	DECFSZ     R11+0, 1
	GOTO       L_Obs_avoid348
	NOP
	NOP
;code_added.c,932 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,933 :: 		AllUltrasonicRead();
	CALL       _AllUltrasonicRead+0
;code_added.c,934 :: 		WordToStr(TMR0_value,to_LCD);
	MOVF       _TMR0_value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _TMR0_value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,935 :: 		Lcd_Out(2,1,to_LCD);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,936 :: 		}while((counter2<=thv || counter3<=thv) && TMR0_value<=encorder_90);
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid678
	MOVF       _counter2+0, 0
	SUBWF      Obs_avoid_thv_L0+0, 0
L__Obs_avoid678:
	BTFSC      STATUS+0, 0
	GOTO       L__Obs_avoid436
	MOVLW      128
	XORWF      Obs_avoid_thv_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid679
	MOVF       _counter3+0, 0
	SUBWF      Obs_avoid_thv_L0+0, 0
L__Obs_avoid679:
	BTFSC      STATUS+0, 0
	GOTO       L__Obs_avoid436
	GOTO       L__Obs_avoid435
L__Obs_avoid436:
	MOVLW      128
	XORWF      Obs_avoid_encorder_90_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Obs_avoid680
	MOVF       _TMR0_value+0, 0
	SUBWF      Obs_avoid_encorder_90_L0+0, 0
L__Obs_avoid680:
	BTFSS      STATUS+0, 0
	GOTO       L__Obs_avoid435
	GOTO       L_Obs_avoid345
L__Obs_avoid435:
;code_added.c,938 :: 		temp=TMR0_value;
	MOVF       _TMR0_value+0, 0
	MOVWF      _temp+0
	MOVF       _TMR0_value+1, 0
	MOVWF      _temp+1
;code_added.c,939 :: 		speedChangeback();
	CALL       _speedChangeback+0
;code_added.c,940 :: 		turn_state_1=1;
	MOVLW      1
	MOVWF      _turn_state_1+0
	MOVLW      0
	MOVWF      _turn_state_1+1
;code_added.c,941 :: 		turn_state=0;
	CLRF       _turn_state+0
	CLRF       _turn_state+1
;code_added.c,943 :: 		}
L_Obs_avoid344:
;code_added.c,944 :: 		state3=0;
	CLRF       _state3+0
	CLRF       _state3+1
;code_added.c,945 :: 		}
L_Obs_avoid340:
L_Obs_avoid339:
L_Obs_avoid325:
;code_added.c,948 :: 		}
	RETURN
; end of _Obs_avoid

_avoidObstacles:

;code_added.c,950 :: 		void avoidObstacles(){
;code_added.c,951 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,952 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,953 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;code_added.c,955 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles681
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles681:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles353
;code_added.c,956 :: 		getDis3();
	CALL       _getDis3+0
;code_added.c,957 :: 		getDis2();
	CALL       _getDis2+0
;code_added.c,958 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles682
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles682:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles442
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles683
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles683:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles442
	GOTO       L_avoidObstacles356
L__avoidObstacles442:
;code_added.c,959 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,960 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,961 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,962 :: 		while(clockEncoder!=0){
L_avoidObstacles357:
	MOVLW      0
	XORWF      _clockEncoder+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles684
	MOVLW      0
	XORWF      _clockEncoder+0, 0
L__avoidObstacles684:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles358
;code_added.c,963 :: 		if(clockEncoder>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles685
	MOVF       _clockEncoder+0, 0
	SUBLW      0
L__avoidObstacles685:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles359
;code_added.c,964 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,965 :: 		}else if(clockEncoder<0){
	GOTO       L_avoidObstacles360
L_avoidObstacles359:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles686
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles686:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles361
;code_added.c,966 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,967 :: 		}
L_avoidObstacles361:
L_avoidObstacles360:
;code_added.c,968 :: 		}
	GOTO       L_avoidObstacles357
L_avoidObstacles358:
;code_added.c,969 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,970 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles362:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles362
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles362
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles362
	NOP
;code_added.c,971 :: 		Lcd_Chr(2,5,'0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,972 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles687
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__avoidObstacles687:
	BTFSS      STATUS+0, 0
	GOTO       L_avoidObstacles363
;code_added.c,973 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,974 :: 		}else{
	GOTO       L_avoidObstacles364
L_avoidObstacles363:
;code_added.c,975 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,976 :: 		}
L_avoidObstacles364:
;code_added.c,977 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,978 :: 		}else{
	GOTO       L_avoidObstacles365
L_avoidObstacles356:
;code_added.c,979 :: 		moveF();
	CALL       _moveF+0
;code_added.c,980 :: 		Lcd_Chr(2,5,'B');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      66
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,981 :: 		}
L_avoidObstacles365:
;code_added.c,982 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles366
L_avoidObstacles353:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles688
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles688:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles367
;code_added.c,983 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,984 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,985 :: 		Lcd_Chr(2,5,'1');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,986 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,989 :: 		getDis3();
	CALL       _getDis3+0
;code_added.c,990 :: 		getDis2();
	CALL       _getDis2+0
;code_added.c,995 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles689
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles689:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles370
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles690
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles690:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles370
L__avoidObstacles441:
;code_added.c,996 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,997 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;code_added.c,998 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,1000 :: 		}
L_avoidObstacles370:
;code_added.c,1001 :: 		if(TMR0_value>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles691
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles691:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles371
;code_added.c,1002 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,1003 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,1004 :: 		while(TMR0_value<15){
L_avoidObstacles372:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles692
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles692:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles373
;code_added.c,1005 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,1006 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;code_added.c,1007 :: 		}
	GOTO       L_avoidObstacles372
L_avoidObstacles373:
;code_added.c,1009 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,1010 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,1011 :: 		}
L_avoidObstacles371:
;code_added.c,1013 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles374
L_avoidObstacles367:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles693
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles693:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles375
;code_added.c,1014 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,1015 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,1016 :: 		Lcd_Chr(2,5,'2');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      50
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,1017 :: 		rotateLeft();
	CALL       _rotateLeft+0
;code_added.c,1020 :: 		getDis3();
	CALL       _getDis3+0
;code_added.c,1021 :: 		getDis2();
	CALL       _getDis2+0
;code_added.c,1024 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles694
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles694:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles378
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles695
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles695:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles378
L__avoidObstacles440:
;code_added.c,1025 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,1026 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;code_added.c,1027 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,1028 :: 		}
L_avoidObstacles378:
;code_added.c,1029 :: 		if(TMR0_value>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles696
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__avoidObstacles696:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles379
;code_added.c,1030 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;code_added.c,1031 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,1032 :: 		while(TMR0_value<15){
L_avoidObstacles380:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles697
	MOVLW      15
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles697:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles381
;code_added.c,1033 :: 		rotateRight();
	CALL       _rotateRight+0
;code_added.c,1034 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;code_added.c,1035 :: 		}
	GOTO       L_avoidObstacles380
L_avoidObstacles381:
;code_added.c,1037 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,1038 :: 		stopAll();
	CALL       _stopAll+0
;code_added.c,1039 :: 		}
L_avoidObstacles379:
;code_added.c,1041 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles382
L_avoidObstacles375:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles698
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles698:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles383
;code_added.c,1042 :: 		Lcd_Chr(2,5,'3');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      51
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;code_added.c,1043 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;code_added.c,1044 :: 		}
L_avoidObstacles383:
L_avoidObstacles382:
L_avoidObstacles374:
L_avoidObstacles366:
;code_added.c,1047 :: 		WordToStr(counter3,to_LCD);
	MOVF       _counter3+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter3+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,1048 :: 		LCD_Out(1, 1, to_LCD);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,1050 :: 		WordToStr(counter2,to_LCD);
	MOVF       _counter2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _counter2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;code_added.c,1051 :: 		LCD_Out(1, 10, to_LCD);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;code_added.c,1056 :: 		}
	RETURN
; end of _avoidObstacles

_main:

;code_added.c,1058 :: 		void main() {
;code_added.c,1060 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;code_added.c,1061 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;code_added.c,1062 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;code_added.c,1063 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;code_added.c,1064 :: 		Lcd_init(); // Initialize LCD
	CALL       _Lcd_Init+0
;code_added.c,1065 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;code_added.c,1066 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;code_added.c,1067 :: 		init_timer();
	CALL       _init_timer+0
;code_added.c,1068 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;code_added.c,1069 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;code_added.c,1071 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;code_added.c,1072 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;code_added.c,1073 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;code_added.c,1074 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;code_added.c,1075 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;code_added.c,1076 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;code_added.c,1077 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;code_added.c,1078 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;code_added.c,1080 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;code_added.c,1081 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;code_added.c,1082 :: 		initEncoder();
	CALL       _initEncoder+0
;code_added.c,1084 :: 		init_timer();
	CALL       _init_timer+0
;code_added.c,1086 :: 		while(1){
L_main384:
;code_added.c,1110 :: 		goStraight_1();
	CALL       _goStraight_1+0
;code_added.c,1159 :: 		Delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_main386:
	DECFSZ     R13+0, 1
	GOTO       L_main386
	NOP
;code_added.c,1164 :: 		}
	GOTO       L_main384
;code_added.c,1167 :: 		}
	GOTO       $+0
; end of _main
