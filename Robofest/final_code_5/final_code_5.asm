
_fullSpeed:

;final_code_5.c,25 :: 		void fullSpeed(){
;final_code_5.c,27 :: 		speed =255;
	MOVLW      255
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_5.c,28 :: 		speed1=235;
	MOVLW      235
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_5.c,29 :: 		speed2=250;
	MOVLW      250
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_5.c,30 :: 		speed3=230;     //speed1=225;
	MOVLW      230
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_5.c,34 :: 		}
	RETURN
; end of _fullSpeed

_mediumSpeed:

;final_code_5.c,35 :: 		void mediumSpeed(){
;final_code_5.c,36 :: 		speed =230;
	MOVLW      230
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_5.c,37 :: 		speed1=200;
	MOVLW      200
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_5.c,38 :: 		speed2=225;
	MOVLW      225
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_5.c,39 :: 		speed3=205;     //speed1=225;
	MOVLW      205
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_5.c,40 :: 		}
	RETURN
; end of _mediumSpeed

_arrow_speed:

;final_code_5.c,42 :: 		void arrow_speed(){
;final_code_5.c,43 :: 		speed =170;
	MOVLW      170
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_5.c,44 :: 		speed1=170;
	MOVLW      170
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_5.c,45 :: 		speed2=180;
	MOVLW      180
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_5.c,46 :: 		speed3=180;     //speed1=225;
	MOVLW      180
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_5.c,47 :: 		}
	RETURN
; end of _arrow_speed

_rotateLeft:

;final_code_5.c,50 :: 		void rotateLeft(){
;final_code_5.c,51 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_5.c,52 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_5.c,53 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,54 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,55 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_5.c,56 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code_5.c,58 :: 		void rotateRight(){
;final_code_5.c,59 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_5.c,60 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_5.c,61 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,62 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_5.c,63 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_5.c,64 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code_5.c,66 :: 		void moveF(){
;final_code_5.c,67 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_5.c,68 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_5.c,69 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,70 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,71 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_5.c,72 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code_5.c,74 :: 		void moveB(){
;final_code_5.c,75 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_5.c,76 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_5.c,77 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,78 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_5.c,79 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_5.c,80 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code_5.c,82 :: 		forward(){
;final_code_5.c,83 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_5.c,84 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_5.c,85 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,86 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,87 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,88 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,89 :: 		}
	RETURN
; end of _forward

_backward:

;final_code_5.c,91 :: 		backward(){
;final_code_5.c,92 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_5.c,93 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_5.c,94 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,95 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_5.c,96 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,97 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,98 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code_5.c,100 :: 		leftHardTurn(){
;final_code_5.c,101 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_5.c,102 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,103 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,104 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,105 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,106 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,107 :: 		}
	RETURN
; end of _leftHardTurn

_leftHardT:

;final_code_5.c,109 :: 		leftHardT(){
;final_code_5.c,110 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_5.c,111 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,112 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,113 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,114 :: 		}
	RETURN
; end of _leftHardT

_RightHardTurn:

;final_code_5.c,116 :: 		RightHardTurn(){
;final_code_5.c,117 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,118 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_5.c,119 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_5.c,120 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,121 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,122 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,123 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code_5.c,125 :: 		leftTurn(){
;final_code_5.c,126 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,127 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,128 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,129 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,130 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,131 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,132 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code_5.c,134 :: 		RightTurn(){
;final_code_5.c,135 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_5.c,136 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,137 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_5.c,138 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,139 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,140 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,141 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code_5.c,143 :: 		leftSoftTurn(){
;final_code_5.c,144 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_5.c,145 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,146 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_5.c,147 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,148 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,149 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,151 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code_5.c,153 :: 		rightSoftTurn(){
;final_code_5.c,154 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,155 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,156 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_5.c,157 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,158 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,159 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,160 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code_5.c,162 :: 		stopAll(){
;final_code_5.c,163 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,164 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,165 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,166 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,167 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code_5.c,169 :: 		leftT(){
;final_code_5.c,170 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,171 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,172 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,173 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,174 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,175 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,177 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code_5.c,179 :: 		rightT(){
;final_code_5.c,181 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_5.c,182 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,183 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_5.c,184 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,185 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,186 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,188 :: 		}
	RETURN
; end of _rightT

_leftT2:

;final_code_5.c,190 :: 		leftT2(){
;final_code_5.c,191 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_5.c,192 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,193 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_5.c,194 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_5.c,196 :: 		}
	RETURN
; end of _leftT2

_rightT2:

;final_code_5.c,198 :: 		rightT2(){
;final_code_5.c,200 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_5.c,201 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_5.c,202 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_5.c,203 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_5.c,205 :: 		}
	RETURN
; end of _rightT2

_sensorRead:

;final_code_5.c,207 :: 		sensorRead(){
;final_code_5.c,209 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code_5.c,210 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code_5.c,211 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead647
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead647:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code_5.c,212 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code_5.c,213 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code_5.c,214 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_5.c,215 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code_5.c,216 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code_5.c,217 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code_5.c,218 :: 		}
L_sensorRead1:
;final_code_5.c,219 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead648
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead648:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code_5.c,220 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code_5.c,221 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code_5.c,222 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_5.c,223 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code_5.c,224 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code_5.c,225 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code_5.c,226 :: 		}
L_sensorRead3:
;final_code_5.c,227 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead649
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead649:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code_5.c,228 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code_5.c,229 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code_5.c,230 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_5.c,231 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code_5.c,232 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code_5.c,233 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code_5.c,234 :: 		}
L_sensorRead5:
;final_code_5.c,235 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead650
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead650:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code_5.c,236 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code_5.c,237 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code_5.c,238 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_5.c,239 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code_5.c,240 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code_5.c,241 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code_5.c,242 :: 		}
L_sensorRead7:
;final_code_5.c,244 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead651
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead651:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code_5.c,245 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code_5.c,246 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code_5.c,247 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_5.c,248 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code_5.c,249 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code_5.c,250 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code_5.c,251 :: 		}
L_sensorRead9:
;final_code_5.c,252 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead652
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead652:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code_5.c,253 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code_5.c,254 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code_5.c,255 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,256 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code_5.c,257 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code_5.c,258 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code_5.c,259 :: 		}
L_sensorRead11:
;final_code_5.c,261 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead653
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead653:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code_5.c,262 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code_5.c,263 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code_5.c,264 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,265 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code_5.c,266 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code_5.c,267 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code_5.c,268 :: 		}
L_sensorRead13:
;final_code_5.c,269 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead654
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead654:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code_5.c,270 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code_5.c,271 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code_5.c,272 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,273 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code_5.c,274 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code_5.c,275 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code_5.c,276 :: 		}
L_sensorRead15:
;final_code_5.c,277 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead655
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead655:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code_5.c,278 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code_5.c,279 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code_5.c,280 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,281 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code_5.c,282 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code_5.c,283 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code_5.c,284 :: 		}
L_sensorRead17:
;final_code_5.c,285 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead656
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead656:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code_5.c,286 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code_5.c,287 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code_5.c,288 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,289 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code_5.c,290 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code_5.c,291 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code_5.c,292 :: 		}
L_sensorRead19:
;final_code_5.c,293 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead657
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead657:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code_5.c,294 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code_5.c,295 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code_5.c,296 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,297 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code_5.c,298 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code_5.c,299 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code_5.c,300 :: 		}
L_sensorRead21:
;final_code_5.c,301 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead658
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead658:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code_5.c,302 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code_5.c,303 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code_5.c,304 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,305 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code_5.c,306 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code_5.c,307 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code_5.c,308 :: 		}
L_sensorRead23:
;final_code_5.c,309 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead659
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead659:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code_5.c,310 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code_5.c,311 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code_5.c,312 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,313 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code_5.c,314 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code_5.c,315 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code_5.c,316 :: 		}
L_sensorRead25:
;final_code_5.c,317 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead660
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead660:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code_5.c,318 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code_5.c,319 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code_5.c,320 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_5.c,321 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code_5.c,322 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code_5.c,323 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code_5.c,324 :: 		}
L_sensorRead27:
;final_code_5.c,326 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code_5.c,328 :: 		void printToLcd(){
;final_code_5.c,329 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code_5.c,330 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd661
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd661:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code_5.c,331 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code_5.c,332 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code_5.c,334 :: 		int  bin_deci(){
;final_code_5.c,336 :: 		int decimal_value=0;
;final_code_5.c,337 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci662:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci663
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci662
L__bin_deci663:
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
L__bin_deci664:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci665
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci664
L__bin_deci665:
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
L__bin_deci666:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci667
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci666
L__bin_deci667:
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
L__bin_deci668:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci669
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci668
L__bin_deci669:
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
L__bin_deci670:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci671
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci670
L__bin_deci671:
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
;final_code_5.c,338 :: 		return decimal_value;
;final_code_5.c,340 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code_5.c,342 :: 		lineFollow(){
;final_code_5.c,343 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code_5.c,344 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code_5.c,345 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code_5.c,346 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code_5.c,347 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,348 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_5.c,349 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow672
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow672:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow580
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow673
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow673:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow580
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow674
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow674:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow580
	GOTO       L_lineFollow33
L__lineFollow580:
;final_code_5.c,350 :: 		forward();
	CALL       _forward+0
;final_code_5.c,351 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code_5.c,352 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow675
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow675:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow579
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow676
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow676:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow579
	GOTO       L_lineFollow37
L__lineFollow579:
;final_code_5.c,353 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code_5.c,354 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code_5.c,355 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow677
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow677:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow578
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow678
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow678:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow578
	GOTO       L_lineFollow41
L__lineFollow578:
;final_code_5.c,356 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code_5.c,357 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code_5.c,358 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow679
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow679:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow577
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow680
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow680:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow577
	GOTO       L_lineFollow45
L__lineFollow577:
;final_code_5.c,359 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code_5.c,360 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,361 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code_5.c,362 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow681
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow681:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow576
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow682
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow682:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow576
	GOTO       L_lineFollow49
L__lineFollow576:
;final_code_5.c,363 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_5.c,364 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,365 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code_5.c,366 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow683
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow683:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow575
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow684
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow684:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow575
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow685
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow685:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow575
	GOTO       L_lineFollow53
L__lineFollow575:
;final_code_5.c,367 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_5.c,368 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,369 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code_5.c,370 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow686
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow686:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow574
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow687
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow687:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow574
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow688
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow688:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow574
	GOTO       L_lineFollow57
L__lineFollow574:
;final_code_5.c,371 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_5.c,372 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,373 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code_5.c,374 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow689
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow689:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow573
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow690
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow690:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow573
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow691
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow691:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow573
	GOTO       L_lineFollow65
L__lineFollow573:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow692
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow692:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow572
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow693
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow693:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow572
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow694
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow694:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow572
	GOTO       L_lineFollow65
L__lineFollow572:
L__lineFollow571:
;final_code_5.c,375 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_5.c,376 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,378 :: 		}else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow695
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow695:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow570
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow696
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow696:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow570
	GOTO       L_lineFollow73
L__lineFollow570:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow697
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow697:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow698
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow698:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow699
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow699:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow569:
L__lineFollow568:
;final_code_5.c,379 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_5.c,380 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,381 :: 		}else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow74
L_lineFollow73:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow700
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow700:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow567
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow701
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow701:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow567
	GOTO       L_lineFollow81
L__lineFollow567:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow702
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow702:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow703
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow703:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow704
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow704:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow566:
L__lineFollow565:
;final_code_5.c,382 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_5.c,383 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,384 :: 		}else if(((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow705
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow705:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow564
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow706
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow706:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow564
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow707
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow707:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow564
	GOTO       L_lineFollow89
L__lineFollow564:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow708
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow708:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow709
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow709:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow563:
L__lineFollow562:
;final_code_5.c,385 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_5.c,386 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,387 :: 		}else if((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow90
L_lineFollow89:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow710
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow710:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow561
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow711
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow711:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow561
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow712
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow712:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow561
	GOTO       L_lineFollow97
L__lineFollow561:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow713
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow713:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow714
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow714:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow560:
L__lineFollow559:
;final_code_5.c,388 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_5.c,389 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_5.c,390 :: 		}else if(value==511){
	GOTO       L_lineFollow98
L_lineFollow97:
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow715
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow715:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code_5.c,391 :: 		forward();
	CALL       _forward+0
;final_code_5.c,392 :: 		delay_ms(200);
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
;final_code_5.c,393 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,395 :: 		}else {
	GOTO       L_lineFollow101
L_lineFollow99:
;final_code_5.c,396 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow716
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow716:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
;final_code_5.c,397 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_5.c,398 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow103
L_lineFollow102:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow717
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow717:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow104
;final_code_5.c,399 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_5.c,400 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow105
L_lineFollow104:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow718
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow718:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow106
;final_code_5.c,401 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_5.c,402 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow107
L_lineFollow106:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow719
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow719:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow108
;final_code_5.c,403 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_5.c,404 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow109
L_lineFollow108:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow720
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow720:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow110
;final_code_5.c,405 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_5.c,406 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow111
L_lineFollow110:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow721
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow721:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow112
;final_code_5.c,407 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_5.c,408 :: 		}
L_lineFollow112:
L_lineFollow111:
L_lineFollow109:
L_lineFollow107:
L_lineFollow105:
L_lineFollow103:
;final_code_5.c,409 :: 		}
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
;final_code_5.c,410 :: 		}
	RETURN
; end of _lineFollow

_initEncoder:

;final_code_5.c,413 :: 		void initEncoder(){
;final_code_5.c,414 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code_5.c,415 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code_5.c,416 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code_5.c,419 :: 		void goStraight(){
;final_code_5.c,421 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code_5.c,422 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code_5.c,423 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,424 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,425 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight722
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight722:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight581
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight723
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight723:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight581
	GOTO       L_goStraight115
L__goStraight581:
;final_code_5.c,426 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,427 :: 		}
L_goStraight115:
;final_code_5.c,428 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,430 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight724
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight724:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight116
;final_code_5.c,432 :: 		if(TMR0_value-TMR1_value>=3){
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
	GOTO       L__goStraight725
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight725:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight117
;final_code_5.c,433 :: 		do{
L_goStraight118:
;final_code_5.c,434 :: 		rightT();
	CALL       _rightT+0
;final_code_5.c,435 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight726
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight726:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight118
;final_code_5.c,436 :: 		}
L_goStraight117:
;final_code_5.c,439 :: 		}else{
	GOTO       L_goStraight121
L_goStraight116:
;final_code_5.c,441 :: 		if(TMR1_value-TMR0_value>=3){
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
	GOTO       L__goStraight727
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight727:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight122
;final_code_5.c,442 :: 		do{
L_goStraight123:
;final_code_5.c,443 :: 		leftT();
	CALL       _leftT+0
;final_code_5.c,444 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight728
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight728:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight123
;final_code_5.c,445 :: 		}
L_goStraight122:
;final_code_5.c,446 :: 		}
L_goStraight121:
;final_code_5.c,447 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;final_code_5.c,450 :: 		void goStraight2(){
;final_code_5.c,451 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,452 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2729
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2729:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2583
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2730
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2730:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2583
	GOTO       L_goStraight2128
L__goStraight2583:
;final_code_5.c,453 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,455 :: 		}
L_goStraight2128:
;final_code_5.c,456 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2731
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2731:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2131
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2732
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2732:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2131
L__goStraight2582:
;final_code_5.c,457 :: 		distCounter= (TMR0_value*200);
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
;final_code_5.c,458 :: 		distCounter = distCounter/TMR1_value;
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
;final_code_5.c,459 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2733
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2733
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2733
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2733:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2132
;final_code_5.c,460 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,461 :: 		}else{
	GOTO       L_goStraight2133
L_goStraight2132:
;final_code_5.c,462 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,463 :: 		}
L_goStraight2133:
;final_code_5.c,465 :: 		distCounter = (TMR1_value*200);
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
;final_code_5.c,466 :: 		distCounter = distCounter/TMR0_value;
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
;final_code_5.c,467 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2734
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2734
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2734
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2734:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2134
;final_code_5.c,468 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,469 :: 		}else{
	GOTO       L_goStraight2135
L_goStraight2134:
;final_code_5.c,470 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,471 :: 		}
L_goStraight2135:
;final_code_5.c,472 :: 		}
L_goStraight2131:
;final_code_5.c,474 :: 		}
	RETURN
; end of _goStraight2

_SemSmallFollow:

;final_code_5.c,476 :: 		void SemSmallFollow(){
;final_code_5.c,477 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,478 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow735
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow735:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow736
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow736:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow737
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow737:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow738
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow738:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow739
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow739:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow138
L__SemSmallFollow598:
;final_code_5.c,479 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,480 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow139
L_SemSmallFollow138:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow740
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow740:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow741
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow741:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow742
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow742:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow743
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow743:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow744
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow744:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
L__SemSmallFollow597:
;final_code_5.c,481 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,482 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow143
L_SemSmallFollow142:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow745
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow745:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow746
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow746:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow747
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow747:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow748
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow748:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow749
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow749:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
L__SemSmallFollow596:
;final_code_5.c,483 :: 		leftT2();
	CALL       _leftT2+0
;final_code_5.c,484 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow147
L_SemSmallFollow146:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow750
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow750:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow751
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow751:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow752
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow752:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow753
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow753:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow754
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow754:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
L__SemSmallFollow595:
;final_code_5.c,485 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,486 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow151
L_SemSmallFollow150:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow755
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow755:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow756
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow756:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow757
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow757:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow758
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow758:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow759
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow759:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
L__SemSmallFollow594:
;final_code_5.c,487 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,488 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow155
L_SemSmallFollow154:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow760
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow760:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow761
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow761:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow762
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow762:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow763
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow763:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow764
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow764:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
L__SemSmallFollow593:
;final_code_5.c,489 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,490 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow159
L_SemSmallFollow158:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow765
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow765:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow766
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow766:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow767
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow767:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow768
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow768:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow769
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow769:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
L__SemSmallFollow592:
;final_code_5.c,491 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,492 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow163
L_SemSmallFollow162:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow770
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow770:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow771
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow771:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow772
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow772:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow773
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow773:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow774
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow774:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
L__SemSmallFollow591:
;final_code_5.c,493 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,494 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow167
L_SemSmallFollow166:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow775
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow775:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow776
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow776:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow777
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow777:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow778
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow778:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow779
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow779:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
L__SemSmallFollow590:
;final_code_5.c,495 :: 		rightT2();
	CALL       _rightT2+0
;final_code_5.c,496 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow171
L_SemSmallFollow170:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow780
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow780:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow781
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow781:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow782
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow782:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow783
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow783:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow784
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow784:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
L__SemSmallFollow589:
;final_code_5.c,497 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,498 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow175
L_SemSmallFollow174:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow785
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow785:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow786
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow786:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow787
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow787:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow788
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow788:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow789
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow789:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
L__SemSmallFollow588:
;final_code_5.c,499 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,500 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow179
L_SemSmallFollow178:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow790
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow790:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow791
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow791:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow792
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow792:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow793
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow793:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow794
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow794:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
L__SemSmallFollow587:
;final_code_5.c,501 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,502 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow183
L_SemSmallFollow182:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow795
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow795:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow796
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow796:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow797
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow797:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow798
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow798:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow799
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow799:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
L__SemSmallFollow586:
;final_code_5.c,503 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,504 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow187
L_SemSmallFollow186:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow800
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow800:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow801
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow801:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow802
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow802:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow803
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow803:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow804
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow804:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
L__SemSmallFollow585:
;final_code_5.c,505 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,506 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow191
L_SemSmallFollow190:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow805
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow805:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow806
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow806:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow807
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow807:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow808
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow808:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow809
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow809:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
L__SemSmallFollow584:
;final_code_5.c,507 :: 		leftT2();
	CALL       _leftT2+0
;final_code_5.c,508 :: 		}else{
	GOTO       L_SemSmallFollow195
L_SemSmallFollow194:
;final_code_5.c,509 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,511 :: 		}
L_SemSmallFollow195:
L_SemSmallFollow191:
L_SemSmallFollow187:
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
;final_code_5.c,513 :: 		}
	RETURN
; end of _SemSmallFollow

_SemBigFollow:

;final_code_5.c,515 :: 		void SemBigFollow(){
;final_code_5.c,516 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,517 :: 		if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow810
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow810:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow198
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow811
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow811:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow198
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow812
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow812:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow198
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow813
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow813:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow198
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow814
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow814:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow198
L__SemBigFollow613:
;final_code_5.c,518 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,519 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow199
L_SemBigFollow198:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow815
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow815:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow816
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow816:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow817
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow817:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow818
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow818:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow819
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow819:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
L__SemBigFollow612:
;final_code_5.c,520 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,521 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow203
L_SemBigFollow202:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow820
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow820:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow821
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow821:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow822
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow822:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow823
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow823:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow824
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow824:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
L__SemBigFollow611:
;final_code_5.c,522 :: 		leftT2();
	CALL       _leftT2+0
;final_code_5.c,523 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow207
L_SemBigFollow206:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow825
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow825:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow826
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow826:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow827
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow827:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow828
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow828:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow829
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow829:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
L__SemBigFollow610:
;final_code_5.c,524 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,525 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow211
L_SemBigFollow210:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow830
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow830:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow831
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow831:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow832
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow832:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow833
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow833:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow834
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow834:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
L__SemBigFollow609:
;final_code_5.c,526 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,527 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==1){
	GOTO       L_SemBigFollow215
L_SemBigFollow214:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow835
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow835:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow836
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow836:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow837
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow837:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow838
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow838:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow839
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow839:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
L__SemBigFollow608:
;final_code_5.c,528 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,529 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow219
L_SemBigFollow218:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow840
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow840:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow841
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow841:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow842
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow842:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow843
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow843:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow844
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow844:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
L__SemBigFollow607:
;final_code_5.c,530 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,531 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow223
L_SemBigFollow222:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow845
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow845:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow846
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow846:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow847
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow847:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow848
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow848:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow849
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow849:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
L__SemBigFollow606:
;final_code_5.c,532 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,533 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow227
L_SemBigFollow226:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow850
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow850:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow851
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow851:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow852
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow852:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow853
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow853:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow854
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow854:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
L__SemBigFollow605:
;final_code_5.c,534 :: 		rightT2();
	CALL       _rightT2+0
;final_code_5.c,535 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow231
L_SemBigFollow230:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow855
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow855:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow856
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow856:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow857
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow857:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow858
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow858:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow859
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow859:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
L__SemBigFollow604:
;final_code_5.c,536 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,537 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow235
L_SemBigFollow234:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow860
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow860:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow861
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow861:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow862
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow862:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow863
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow863:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow864
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow864:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
L__SemBigFollow603:
;final_code_5.c,538 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,539 :: 		}else if(sw[0][2]==1&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow239
L_SemBigFollow238:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow865
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow865:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow866
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow866:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow867
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow867:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow868
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow868:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow869
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow869:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
L__SemBigFollow602:
;final_code_5.c,540 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,541 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow243
L_SemBigFollow242:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow870
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow870:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow871
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow871:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow872
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow872:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow873
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow873:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow874
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow874:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
L__SemBigFollow601:
;final_code_5.c,542 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,543 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow247
L_SemBigFollow246:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow875
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow875:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow876
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow876:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow877
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow877:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow878
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow878:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow879
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow879:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
L__SemBigFollow600:
;final_code_5.c,544 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,545 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow251
L_SemBigFollow250:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow880
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow880:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow881
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow881:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow882
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow882:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow883
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow883:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow884
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow884:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
L__SemBigFollow599:
;final_code_5.c,546 :: 		leftT2();
	CALL       _leftT2+0
;final_code_5.c,547 :: 		}else{
	GOTO       L_SemBigFollow255
L_SemBigFollow254:
;final_code_5.c,548 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,549 :: 		}
L_SemBigFollow255:
L_SemBigFollow251:
L_SemBigFollow247:
L_SemBigFollow243:
L_SemBigFollow239:
L_SemBigFollow235:
L_SemBigFollow231:
L_SemBigFollow227:
L_SemBigFollow223:
L_SemBigFollow219:
L_SemBigFollow215:
L_SemBigFollow211:
L_SemBigFollow207:
L_SemBigFollow203:
L_SemBigFollow199:
;final_code_5.c,551 :: 		}
	RETURN
; end of _SemBigFollow

_encoder:

;final_code_5.c,554 :: 		void encoder(){
;final_code_5.c,555 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder256
;final_code_5.c,556 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code_5.c,558 :: 		}
L_encoder256:
;final_code_5.c,559 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder259
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder885
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder885:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder259
L__encoder615:
;final_code_5.c,560 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code_5.c,561 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code_5.c,562 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder886
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder886:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder260
;final_code_5.c,563 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code_5.c,564 :: 		}else if(rotationMode==2){
	GOTO       L_encoder261
L_encoder260:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder887
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder887:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder262
;final_code_5.c,565 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code_5.c,566 :: 		}
L_encoder262:
L_encoder261:
;final_code_5.c,567 :: 		}
L_encoder259:
;final_code_5.c,569 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder263
;final_code_5.c,570 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code_5.c,571 :: 		}
L_encoder263:
;final_code_5.c,572 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder266
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder888
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder888:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder266
L__encoder614:
;final_code_5.c,573 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code_5.c,574 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code_5.c,575 :: 		}
L_encoder266:
;final_code_5.c,576 :: 		}
	RETURN
; end of _encoder

_tuneToMiddle:

;final_code_5.c,580 :: 		int tuneToMiddle(){
;final_code_5.c,582 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,583 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle889
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle889:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle267
;final_code_5.c,584 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,585 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,586 :: 		}
L_tuneToMiddle267:
;final_code_5.c,587 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle890
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle890:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle269
;final_code_5.c,588 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle891
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle891:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle616
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle892
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle892:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle616
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle893
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle893:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle616
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle894
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle894:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle616
	GOTO       L_tuneToMiddle272
L__tuneToMiddle616:
;final_code_5.c,589 :: 		while(sw[0][4]==0){
L_tuneToMiddle273:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle895
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle895:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle274
;final_code_5.c,590 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,591 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle896
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle896:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle275
;final_code_5.c,592 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,593 :: 		}else{
	GOTO       L_tuneToMiddle276
L_tuneToMiddle275:
;final_code_5.c,594 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,595 :: 		}
L_tuneToMiddle276:
;final_code_5.c,596 :: 		}
	GOTO       L_tuneToMiddle273
L_tuneToMiddle274:
;final_code_5.c,597 :: 		}
	GOTO       L_tuneToMiddle277
L_tuneToMiddle272:
;final_code_5.c,599 :: 		while(sw[0][4]==0){
L_tuneToMiddle278:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle897
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle897:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle279
;final_code_5.c,600 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,601 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle898
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle898:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle280
;final_code_5.c,602 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,603 :: 		}else{
	GOTO       L_tuneToMiddle281
L_tuneToMiddle280:
;final_code_5.c,604 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,605 :: 		}
L_tuneToMiddle281:
;final_code_5.c,606 :: 		}
	GOTO       L_tuneToMiddle278
L_tuneToMiddle279:
;final_code_5.c,607 :: 		}
L_tuneToMiddle277:
;final_code_5.c,608 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,609 :: 		}
L_tuneToMiddle269:
;final_code_5.c,611 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code_5.c,613 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code_5.c,616 :: 		void printClockEncoders(){
;final_code_5.c,617 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders899
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders899:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders283
;final_code_5.c,621 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders284
L_printClockEncoders283:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders900
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders900:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders285
;final_code_5.c,625 :: 		}
L_printClockEncoders285:
L_printClockEncoders284:
;final_code_5.c,627 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code_5.c,630 :: 		int getFrontDecimal(){
;final_code_5.c,631 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,632 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal901:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal902
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal901
L__getFrontDecimal902:
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
L__getFrontDecimal903:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal904
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal903
L__getFrontDecimal904:
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
L__getFrontDecimal905:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal906
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal905
L__getFrontDecimal906:
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
L__getFrontDecimal907:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal908
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal907
L__getFrontDecimal908:
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
L__getFrontDecimal909:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal910
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal909
L__getFrontDecimal910:
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
;final_code_5.c,633 :: 		return val;
;final_code_5.c,634 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code_5.c,635 :: 		int getBackDecimal(){
;final_code_5.c,636 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,637 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal911:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal912
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal911
L__getBackDecimal912:
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
L__getBackDecimal913:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal914
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal913
L__getBackDecimal914:
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
;final_code_5.c,638 :: 		return val;
;final_code_5.c,639 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code_5.c,643 :: 		void followArrow(){
;final_code_5.c,644 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow915
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow915:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow286
;final_code_5.c,645 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code_5.c,646 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow916
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow916:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow287
;final_code_5.c,647 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,648 :: 		}
L_followArrow287:
;final_code_5.c,649 :: 		} else if(k==1){
	GOTO       L_followArrow288
L_followArrow286:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow917
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow917:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow289
;final_code_5.c,650 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,651 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow918
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow918:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow290
;final_code_5.c,652 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,653 :: 		}else{
	GOTO       L_followArrow291
L_followArrow290:
;final_code_5.c,654 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,655 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,657 :: 		}
L_followArrow291:
;final_code_5.c,658 :: 		}else if(k==2){
	GOTO       L_followArrow292
L_followArrow289:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow919
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow919:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow293
;final_code_5.c,659 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_5.c,660 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow920
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow920:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow294
;final_code_5.c,661 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,662 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,663 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,664 :: 		}
L_followArrow294:
;final_code_5.c,665 :: 		}else if(k==3){
	GOTO       L_followArrow295
L_followArrow293:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow921
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow921:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow296
;final_code_5.c,666 :: 		moveB();
	CALL       _moveB+0
;final_code_5.c,667 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,668 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,669 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow922
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow922:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow297
;final_code_5.c,670 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,671 :: 		}
L_followArrow297:
;final_code_5.c,673 :: 		}else if(k==4){
	GOTO       L_followArrow298
L_followArrow296:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow923
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow923:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow299
;final_code_5.c,674 :: 		SemBigFollow();
	CALL       _SemBigFollow+0
;final_code_5.c,675 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,676 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow924
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow924:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow300
;final_code_5.c,677 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,678 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,679 :: 		}
L_followArrow300:
;final_code_5.c,681 :: 		}else if(k==5){
	GOTO       L_followArrow301
L_followArrow299:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow925
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow925:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow302
;final_code_5.c,682 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,683 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,684 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,685 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow926
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow926:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow303
;final_code_5.c,686 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,687 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_followArrow304:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow304
	DECFSZ     R12+0, 1
	GOTO       L_followArrow304
	DECFSZ     R11+0, 1
	GOTO       L_followArrow304
	NOP
;final_code_5.c,688 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,690 :: 		}
L_followArrow303:
;final_code_5.c,691 :: 		}else if(k==6){
	GOTO       L_followArrow305
L_followArrow302:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow927
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow927:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow306
;final_code_5.c,692 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,693 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,694 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow928
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow928:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow307
;final_code_5.c,695 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,696 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow308
L_followArrow307:
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
	GOTO       L__followArrow929
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow929:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow309
;final_code_5.c,697 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,698 :: 		}else{
	GOTO       L_followArrow310
L_followArrow309:
;final_code_5.c,699 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,700 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_5.c,701 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,702 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,703 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,704 :: 		}
L_followArrow310:
L_followArrow308:
;final_code_5.c,705 :: 		}else if(k==7){
	GOTO       L_followArrow311
L_followArrow306:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow930
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow930:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow312
;final_code_5.c,706 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,707 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,708 :: 		if(totFront==4){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow931
	MOVLW      4
	XORWF      _totFront+0, 0
L__followArrow931:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow313
;final_code_5.c,709 :: 		headfound=1;
	MOVLW      1
	MOVWF      _headfound+0
	MOVLW      0
	MOVWF      _headfound+1
;final_code_5.c,710 :: 		}
L_followArrow313:
;final_code_5.c,711 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow932
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow932:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow314
;final_code_5.c,712 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,713 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code_5.c,714 :: 		if(headfound==0){
	MOVLW      0
	XORWF      _headfound+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow933
	MOVLW      0
	XORWF      _headfound+0, 0
L__followArrow933:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow315
;final_code_5.c,715 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,716 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,717 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_followArrow316:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow316
	DECFSZ     R12+0, 1
	GOTO       L_followArrow316
	DECFSZ     R11+0, 1
	GOTO       L_followArrow316
	NOP
;final_code_5.c,718 :: 		while(((TMR0_value+TMR1_value)/2)<65){
L_followArrow317:
	MOVF       _TMR1_value+0, 0
	ADDWF      _TMR0_value+0, 0
	MOVWF      R3+0
	MOVF       _TMR0_value+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _TMR1_value+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R1+0
	MOVF       R3+1, 0
	MOVWF      R1+1
	RRF        R1+1, 1
	RRF        R1+0, 1
	BCF        R1+1, 7
	BTFSC      R1+1, 6
	BSF        R1+1, 7
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow934
	MOVLW      65
	SUBWF      R1+0, 0
L__followArrow934:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow318
;final_code_5.c,719 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,720 :: 		}
	GOTO       L_followArrow317
L_followArrow318:
;final_code_5.c,721 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,722 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,723 :: 		}
L_followArrow315:
;final_code_5.c,724 :: 		headfound=0;
	CLRF       _headfound+0
	CLRF       _headfound+1
;final_code_5.c,725 :: 		}
L_followArrow314:
;final_code_5.c,727 :: 		}
L_followArrow312:
L_followArrow311:
L_followArrow305:
L_followArrow301:
L_followArrow298:
L_followArrow295:
L_followArrow292:
L_followArrow288:
;final_code_5.c,728 :: 		}
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

;final_code_5.c,730 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code_5.c,731 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt319
;final_code_5.c,732 :: 		encoder();
	CALL       _encoder+0
;final_code_5.c,733 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code_5.c,734 :: 		}
L_interrupt319:
;final_code_5.c,737 :: 		}
L__interrupt935:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code_5.c,740 :: 		void init_timer(){
;final_code_5.c,741 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code_5.c,742 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code_5.c,743 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code_5.c,746 :: 		int pulseIn1(){
;final_code_5.c,747 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_5.c,748 :: 		while(1){
L_pulseIn1320:
;final_code_5.c,749 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_5.c,750 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,751 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1322
	GOTO       L_pulseIn1321
L_pulseIn1322:
;final_code_5.c,752 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1936
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1936:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1323
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1323:
;final_code_5.c,753 :: 		}
	GOTO       L_pulseIn1320
L_pulseIn1321:
;final_code_5.c,754 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_5.c,755 :: 		while(1){
L_pulseIn1324:
;final_code_5.c,756 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_5.c,757 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,758 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1326
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1326:
;final_code_5.c,759 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn1937
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn1937:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1327
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1327:
;final_code_5.c,760 :: 		}
	GOTO       L_pulseIn1324
;final_code_5.c,762 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code_5.c,764 :: 		int pulseIn2(){
;final_code_5.c,765 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_5.c,766 :: 		while(1){
L_pulseIn2328:
;final_code_5.c,767 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_5.c,768 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,769 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2330
	GOTO       L_pulseIn2329
L_pulseIn2330:
;final_code_5.c,770 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2938
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2938:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2331
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2331:
;final_code_5.c,771 :: 		}
	GOTO       L_pulseIn2328
L_pulseIn2329:
;final_code_5.c,772 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_5.c,773 :: 		while(1){
L_pulseIn2332:
;final_code_5.c,774 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_5.c,775 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,776 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2334
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2334:
;final_code_5.c,777 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn2939
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn2939:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2335
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2335:
;final_code_5.c,778 :: 		}
	GOTO       L_pulseIn2332
;final_code_5.c,779 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code_5.c,782 :: 		int pulseIn3(){
;final_code_5.c,783 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_5.c,784 :: 		while(1){
L_pulseIn3336:
;final_code_5.c,785 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_5.c,786 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,787 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3338
	GOTO       L_pulseIn3337
L_pulseIn3338:
;final_code_5.c,788 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3940
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3940:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3339
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3339:
;final_code_5.c,789 :: 		}
	GOTO       L_pulseIn3336
L_pulseIn3337:
;final_code_5.c,790 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_5.c,791 :: 		while(1){
L_pulseIn3340:
;final_code_5.c,792 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_5.c,793 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_5.c,794 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3342
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3342:
;final_code_5.c,795 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn3941
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn3941:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3343
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3343:
;final_code_5.c,796 :: 		}
	GOTO       L_pulseIn3340
;final_code_5.c,797 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code_5.c,800 :: 		int getDis1(){
;final_code_5.c,801 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_5.c,802 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1344:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1344
	NOP
	NOP
;final_code_5.c,803 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_5.c,804 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1345:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1345
	NOP
	NOP
;final_code_5.c,805 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_5.c,806 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_5.c,807 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1346:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1346
	DECFSZ     R12+0, 1
	GOTO       L_getDis1346
	DECFSZ     R11+0, 1
	GOTO       L_getDis1346
	NOP
	NOP
;final_code_5.c,808 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_5.c,810 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code_5.c,812 :: 		int getDis2(){
;final_code_5.c,813 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_5.c,814 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2347:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2347
	NOP
	NOP
;final_code_5.c,815 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_5.c,816 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2348:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2348
	NOP
	NOP
;final_code_5.c,817 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_5.c,818 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_5.c,819 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2349:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2349
	DECFSZ     R12+0, 1
	GOTO       L_getDis2349
	NOP
	NOP
;final_code_5.c,820 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_5.c,822 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code_5.c,824 :: 		int getDis3(){
;final_code_5.c,825 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_5.c,826 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3350:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3350
	NOP
	NOP
;final_code_5.c,827 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code_5.c,828 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3351:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3351
	NOP
	NOP
;final_code_5.c,829 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_5.c,830 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_5.c,831 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3352:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3352
	DECFSZ     R12+0, 1
	GOTO       L_getDis3352
	NOP
	NOP
;final_code_5.c,832 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_5.c,834 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code_5.c,835 :: 		void NidegL(){
;final_code_5.c,836 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,837 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,838 :: 		while(1){
L_NidegL353:
;final_code_5.c,839 :: 		if(((TMR0_value+TMR1_value)/2)>16){
	MOVF       _TMR1_value+0, 0
	ADDWF      _TMR0_value+0, 0
	MOVWF      R3+0
	MOVF       _TMR0_value+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _TMR1_value+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R1+0
	MOVF       R3+1, 0
	MOVWF      R1+1
	RRF        R1+1, 1
	RRF        R1+0, 1
	BCF        R1+1, 7
	BTFSC      R1+1, 6
	BSF        R1+1, 7
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegL942
	MOVF       R1+0, 0
	SUBLW      16
L__NidegL942:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL355
;final_code_5.c,840 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,841 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,842 :: 		break;
	GOTO       L_NidegL354
;final_code_5.c,843 :: 		}
L_NidegL355:
;final_code_5.c,844 :: 		}
	GOTO       L_NidegL353
L_NidegL354:
;final_code_5.c,845 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code_5.c,847 :: 		void NidegR(){
;final_code_5.c,848 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,849 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,850 :: 		while(1){
L_NidegR356:
;final_code_5.c,851 :: 		if(((TMR0_value+TMR1_value)/2)>16){
	MOVF       _TMR1_value+0, 0
	ADDWF      _TMR0_value+0, 0
	MOVWF      R3+0
	MOVF       _TMR0_value+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _TMR1_value+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R1+0
	MOVF       R3+1, 0
	MOVWF      R1+1
	RRF        R1+1, 1
	RRF        R1+0, 1
	BCF        R1+1, 7
	BTFSC      R1+1, 6
	BSF        R1+1, 7
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__NidegR943
	MOVF       R1+0, 0
	SUBLW      16
L__NidegR943:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR358
;final_code_5.c,852 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,853 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,854 :: 		break;
	GOTO       L_NidegR357
;final_code_5.c,855 :: 		}
L_NidegR358:
;final_code_5.c,856 :: 		}
	GOTO       L_NidegR356
L_NidegR357:
;final_code_5.c,857 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code_5.c,859 :: 		void moFEnc(int count){
;final_code_5.c,860 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,861 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,862 :: 		while(1){
L_moFEnc359:
;final_code_5.c,863 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc944
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc944:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc361
;final_code_5.c,864 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,865 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,866 :: 		break;
	GOTO       L_moFEnc360
;final_code_5.c,867 :: 		}
L_moFEnc361:
;final_code_5.c,868 :: 		}
	GOTO       L_moFEnc359
L_moFEnc360:
;final_code_5.c,870 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code_5.c,872 :: 		int getCompass(){
;final_code_5.c,873 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;final_code_5.c,874 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;final_code_5.c,879 :: 		void turnToPoint(int pt){
;final_code_5.c,881 :: 		while(PORTD.F3==0 || PORTD.F4==0){
L_turnToPoint362:
	BTFSS      PORTD+0, 3
	GOTO       L__turnToPoint619
	BTFSS      PORTD+0, 4
	GOTO       L__turnToPoint619
	GOTO       L_turnToPoint363
L__turnToPoint619:
;final_code_5.c,882 :: 		if(PORTD.F4==1 && PORTD.F3==0){
	BTFSS      PORTD+0, 4
	GOTO       L_turnToPoint368
	BTFSC      PORTD+0, 3
	GOTO       L_turnToPoint368
L__turnToPoint618:
;final_code_5.c,883 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,884 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,885 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,886 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_turnToPoint369:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint369
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint369
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint369
	NOP
	NOP
;final_code_5.c,887 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,888 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_turnToPoint370:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint370
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint370
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint370
	NOP
	NOP
;final_code_5.c,889 :: 		}else if(PORTD.F4==0 && PORTD.F3==1){
	GOTO       L_turnToPoint371
L_turnToPoint368:
	BTFSC      PORTD+0, 4
	GOTO       L_turnToPoint374
	BTFSS      PORTD+0, 3
	GOTO       L_turnToPoint374
L__turnToPoint617:
;final_code_5.c,890 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,891 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,892 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,893 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_turnToPoint375:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint375
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint375
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint375
	NOP
	NOP
;final_code_5.c,894 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,895 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_turnToPoint376:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint376
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint376
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint376
	NOP
	NOP
;final_code_5.c,896 :: 		}
L_turnToPoint374:
L_turnToPoint371:
;final_code_5.c,897 :: 		}
	GOTO       L_turnToPoint362
L_turnToPoint363:
;final_code_5.c,898 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,899 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_turnToPoint377:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint377
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint377
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint377
	NOP
;final_code_5.c,902 :: 		}
	RETURN
; end of _turnToPoint

_avoidObstacles:

;final_code_5.c,905 :: 		void avoidObstacles(){
;final_code_5.c,907 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,908 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,909 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,910 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles945
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles945:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles378
;final_code_5.c,911 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,912 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,913 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles946
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles946:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles626
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles947
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles947:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles626
	GOTO       L_avoidObstacles381
L__avoidObstacles626:
;final_code_5.c,914 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,915 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,916 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,917 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_5.c,918 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,919 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,920 :: 		if(direction==0){
	MOVLW      0
	XORWF      _direction+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles948
	MOVLW      0
	XORWF      _direction+0, 0
L__avoidObstacles948:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles382
;final_code_5.c,921 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,922 :: 		}else{
	GOTO       L_avoidObstacles383
L_avoidObstacles382:
;final_code_5.c,923 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,924 :: 		}
L_avoidObstacles383:
;final_code_5.c,925 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,926 :: 		}else{
	GOTO       L_avoidObstacles384
L_avoidObstacles381:
;final_code_5.c,927 :: 		PWM1_Set_Duty(212);
	MOVLW      212
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,928 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,929 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,930 :: 		}
L_avoidObstacles384:
;final_code_5.c,931 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles385
L_avoidObstacles378:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles949
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles949:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles386
;final_code_5.c,932 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,933 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,934 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,935 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles387:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles387
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles387
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles387
	NOP
	NOP
;final_code_5.c,936 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,937 :: 		Delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_avoidObstacles388:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles388
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles388
	NOP
;final_code_5.c,938 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,939 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,941 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles950
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles950:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles391
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles951
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles951:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles391
L__avoidObstacles625:
;final_code_5.c,942 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,943 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_5.c,944 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,945 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_5.c,946 :: 		}
L_avoidObstacles391:
;final_code_5.c,947 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles952
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles952:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles394
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles953
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles953:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles394
L__avoidObstacles624:
;final_code_5.c,948 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_5.c,949 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles954
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles954:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles395
;final_code_5.c,950 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,951 :: 		}else{
	GOTO       L_avoidObstacles396
L_avoidObstacles395:
;final_code_5.c,952 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,953 :: 		}
L_avoidObstacles396:
;final_code_5.c,954 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,955 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,956 :: 		while(TMR0_value<17){
L_avoidObstacles397:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles955
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles955:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles398
;final_code_5.c,957 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,958 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,959 :: 		}
	GOTO       L_avoidObstacles397
L_avoidObstacles398:
;final_code_5.c,960 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,961 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,962 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,963 :: 		}
L_avoidObstacles394:
;final_code_5.c,965 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles399
L_avoidObstacles386:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles956
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles956:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles400
;final_code_5.c,966 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,967 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,968 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,970 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles401:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles401
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles401
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles401
	NOP
	NOP
;final_code_5.c,971 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,972 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles402:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles402
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles402
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles402
	NOP
	NOP
;final_code_5.c,973 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,974 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,975 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles957
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles957:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles405
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles958
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles958:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles405
L__avoidObstacles623:
;final_code_5.c,976 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,977 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_5.c,978 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,979 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_5.c,980 :: 		}
L_avoidObstacles405:
;final_code_5.c,981 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles959
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles959:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles408
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles960
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles960:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles408
L__avoidObstacles622:
;final_code_5.c,982 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_5.c,983 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles961
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles961:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles409
;final_code_5.c,984 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,985 :: 		}else{
	GOTO       L_avoidObstacles410
L_avoidObstacles409:
;final_code_5.c,986 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,987 :: 		}
L_avoidObstacles410:
;final_code_5.c,988 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,989 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,990 :: 		while(TMR0_value<17){
L_avoidObstacles411:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles962
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles962:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles412
;final_code_5.c,991 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,992 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,993 :: 		}
	GOTO       L_avoidObstacles411
L_avoidObstacles412:
;final_code_5.c,994 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,995 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,996 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles413:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles413
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles413
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles413
	NOP
;final_code_5.c,997 :: 		}
L_avoidObstacles408:
;final_code_5.c,999 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles414
L_avoidObstacles400:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles963
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles963:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles415
;final_code_5.c,1000 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles964
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles964:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles416
;final_code_5.c,1001 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1002 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1003 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_5.c,1004 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_5.c,1005 :: 		}
L_avoidObstacles416:
;final_code_5.c,1006 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_5.c,1007 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles417
L_avoidObstacles415:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles965
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles965:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles418
;final_code_5.c,1008 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,1009 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1010 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1012 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles966
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles966:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles421
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles967
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles967:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles421
L__avoidObstacles621:
;final_code_5.c,1013 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1014 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1015 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1016 :: 		}
L_avoidObstacles421:
;final_code_5.c,1017 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles422
L_avoidObstacles418:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles968
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles968:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles423
;final_code_5.c,1018 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,1019 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1020 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1021 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles969
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles969:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles620
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles970
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles970:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles620
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles971
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles971:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles620
	GOTO       L_avoidObstacles426
L__avoidObstacles620:
;final_code_5.c,1022 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1023 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1024 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_5.c,1025 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_5.c,1026 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1027 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_5.c,1028 :: 		}
L_avoidObstacles426:
;final_code_5.c,1030 :: 		}
L_avoidObstacles423:
L_avoidObstacles422:
L_avoidObstacles417:
L_avoidObstacles414:
L_avoidObstacles399:
L_avoidObstacles385:
;final_code_5.c,1031 :: 		}
	RETURN
; end of _avoidObstacles

_avoidWall:

;final_code_5.c,1033 :: 		int avoidWall(){
;final_code_5.c,1035 :: 		if(PORTD.F0==1 && PORTD.F1==0){
	BTFSS      PORTD+0, 0
	GOTO       L_avoidWall429
	BTFSC      PORTD+0, 1
	GOTO       L_avoidWall429
L__avoidWall633:
;final_code_5.c,1037 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,1039 :: 		}else if(PORTD.F0==0 && PORTD.F1==1) {
L_avoidWall429:
	BTFSC      PORTD+0, 0
	GOTO       L_avoidWall433
	BTFSS      PORTD+0, 1
	GOTO       L_avoidWall433
L__avoidWall632:
;final_code_5.c,1041 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	RETURN
;final_code_5.c,1042 :: 		}else if(PORTD.F0==0 && PORTD.F1==0){
L_avoidWall433:
	BTFSC      PORTD+0, 0
	GOTO       L_avoidWall437
	BTFSC      PORTD+0, 1
	GOTO       L_avoidWall437
L__avoidWall631:
;final_code_5.c,1044 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,1045 :: 		}else{
L_avoidWall437:
;final_code_5.c,1047 :: 		while(PORTD.F0==1 && PORTD ==1){
L_avoidWall439:
	BTFSS      PORTD+0, 0
	GOTO       L_avoidWall440
	MOVF       PORTD+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_avoidWall440
L__avoidWall630:
;final_code_5.c,1048 :: 		backward();
	CALL       _backward+0
;final_code_5.c,1050 :: 		}
	GOTO       L_avoidWall439
L_avoidWall440:
;final_code_5.c,1051 :: 		if(PORTD.F0==1 && PORTD.F1==0){
	BTFSS      PORTD+0, 0
	GOTO       L_avoidWall445
	BTFSC      PORTD+0, 1
	GOTO       L_avoidWall445
L__avoidWall629:
;final_code_5.c,1053 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,1054 :: 		}else if(PORTD.F0==0 && PORTD.F1==1) {
L_avoidWall445:
	BTFSC      PORTD+0, 0
	GOTO       L_avoidWall449
	BTFSS      PORTD+0, 1
	GOTO       L_avoidWall449
L__avoidWall628:
;final_code_5.c,1056 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	RETURN
;final_code_5.c,1057 :: 		}else if(PORTD.F0==0 && PORTD.F1==0){
L_avoidWall449:
	BTFSC      PORTD+0, 0
	GOTO       L_avoidWall453
	BTFSC      PORTD+0, 1
	GOTO       L_avoidWall453
L__avoidWall627:
;final_code_5.c,1059 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_5.c,1060 :: 		}
L_avoidWall453:
;final_code_5.c,1066 :: 		}
	RETURN
; end of _avoidWall

_avoidObstacles_3:

;final_code_5.c,1070 :: 		void avoidObstacles_3(){
;final_code_5.c,1072 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1073 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1074 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,1075 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3972
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles_3972:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3454
;final_code_5.c,1076 :: 		direction=avoidWall();
	CALL       _avoidWall+0
	MOVF       R0+0, 0
	MOVWF      _direction+0
	MOVF       R0+1, 0
	MOVWF      _direction+1
;final_code_5.c,1077 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1078 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1079 :: 		if((counter2<200)||(counter3<200)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3973
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles_3973:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles_3640
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3974
	MOVLW      200
	SUBWF      _counter3+0, 0
L__avoidObstacles_3974:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles_3640
	GOTO       L_avoidObstacles_3457
L__avoidObstacles_3640:
;final_code_5.c,1080 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1081 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1082 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1083 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_5.c,1084 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1085 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1086 :: 		if(direction==0){
	MOVLW      0
	XORWF      _direction+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3975
	MOVLW      0
	XORWF      _direction+0, 0
L__avoidObstacles_3975:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3458
;final_code_5.c,1087 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1088 :: 		}else{
	GOTO       L_avoidObstacles_3459
L_avoidObstacles_3458:
;final_code_5.c,1089 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1090 :: 		}
L_avoidObstacles_3459:
;final_code_5.c,1091 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1092 :: 		}else{
	GOTO       L_avoidObstacles_3460
L_avoidObstacles_3457:
;final_code_5.c,1093 :: 		PWM1_Set_Duty(212);
	MOVLW      212
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1094 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1095 :: 		moveF();
	CALL       _moveF+0
;final_code_5.c,1096 :: 		}
L_avoidObstacles_3460:
;final_code_5.c,1097 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles_3461
L_avoidObstacles_3454:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3976
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles_3976:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3462
;final_code_5.c,1098 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1099 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1100 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,1101 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles_3463:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles_3463
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles_3463
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles_3463
	NOP
	NOP
;final_code_5.c,1102 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1103 :: 		Delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_avoidObstacles_3464:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles_3464
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles_3464
	NOP
;final_code_5.c,1104 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1105 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1107 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3977
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles_3977:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3467
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3978
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles_3978:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3467
L__avoidObstacles_3639:
;final_code_5.c,1108 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1109 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_5.c,1110 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1111 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_5.c,1112 :: 		}
L_avoidObstacles_3467:
;final_code_5.c,1113 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3979
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles_3979:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3470
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3980
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles_3980:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles_3470
L__avoidObstacles_3638:
;final_code_5.c,1114 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_5.c,1115 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3981
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles_3981:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3471
;final_code_5.c,1116 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1117 :: 		}else{
	GOTO       L_avoidObstacles_3472
L_avoidObstacles_3471:
;final_code_5.c,1118 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1119 :: 		}
L_avoidObstacles_3472:
;final_code_5.c,1120 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1121 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1122 :: 		while(TMR0_value<17){
L_avoidObstacles_3473:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3982
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles_3982:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3474
;final_code_5.c,1123 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,1124 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,1125 :: 		}
	GOTO       L_avoidObstacles_3473
L_avoidObstacles_3474:
;final_code_5.c,1126 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1127 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1128 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1129 :: 		}
L_avoidObstacles_3470:
;final_code_5.c,1131 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles_3475
L_avoidObstacles_3462:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3983
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles_3983:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3476
;final_code_5.c,1132 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1133 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1134 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,1136 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles_3477:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles_3477
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles_3477
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles_3477
	NOP
	NOP
;final_code_5.c,1137 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1138 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles_3478:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles_3478
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles_3478
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles_3478
	NOP
	NOP
;final_code_5.c,1139 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1140 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1141 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3984
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles_3984:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3481
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3985
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles_3985:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3481
L__avoidObstacles_3637:
;final_code_5.c,1142 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1143 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_5.c,1144 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1145 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_5.c,1146 :: 		}
L_avoidObstacles_3481:
;final_code_5.c,1147 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3986
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles_3986:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3484
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3987
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles_3987:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles_3484
L__avoidObstacles_3636:
;final_code_5.c,1148 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_5.c,1149 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3988
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles_3988:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3485
;final_code_5.c,1150 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1151 :: 		}else{
	GOTO       L_avoidObstacles_3486
L_avoidObstacles_3485:
;final_code_5.c,1152 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1153 :: 		}
L_avoidObstacles_3486:
;final_code_5.c,1154 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1155 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1156 :: 		while(TMR0_value<17){
L_avoidObstacles_3487:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3989
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles_3989:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3488
;final_code_5.c,1157 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,1158 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_5.c,1159 :: 		}
	GOTO       L_avoidObstacles_3487
L_avoidObstacles_3488:
;final_code_5.c,1160 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1161 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1162 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles_3489:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles_3489
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles_3489
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles_3489
	NOP
;final_code_5.c,1163 :: 		}
L_avoidObstacles_3484:
;final_code_5.c,1165 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles_3490
L_avoidObstacles_3476:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3990
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles_3990:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3491
;final_code_5.c,1166 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3991
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles_3991:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3492
;final_code_5.c,1167 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1168 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1169 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_5.c,1170 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_5.c,1171 :: 		}
L_avoidObstacles_3492:
;final_code_5.c,1172 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_5.c,1173 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles_3493
L_avoidObstacles_3491:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3992
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles_3992:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3494
;final_code_5.c,1174 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,1175 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1176 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1178 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3993
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles_3993:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3497
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3994
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles_3994:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles_3497
L__avoidObstacles_3635:
;final_code_5.c,1179 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1180 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_5.c,1181 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1182 :: 		}
L_avoidObstacles_3497:
;final_code_5.c,1183 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles_3498
L_avoidObstacles_3494:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3995
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles_3995:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles_3499
;final_code_5.c,1184 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,1185 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1186 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1187 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3996
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles_3996:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles_3634
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3997
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles_3997:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles_3634
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles_3998
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles_3998:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles_3634
	GOTO       L_avoidObstacles_3502
L__avoidObstacles_3634:
;final_code_5.c,1188 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1189 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1190 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_5.c,1191 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_5.c,1192 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1193 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_5.c,1194 :: 		}
L_avoidObstacles_3502:
;final_code_5.c,1196 :: 		}
L_avoidObstacles_3499:
L_avoidObstacles_3498:
L_avoidObstacles_3493:
L_avoidObstacles_3490:
L_avoidObstacles_3475:
L_avoidObstacles_3461:
;final_code_5.c,1202 :: 		}
	RETURN
; end of _avoidObstacles_3

_cal_front:

;final_code_5.c,1210 :: 		cal_front(){
;final_code_5.c,1214 :: 		}
	RETURN
; end of _cal_front

_avoidObstacles2:

;final_code_5.c,1218 :: 		void avoidObstacles2(){
;final_code_5.c,1219 :: 		if(stat2==0){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles2999
	MOVLW      0
	XORWF      _stat2+0, 0
L__avoidObstacles2999:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2503
;final_code_5.c,1220 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,1221 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1222 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1223 :: 		if(counter2<250||counter3<250){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21000
	MOVLW      250
	SUBWF      _counter2+0, 0
L__avoidObstacles21000:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2643
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21001
	MOVLW      250
	SUBWF      _counter3+0, 0
L__avoidObstacles21001:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2643
	GOTO       L_avoidObstacles2506
L__avoidObstacles2643:
;final_code_5.c,1224 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1225 :: 		stat2=1;
	MOVLW      1
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_5.c,1226 :: 		}
L_avoidObstacles2506:
;final_code_5.c,1228 :: 		}else if(stat2==11){
	GOTO       L_avoidObstacles2507
L_avoidObstacles2503:
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21002
	MOVLW      11
	XORWF      _stat2+0, 0
L__avoidObstacles21002:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2508
;final_code_5.c,1233 :: 		}
	GOTO       L_avoidObstacles2509
L_avoidObstacles2508:
;final_code_5.c,1234 :: 		else if(stat2==1){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21003
	MOVLW      1
	XORWF      _stat2+0, 0
L__avoidObstacles21003:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2510
;final_code_5.c,1236 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1237 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1238 :: 		if(mem==0){
	MOVLW      0
	XORWF      _mem+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21004
	MOVLW      0
	XORWF      _mem+0, 0
L__avoidObstacles21004:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2511
;final_code_5.c,1240 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_5.c,1241 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21005
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles21005:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2514
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21006
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles21006:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2514
L__avoidObstacles2642:
;final_code_5.c,1242 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1243 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_5.c,1244 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;final_code_5.c,1245 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_5.c,1246 :: 		}
L_avoidObstacles2514:
;final_code_5.c,1247 :: 		}else{
	GOTO       L_avoidObstacles2515
L_avoidObstacles2511:
;final_code_5.c,1248 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_5.c,1249 :: 		if(counter2>350&&counter3>350){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21007
	MOVF       _counter2+0, 0
	SUBLW      94
L__avoidObstacles21007:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2518
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21008
	MOVF       _counter3+0, 0
	SUBLW      94
L__avoidObstacles21008:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2518
L__avoidObstacles2641:
;final_code_5.c,1250 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1251 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_5.c,1252 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;final_code_5.c,1253 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_5.c,1254 :: 		}
L_avoidObstacles2518:
;final_code_5.c,1256 :: 		}
L_avoidObstacles2515:
;final_code_5.c,1257 :: 		}
L_avoidObstacles2510:
L_avoidObstacles2509:
L_avoidObstacles2507:
;final_code_5.c,1258 :: 		}
	RETURN
; end of _avoidObstacles2

_runner:

;final_code_5.c,1288 :: 		void runner(){
;final_code_5.c,1289 :: 		if(totCounter==0){
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1009
	MOVLW      0
	XORWF      _totCounter+0, 0
L__runner1009:
	BTFSS      STATUS+0, 2
	GOTO       L_runner519
;final_code_5.c,1290 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code_5.c,1291 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,1292 :: 		if(totFront==9){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1010
	MOVLW      9
	XORWF      _totFront+0, 0
L__runner1010:
	BTFSS      STATUS+0, 2
	GOTO       L_runner520
;final_code_5.c,1293 :: 		totCounter=2;
	MOVLW      2
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_5.c,1294 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1295 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1296 :: 		}
L_runner520:
;final_code_5.c,1297 :: 		}else if(totCounter==2){
	GOTO       L_runner521
L_runner519:
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1011
	MOVLW      2
	XORWF      _totCounter+0, 0
L__runner1011:
	BTFSS      STATUS+0, 2
	GOTO       L_runner522
;final_code_5.c,1298 :: 		avoidObstacles();
	CALL       _avoidObstacles+0
;final_code_5.c,1299 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,1300 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1012
	MOVLW      0
	XORWF      _totFront+0, 0
L__runner1012:
	BTFSS      STATUS+0, 2
	GOTO       L_runner523
;final_code_5.c,1301 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1302 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1303 :: 		totCounter=3;
	MOVLW      3
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_5.c,1304 :: 		}
L_runner523:
;final_code_5.c,1306 :: 		}else if(totCounter==3){
	GOTO       L_runner524
L_runner522:
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1013
	MOVLW      3
	XORWF      _totCounter+0, 0
L__runner1013:
	BTFSS      STATUS+0, 2
	GOTO       L_runner525
;final_code_5.c,1307 :: 		followArrow();
	CALL       _followArrow+0
;final_code_5.c,1308 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,1309 :: 		if(totFront==9){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1014
	MOVLW      9
	XORWF      _totFront+0, 0
L__runner1014:
	BTFSS      STATUS+0, 2
	GOTO       L_runner526
;final_code_5.c,1310 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1311 :: 		totCounter=4;
	MOVLW      4
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_5.c,1312 :: 		}
L_runner526:
;final_code_5.c,1313 :: 		}
L_runner525:
L_runner524:
L_runner521:
;final_code_5.c,1314 :: 		}
	RETURN
; end of _runner

_getTrackMiddle:

;final_code_5.c,1316 :: 		void getTrackMiddle(){
;final_code_5.c,1318 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_5.c,1319 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1320 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1321 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1322 :: 		NidegL();
	CALL       _NidegL+0
;final_code_5.c,1324 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1325 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1326 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1327 :: 		while(counter2>300&&counter3>300){
L_getTrackMiddle527:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1015
	MOVF       _counter2+0, 0
	SUBLW      44
L__getTrackMiddle1015:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle528
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1016
	MOVF       _counter3+0, 0
	SUBLW      44
L__getTrackMiddle1016:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle528
L__getTrackMiddle645:
;final_code_5.c,1328 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1329 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1330 :: 		goStraight2();
	CALL       _goStraight2+0
;final_code_5.c,1331 :: 		}
	GOTO       L_getTrackMiddle527
L_getTrackMiddle528:
;final_code_5.c,1332 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1333 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_getTrackMiddle531:
	DECFSZ     R13+0, 1
	GOTO       L_getTrackMiddle531
	DECFSZ     R12+0, 1
	GOTO       L_getTrackMiddle531
	DECFSZ     R11+0, 1
	GOTO       L_getTrackMiddle531
	NOP
;final_code_5.c,1334 :: 		NidegR();
	CALL       _NidegR+0
;final_code_5.c,1335 :: 		NidegR();
	CALL       _NidegR+0
;final_code_5.c,1337 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1338 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1339 :: 		while(counter2>80&&counter3>80){
L_getTrackMiddle532:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1017
	MOVF       _counter2+0, 0
	SUBLW      80
L__getTrackMiddle1017:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle533
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1018
	MOVF       _counter3+0, 0
	SUBLW      80
L__getTrackMiddle1018:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle533
L__getTrackMiddle644:
;final_code_5.c,1340 :: 		getDis2();
	CALL       _getDis2+0
;final_code_5.c,1341 :: 		getDis3();
	CALL       _getDis3+0
;final_code_5.c,1342 :: 		goStraight2();
	CALL       _goStraight2+0
;final_code_5.c,1343 :: 		}
	GOTO       L_getTrackMiddle532
L_getTrackMiddle533:
;final_code_5.c,1345 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1346 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_getTrackMiddle536:
	DECFSZ     R13+0, 1
	GOTO       L_getTrackMiddle536
	DECFSZ     R12+0, 1
	GOTO       L_getTrackMiddle536
	DECFSZ     R11+0, 1
	GOTO       L_getTrackMiddle536
	NOP
;final_code_5.c,1348 :: 		}
	RETURN
; end of _getTrackMiddle

_final:

;final_code_5.c,1353 :: 		void final(){
;final_code_5.c,1355 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,1356 :: 		front_value=getFrontDecimal();
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      _front_value+0
	MOVF       R0+1, 0
	MOVWF      _front_value+1
;final_code_5.c,1357 :: 		back_value=getBackDecimal();
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      _back_value+0
	MOVF       R0+1, 0
	MOVWF      _back_value+1
;final_code_5.c,1358 :: 		if(mode_change==0){
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1019
	MOVLW      0
	XORWF      _mode_change+0, 0
L__final1019:
	BTFSS      STATUS+0, 2
	GOTO       L_final537
;final_code_5.c,1359 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code_5.c,1360 :: 		if(front_value==511){
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__final1020
	MOVLW      255
	XORWF      _front_value+0, 0
L__final1020:
	BTFSS      STATUS+0, 2
	GOTO       L_final538
;final_code_5.c,1361 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1362 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_final539:
	DECFSZ     R13+0, 1
	GOTO       L_final539
	DECFSZ     R12+0, 1
	GOTO       L_final539
	DECFSZ     R11+0, 1
	GOTO       L_final539
	NOP
;final_code_5.c,1363 :: 		forward();
	CALL       _forward+0
;final_code_5.c,1364 :: 		if(back_value==31 && front_value==511 && mode_change==0){
	MOVLW      0
	XORWF      _back_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1021
	MOVLW      31
	XORWF      _back_value+0, 0
L__final1021:
	BTFSS      STATUS+0, 2
	GOTO       L_final542
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__final1022
	MOVLW      255
	XORWF      _front_value+0, 0
L__final1022:
	BTFSS      STATUS+0, 2
	GOTO       L_final542
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1023
	MOVLW      0
	XORWF      _mode_change+0, 0
L__final1023:
	BTFSS      STATUS+0, 2
	GOTO       L_final542
L__final646:
;final_code_5.c,1365 :: 		mode_change=1;
	MOVLW      1
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_5.c,1366 :: 		}
L_final542:
;final_code_5.c,1367 :: 		}
L_final538:
;final_code_5.c,1368 :: 		}else if(mode_change==1){
	GOTO       L_final543
L_final537:
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1024
	MOVLW      1
	XORWF      _mode_change+0, 0
L__final1024:
	BTFSS      STATUS+0, 2
	GOTO       L_final544
;final_code_5.c,1370 :: 		avoidObstacles();
	CALL       _avoidObstacles+0
;final_code_5.c,1371 :: 		if(front_value==0){
	MOVLW      0
	XORWF      _front_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1025
	MOVLW      0
	XORWF      _front_value+0, 0
L__final1025:
	BTFSS      STATUS+0, 2
	GOTO       L_final545
;final_code_5.c,1372 :: 		mode_change=2;
	MOVLW      2
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_5.c,1373 :: 		}
L_final545:
;final_code_5.c,1374 :: 		}else if(mode_change==2){
	GOTO       L_final546
L_final544:
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1026
	MOVLW      2
	XORWF      _mode_change+0, 0
L__final1026:
	BTFSS      STATUS+0, 2
	GOTO       L_final547
;final_code_5.c,1376 :: 		followArrow();
	CALL       _followArrow+0
;final_code_5.c,1377 :: 		if(front_value==511){
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__final1027
	MOVLW      255
	XORWF      _front_value+0, 0
L__final1027:
	BTFSS      STATUS+0, 2
	GOTO       L_final548
;final_code_5.c,1378 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1379 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_final549:
	DECFSZ     R13+0, 1
	GOTO       L_final549
	DECFSZ     R12+0, 1
	GOTO       L_final549
	DECFSZ     R11+0, 1
	GOTO       L_final549
	NOP
;final_code_5.c,1380 :: 		do{
L_final550:
;final_code_5.c,1381 :: 		goStraight();
	CALL       _goStraight+0
;final_code_5.c,1382 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_5.c,1383 :: 		front_value=getFrontDecimal();
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      _front_value+0
	MOVF       R0+1, 0
	MOVWF      _front_value+1
;final_code_5.c,1384 :: 		back_value=getBackDecimal();
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      _back_value+0
	MOVF       R0+1, 0
	MOVWF      _back_value+1
;final_code_5.c,1385 :: 		if(back_value==31){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__final1028
	MOVLW      31
	XORWF      R0+0, 0
L__final1028:
	BTFSS      STATUS+0, 2
	GOTO       L_final553
;final_code_5.c,1386 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1387 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_final554:
	DECFSZ     R13+0, 1
	GOTO       L_final554
	DECFSZ     R12+0, 1
	GOTO       L_final554
	DECFSZ     R11+0, 1
	GOTO       L_final554
	NOP
;final_code_5.c,1388 :: 		break;
	GOTO       L_final551
;final_code_5.c,1389 :: 		}
L_final553:
;final_code_5.c,1390 :: 		}while(front_value==511);
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__final1029
	MOVLW      255
	XORWF      _front_value+0, 0
L__final1029:
	BTFSC      STATUS+0, 2
	GOTO       L_final550
L_final551:
;final_code_5.c,1391 :: 		}
L_final548:
;final_code_5.c,1392 :: 		}
L_final547:
L_final546:
L_final543:
;final_code_5.c,1397 :: 		}
	RETURN
; end of _final

_main:

;final_code_5.c,1401 :: 		void main() {
;final_code_5.c,1402 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code_5.c,1403 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code_5.c,1404 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code_5.c,1405 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_5.c,1406 :: 		init_timer();
	CALL       _init_timer+0
;final_code_5.c,1407 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code_5.c,1408 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code_5.c,1410 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code_5.c,1411 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code_5.c,1412 :: 		PWM1_Set_Duty(195);
	MOVLW      195
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_5.c,1413 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_5.c,1414 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code_5.c,1415 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code_5.c,1416 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_5.c,1417 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code_5.c,1419 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code_5.c,1420 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code_5.c,1421 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_5.c,1422 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_5.c,1423 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code_5.c,1424 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;final_code_5.c,1425 :: 		TRISC.F4=0;
	BCF        TRISC+0, 4
;final_code_5.c,1426 :: 		TRISC.F5=0;
	BCF        TRISC+0, 5
;final_code_5.c,1427 :: 		TRISC.F6=0;
	BCF        TRISC+0, 6
;final_code_5.c,1428 :: 		TRISD.F3=1;
	BSF        TRISD+0, 3
;final_code_5.c,1429 :: 		TRISD.F4=1;
	BSF        TRISD+0, 4
;final_code_5.c,1430 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_5.c,1431 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_5.c,1432 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_5.c,1433 :: 		stopAll();
	CALL       _stopAll+0
;final_code_5.c,1434 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main555:
	DECFSZ     R13+0, 1
	GOTO       L_main555
	DECFSZ     R12+0, 1
	GOTO       L_main555
	DECFSZ     R11+0, 1
	GOTO       L_main555
	NOP
;final_code_5.c,1435 :: 		while(1){
L_main556:
;final_code_5.c,1437 :: 		avoidObstacles();
	CALL       _avoidObstacles+0
;final_code_5.c,1439 :: 		Delay_us(10);
	MOVLW      16
	MOVWF      R13+0
L_main558:
	DECFSZ     R13+0, 1
	GOTO       L_main558
	NOP
;final_code_5.c,1440 :: 		}
	GOTO       L_main556
;final_code_5.c,1443 :: 		}
	GOTO       $+0
; end of _main
