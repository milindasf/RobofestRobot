
_fullSpeed:

;final_code_6.c,31 :: 		void fullSpeed(){
;final_code_6.c,33 :: 		speed =255;
	MOVLW      255
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_6.c,34 :: 		speed1=235;
	MOVLW      235
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_6.c,35 :: 		speed2=250;
	MOVLW      250
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_6.c,36 :: 		speed3=230;     //speed1=225;
	MOVLW      230
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_6.c,40 :: 		}
	RETURN
; end of _fullSpeed

_mediumSpeed:

;final_code_6.c,41 :: 		void mediumSpeed(){
;final_code_6.c,42 :: 		speed =230;
	MOVLW      230
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_6.c,43 :: 		speed1=200;
	MOVLW      200
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_6.c,44 :: 		speed2=225;
	MOVLW      225
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_6.c,45 :: 		speed3=205;     //speed1=225;
	MOVLW      205
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_6.c,46 :: 		}
	RETURN
; end of _mediumSpeed

_arrow_speed:

;final_code_6.c,48 :: 		void arrow_speed(){
;final_code_6.c,49 :: 		speed =170;
	MOVLW      170
	MOVWF      _speed+0
	CLRF       _speed+1
;final_code_6.c,50 :: 		speed1=170;
	MOVLW      170
	MOVWF      _speed1+0
	CLRF       _speed1+1
;final_code_6.c,51 :: 		speed2=180;
	MOVLW      180
	MOVWF      _speed2+0
	CLRF       _speed2+1
;final_code_6.c,52 :: 		speed3=180;     //speed1=225;
	MOVLW      180
	MOVWF      _speed3+0
	CLRF       _speed3+1
;final_code_6.c,53 :: 		}
	RETURN
; end of _arrow_speed

_rotateLeft:

;final_code_6.c,56 :: 		void rotateLeft(){
;final_code_6.c,57 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_6.c,58 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_6.c,59 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,60 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,61 :: 		rotationMode=1;
	MOVLW      1
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_6.c,62 :: 		}
	RETURN
; end of _rotateLeft

_rotateRight:

;final_code_6.c,64 :: 		void rotateRight(){
;final_code_6.c,65 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_6.c,66 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_6.c,67 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,68 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_6.c,69 :: 		rotationMode=2;
	MOVLW      2
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_6.c,70 :: 		}
	RETURN
; end of _rotateRight

_moveF:

;final_code_6.c,72 :: 		void moveF(){
;final_code_6.c,73 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_6.c,74 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_6.c,75 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,76 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,77 :: 		rotationMode=3;
	MOVLW      3
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_6.c,78 :: 		}
	RETURN
; end of _moveF

_moveB:

;final_code_6.c,80 :: 		void moveB(){
;final_code_6.c,81 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_6.c,82 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_6.c,83 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,84 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_6.c,85 :: 		rotationMode=4;
	MOVLW      4
	MOVWF      _rotationMode+0
	MOVLW      0
	MOVWF      _rotationMode+1
;final_code_6.c,86 :: 		}
	RETURN
; end of _moveB

_forward:

;final_code_6.c,88 :: 		forward(){
;final_code_6.c,89 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;final_code_6.c,90 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;final_code_6.c,91 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,92 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,93 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,94 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,95 :: 		}
	RETURN
; end of _forward

_backward:

;final_code_6.c,97 :: 		backward(){
;final_code_6.c,98 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;final_code_6.c,99 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;final_code_6.c,100 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,101 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_6.c,102 :: 		PWM1_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,103 :: 		PWM2_Set_Duty(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,104 :: 		}
	RETURN
; end of _backward

_leftHardTurn:

;final_code_6.c,106 :: 		leftHardTurn(){
;final_code_6.c,107 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_6.c,108 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,109 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,110 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,111 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,112 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,113 :: 		}
	RETURN
; end of _leftHardTurn

_leftHardT:

;final_code_6.c,115 :: 		leftHardT(){
;final_code_6.c,116 :: 		PORTC.F3=0;    //left motor backward
	BCF        PORTC+0, 3
;final_code_6.c,117 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,118 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,119 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,120 :: 		}
	RETURN
; end of _leftHardT

_RightHardTurn:

;final_code_6.c,122 :: 		RightHardTurn(){
;final_code_6.c,123 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,124 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;final_code_6.c,125 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_6.c,126 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,127 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,128 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,129 :: 		}
	RETURN
; end of _RightHardTurn

_leftTurn:

;final_code_6.c,131 :: 		leftTurn(){
;final_code_6.c,132 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,133 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,134 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,135 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,136 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,137 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,138 :: 		}
	RETURN
; end of _leftTurn

_RightTurn:

;final_code_6.c,140 :: 		RightTurn(){
;final_code_6.c,141 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_6.c,142 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,143 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_6.c,144 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,145 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,146 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,147 :: 		}
	RETURN
; end of _RightTurn

_leftSoftTurn:

;final_code_6.c,149 :: 		leftSoftTurn(){
;final_code_6.c,150 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_6.c,151 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,152 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_6.c,153 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,154 :: 		PWM1_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,155 :: 		PWM2_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,157 :: 		}
	RETURN
; end of _leftSoftTurn

_rightSoftTurn:

;final_code_6.c,159 :: 		rightSoftTurn(){
;final_code_6.c,160 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,161 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,162 :: 		PORTC.F4=0;    //Right motor forward
	BCF        PORTC+0, 4
;final_code_6.c,163 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,164 :: 		PWM1_Set_Duty(speed1);
	MOVF       _speed1+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,165 :: 		PWM2_Set_Duty(speed2);
	MOVF       _speed2+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,166 :: 		}
	RETURN
; end of _rightSoftTurn

_stopAll:

;final_code_6.c,168 :: 		stopAll(){
;final_code_6.c,169 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,170 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,171 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,172 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,173 :: 		}
	RETURN
; end of _stopAll

_leftT:

;final_code_6.c,175 :: 		leftT(){
;final_code_6.c,176 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,177 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,178 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,179 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,180 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,181 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,183 :: 		}
	RETURN
; end of _leftT

_rightT:

;final_code_6.c,185 :: 		rightT(){
;final_code_6.c,187 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_6.c,188 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,189 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_6.c,190 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,191 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,192 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,194 :: 		}
	RETURN
; end of _rightT

_leftT2:

;final_code_6.c,196 :: 		leftT2(){
;final_code_6.c,197 :: 		PORTC.F3=1;    //left motor backward
	BSF        PORTC+0, 3
;final_code_6.c,198 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,199 :: 		PORTC.F4=1;    //Right motor forward
	BSF        PORTC+0, 4
;final_code_6.c,200 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;final_code_6.c,202 :: 		}
	RETURN
; end of _leftT2

_rightT2:

;final_code_6.c,204 :: 		rightT2(){
;final_code_6.c,206 :: 		PORTC.F3=1;    //left motor forward
	BSF        PORTC+0, 3
;final_code_6.c,207 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;final_code_6.c,208 :: 		PORTC.F4=0;    //Right motor stopped
	BCF        PORTC+0, 4
;final_code_6.c,209 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;final_code_6.c,211 :: 		}
	RETURN
; end of _rightT2

_sensorRead:

;final_code_6.c,213 :: 		sensorRead(){
;final_code_6.c,215 :: 		totFront=0;
	CLRF       _totFront+0
	CLRF       _totFront+1
;final_code_6.c,216 :: 		totBack=0;
	CLRF       _totBack+0
	CLRF       _totBack+1
;final_code_6.c,217 :: 		if(ADC_Read(0)>adcVal){
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead738
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead738:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead0
;final_code_6.c,218 :: 		text[0]='1';
	MOVLW      49
	MOVWF      _text+0
;final_code_6.c,219 :: 		sw[1][0]=1;
	MOVLW      1
	MOVWF      _sw+18
	MOVLW      0
	MOVWF      _sw+19
;final_code_6.c,220 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_6.c,221 :: 		}else{
	GOTO       L_sensorRead1
L_sensorRead0:
;final_code_6.c,222 :: 		text[0]='0';
	MOVLW      48
	MOVWF      _text+0
;final_code_6.c,223 :: 		sw[1][0]=0;
	CLRF       _sw+18
	CLRF       _sw+19
;final_code_6.c,224 :: 		}
L_sensorRead1:
;final_code_6.c,225 :: 		if(ADC_Read(1)>adcVal){
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead739
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead739:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead2
;final_code_6.c,226 :: 		text[1]='1';
	MOVLW      49
	MOVWF      _text+1
;final_code_6.c,227 :: 		sw[1][1]=1;
	MOVLW      1
	MOVWF      _sw+20
	MOVLW      0
	MOVWF      _sw+21
;final_code_6.c,228 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_6.c,229 :: 		}else{
	GOTO       L_sensorRead3
L_sensorRead2:
;final_code_6.c,230 :: 		text[1]='0';
	MOVLW      48
	MOVWF      _text+1
;final_code_6.c,231 :: 		sw[1][1]=0;
	CLRF       _sw+20
	CLRF       _sw+21
;final_code_6.c,232 :: 		}
L_sensorRead3:
;final_code_6.c,233 :: 		if(ADC_Read(2)> adcVal){
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead740
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead740:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead4
;final_code_6.c,234 :: 		text[2]='1';
	MOVLW      49
	MOVWF      _text+2
;final_code_6.c,235 :: 		sw[1][2]=1;
	MOVLW      1
	MOVWF      _sw+22
	MOVLW      0
	MOVWF      _sw+23
;final_code_6.c,236 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_6.c,237 :: 		}else{
	GOTO       L_sensorRead5
L_sensorRead4:
;final_code_6.c,238 :: 		text[2]='0';
	MOVLW      48
	MOVWF      _text+2
;final_code_6.c,239 :: 		sw[1][2]=0;
	CLRF       _sw+22
	CLRF       _sw+23
;final_code_6.c,240 :: 		}
L_sensorRead5:
;final_code_6.c,241 :: 		if(ADC_Read(3)> adcVal){
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead741
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead741:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead6
;final_code_6.c,242 :: 		text[3]='1';
	MOVLW      49
	MOVWF      _text+3
;final_code_6.c,243 :: 		sw[1][3]=1;
	MOVLW      1
	MOVWF      _sw+24
	MOVLW      0
	MOVWF      _sw+25
;final_code_6.c,244 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_6.c,245 :: 		}else{
	GOTO       L_sensorRead7
L_sensorRead6:
;final_code_6.c,246 :: 		text[3]='0';
	MOVLW      48
	MOVWF      _text+3
;final_code_6.c,247 :: 		sw[1][3]=0;
	CLRF       _sw+24
	CLRF       _sw+25
;final_code_6.c,248 :: 		}
L_sensorRead7:
;final_code_6.c,250 :: 		if(ADC_Read(4)>adcVal){
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead742
	MOVF       R0+0, 0
	SUBWF      _adcVal+0, 0
L__sensorRead742:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead8
;final_code_6.c,251 :: 		text[4]='1';
	MOVLW      49
	MOVWF      _text+4
;final_code_6.c,252 :: 		sw[1][4]=1;
	MOVLW      1
	MOVWF      _sw+26
	MOVLW      0
	MOVWF      _sw+27
;final_code_6.c,253 :: 		totBack++;
	INCF       _totBack+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totBack+1, 1
;final_code_6.c,254 :: 		}else{
	GOTO       L_sensorRead9
L_sensorRead8:
;final_code_6.c,255 :: 		text[4]='0';
	MOVLW      48
	MOVWF      _text+4
;final_code_6.c,256 :: 		sw[1][4]=0;
	CLRF       _sw+26
	CLRF       _sw+27
;final_code_6.c,257 :: 		}
L_sensorRead9:
;final_code_6.c,258 :: 		if(ADC_Read(5)>adcVal1){
	MOVLW      5
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead743
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead743:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead10
;final_code_6.c,259 :: 		text[5]='1';
	MOVLW      49
	MOVWF      _text+5
;final_code_6.c,260 :: 		sw[0][0]=1;
	MOVLW      1
	MOVWF      _sw+0
	MOVLW      0
	MOVWF      _sw+1
;final_code_6.c,261 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,262 :: 		}else{
	GOTO       L_sensorRead11
L_sensorRead10:
;final_code_6.c,263 :: 		text[5]='0';
	MOVLW      48
	MOVWF      _text+5
;final_code_6.c,264 :: 		sw[0][0]=0;
	CLRF       _sw+0
	CLRF       _sw+1
;final_code_6.c,265 :: 		}
L_sensorRead11:
;final_code_6.c,267 :: 		if(ADC_Read(6)>adcVal1){
	MOVLW      6
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead744
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead744:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead12
;final_code_6.c,268 :: 		text[6]='1';
	MOVLW      49
	MOVWF      _text+6
;final_code_6.c,269 :: 		sw[0][1]=1;
	MOVLW      1
	MOVWF      _sw+2
	MOVLW      0
	MOVWF      _sw+3
;final_code_6.c,270 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,271 :: 		}else{
	GOTO       L_sensorRead13
L_sensorRead12:
;final_code_6.c,272 :: 		text[6]='0';
	MOVLW      48
	MOVWF      _text+6
;final_code_6.c,273 :: 		sw[0][1]=0;
	CLRF       _sw+2
	CLRF       _sw+3
;final_code_6.c,274 :: 		}
L_sensorRead13:
;final_code_6.c,275 :: 		if(ADC_Read(7)>adcVal1){
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead745
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead745:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead14
;final_code_6.c,276 :: 		text[7]='1';
	MOVLW      49
	MOVWF      _text+7
;final_code_6.c,277 :: 		sw[0][2]=1;
	MOVLW      1
	MOVWF      _sw+4
	MOVLW      0
	MOVWF      _sw+5
;final_code_6.c,278 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,279 :: 		}else{
	GOTO       L_sensorRead15
L_sensorRead14:
;final_code_6.c,280 :: 		text[7]='0';
	MOVLW      48
	MOVWF      _text+7
;final_code_6.c,281 :: 		sw[0][2]=0;
	CLRF       _sw+4
	CLRF       _sw+5
;final_code_6.c,282 :: 		}
L_sensorRead15:
;final_code_6.c,283 :: 		if(ADC_Read(8)>adcVal1){
	MOVLW      8
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead746
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead746:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead16
;final_code_6.c,284 :: 		text[8]='1';
	MOVLW      49
	MOVWF      _text+8
;final_code_6.c,285 :: 		sw[0][3]=1;
	MOVLW      1
	MOVWF      _sw+6
	MOVLW      0
	MOVWF      _sw+7
;final_code_6.c,286 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,287 :: 		}else{
	GOTO       L_sensorRead17
L_sensorRead16:
;final_code_6.c,288 :: 		text[8]='0';
	MOVLW      48
	MOVWF      _text+8
;final_code_6.c,289 :: 		sw[0][3]=0;
	CLRF       _sw+6
	CLRF       _sw+7
;final_code_6.c,290 :: 		}
L_sensorRead17:
;final_code_6.c,291 :: 		if(ADC_Read(9)>adcVal1){
	MOVLW      9
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead747
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead747:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead18
;final_code_6.c,292 :: 		text[9]='1';
	MOVLW      49
	MOVWF      _text+9
;final_code_6.c,293 :: 		sw[0][4]=1;
	MOVLW      1
	MOVWF      _sw+8
	MOVLW      0
	MOVWF      _sw+9
;final_code_6.c,294 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,295 :: 		}else{
	GOTO       L_sensorRead19
L_sensorRead18:
;final_code_6.c,296 :: 		text[9]='0';
	MOVLW      48
	MOVWF      _text+9
;final_code_6.c,297 :: 		sw[0][4]=0;
	CLRF       _sw+8
	CLRF       _sw+9
;final_code_6.c,298 :: 		}
L_sensorRead19:
;final_code_6.c,299 :: 		if(ADC_Read(10)>adcVal1){
	MOVLW      10
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead748
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead748:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead20
;final_code_6.c,300 :: 		text[10]='1';
	MOVLW      49
	MOVWF      _text+10
;final_code_6.c,301 :: 		sw[0][5]=1;
	MOVLW      1
	MOVWF      _sw+10
	MOVLW      0
	MOVWF      _sw+11
;final_code_6.c,302 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,303 :: 		}else{
	GOTO       L_sensorRead21
L_sensorRead20:
;final_code_6.c,304 :: 		text[10]='0';
	MOVLW      48
	MOVWF      _text+10
;final_code_6.c,305 :: 		sw[0][5]=0;
	CLRF       _sw+10
	CLRF       _sw+11
;final_code_6.c,306 :: 		}
L_sensorRead21:
;final_code_6.c,307 :: 		if(ADC_Read(11)>adcVal1){
	MOVLW      11
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead749
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead749:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead22
;final_code_6.c,308 :: 		text[11]='1';
	MOVLW      49
	MOVWF      _text+11
;final_code_6.c,309 :: 		sw[0][6]=1;
	MOVLW      1
	MOVWF      _sw+12
	MOVLW      0
	MOVWF      _sw+13
;final_code_6.c,310 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,311 :: 		}else{
	GOTO       L_sensorRead23
L_sensorRead22:
;final_code_6.c,312 :: 		text[11]='0';
	MOVLW      48
	MOVWF      _text+11
;final_code_6.c,313 :: 		sw[0][6]=0;
	CLRF       _sw+12
	CLRF       _sw+13
;final_code_6.c,314 :: 		}
L_sensorRead23:
;final_code_6.c,315 :: 		if(ADC_Read(12)>adcVal1){
	MOVLW      12
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead750
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead750:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead24
;final_code_6.c,316 :: 		text[12]='1';
	MOVLW      49
	MOVWF      _text+12
;final_code_6.c,317 :: 		sw[0][7]=1;
	MOVLW      1
	MOVWF      _sw+14
	MOVLW      0
	MOVWF      _sw+15
;final_code_6.c,318 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,319 :: 		}else{
	GOTO       L_sensorRead25
L_sensorRead24:
;final_code_6.c,320 :: 		text[12]='0';
	MOVLW      48
	MOVWF      _text+12
;final_code_6.c,321 :: 		sw[0][7]=0;
	CLRF       _sw+14
	CLRF       _sw+15
;final_code_6.c,322 :: 		}
L_sensorRead25:
;final_code_6.c,323 :: 		if(ADC_Read(13)>adcVal1){
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBWF      _adcVal1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sensorRead751
	MOVF       R0+0, 0
	SUBWF      _adcVal1+0, 0
L__sensorRead751:
	BTFSC      STATUS+0, 0
	GOTO       L_sensorRead26
;final_code_6.c,324 :: 		text[13]='1';
	MOVLW      49
	MOVWF      _text+13
;final_code_6.c,325 :: 		sw[0][8]=1;
	MOVLW      1
	MOVWF      _sw+16
	MOVLW      0
	MOVWF      _sw+17
;final_code_6.c,326 :: 		totFront++;
	INCF       _totFront+0, 1
	BTFSC      STATUS+0, 2
	INCF       _totFront+1, 1
;final_code_6.c,327 :: 		}else{
	GOTO       L_sensorRead27
L_sensorRead26:
;final_code_6.c,328 :: 		text[13]='0';
	MOVLW      48
	MOVWF      _text+13
;final_code_6.c,329 :: 		sw[0][8]=0;
	CLRF       _sw+16
	CLRF       _sw+17
;final_code_6.c,330 :: 		}
L_sensorRead27:
;final_code_6.c,332 :: 		}
	RETURN
; end of _sensorRead

_printToLcd:

;final_code_6.c,334 :: 		void printToLcd(){
;final_code_6.c,335 :: 		int i=0;
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
;final_code_6.c,336 :: 		for(i=0;i<9;i++){
	CLRF       printToLcd_i_L0+0
	CLRF       printToLcd_i_L0+1
L_printToLcd28:
	MOVLW      128
	XORWF      printToLcd_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printToLcd752
	MOVLW      9
	SUBWF      printToLcd_i_L0+0, 0
L__printToLcd752:
	BTFSC      STATUS+0, 0
	GOTO       L_printToLcd29
	INCF       printToLcd_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       printToLcd_i_L0+1, 1
;final_code_6.c,340 :: 		}
	GOTO       L_printToLcd28
L_printToLcd29:
;final_code_6.c,343 :: 		}
	RETURN
; end of _printToLcd

_bin_deci:

;final_code_6.c,345 :: 		int  bin_deci(){
;final_code_6.c,347 :: 		int decimal_value=0;
;final_code_6.c,348 :: 		decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
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
L__bin_deci753:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci754
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci753
L__bin_deci754:
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
L__bin_deci755:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci756
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci755
L__bin_deci756:
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
L__bin_deci757:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci758
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci757
L__bin_deci758:
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
L__bin_deci759:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci760
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci759
L__bin_deci760:
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
L__bin_deci761:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_deci762
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_deci761
L__bin_deci762:
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
;final_code_6.c,351 :: 		return decimal_value;
;final_code_6.c,353 :: 		}
	RETURN
; end of _bin_deci

_lineFollow:

;final_code_6.c,355 :: 		lineFollow(){
;final_code_6.c,356 :: 		int count=0;
	CLRF       lineFollow_count_L0+0
	CLRF       lineFollow_count_L0+1
;final_code_6.c,357 :: 		int count_1=0;
	CLRF       lineFollow_count_1_L0+0
	CLRF       lineFollow_count_1_L0+1
;final_code_6.c,358 :: 		int state=0;
	CLRF       lineFollow_state_L0+0
	CLRF       lineFollow_state_L0+1
;final_code_6.c,359 :: 		int state_1=0;
	CLRF       lineFollow_state_1_L0+0
	CLRF       lineFollow_state_1_L0+1
;final_code_6.c,360 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,361 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,362 :: 		if(value==56 || value==48 || value==24){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow763
	MOVLW      56
	XORWF      R0+0, 0
L__lineFollow763:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow665
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow764
	MOVLW      48
	XORWF      _value+0, 0
L__lineFollow764:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow665
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow765
	MOVLW      24
	XORWF      _value+0, 0
L__lineFollow765:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow665
	GOTO       L_lineFollow33
L__lineFollow665:
;final_code_6.c,363 :: 		forward();
	CALL       _forward+0
;final_code_6.c,365 :: 		}
	GOTO       L_lineFollow34
L_lineFollow33:
;final_code_6.c,366 :: 		else if((value==28) || (value==12)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow766
	MOVLW      28
	XORWF      _value+0, 0
L__lineFollow766:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow664
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow767
	MOVLW      12
	XORWF      _value+0, 0
L__lineFollow767:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow664
	GOTO       L_lineFollow37
L__lineFollow664:
;final_code_6.c,367 :: 		rightSoftTurn();
	CALL       _rightSoftTurn+0
;final_code_6.c,369 :: 		}
	GOTO       L_lineFollow38
L_lineFollow37:
;final_code_6.c,371 :: 		else if((value==112) || (value==96)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow768
	MOVLW      112
	XORWF      _value+0, 0
L__lineFollow768:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow663
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow769
	MOVLW      96
	XORWF      _value+0, 0
L__lineFollow769:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow663
	GOTO       L_lineFollow41
L__lineFollow663:
;final_code_6.c,372 :: 		leftSoftTurn();
	CALL       _leftSoftTurn+0
;final_code_6.c,374 :: 		}
	GOTO       L_lineFollow42
L_lineFollow41:
;final_code_6.c,375 :: 		else if((value==14) || (value==6)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow770
	MOVLW      14
	XORWF      _value+0, 0
L__lineFollow770:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow662
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow771
	MOVLW      6
	XORWF      _value+0, 0
L__lineFollow771:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow662
	GOTO       L_lineFollow45
L__lineFollow662:
;final_code_6.c,376 :: 		rightTurn();
	CALL       _RightTurn+0
;final_code_6.c,377 :: 		turnNo=3;
	MOVLW      3
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,378 :: 		}
	GOTO       L_lineFollow46
L_lineFollow45:
;final_code_6.c,379 :: 		else if((value==224) || (value==192)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow772
	MOVLW      224
	XORWF      _value+0, 0
L__lineFollow772:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow661
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow773
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow773:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow661
	GOTO       L_lineFollow49
L__lineFollow661:
;final_code_6.c,380 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_6.c,381 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,382 :: 		}
	GOTO       L_lineFollow50
L_lineFollow49:
;final_code_6.c,383 :: 		else if((value==7) || (value==3) || (value==1)){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow774
	MOVLW      7
	XORWF      _value+0, 0
L__lineFollow774:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow660
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow775
	MOVLW      3
	XORWF      _value+0, 0
L__lineFollow775:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow660
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow776
	MOVLW      1
	XORWF      _value+0, 0
L__lineFollow776:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow660
	GOTO       L_lineFollow53
L__lineFollow660:
;final_code_6.c,384 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,385 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,386 :: 		}
	GOTO       L_lineFollow54
L_lineFollow53:
;final_code_6.c,387 :: 		else if((value==448) || (value==384) || (value==256)){
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow777
	MOVLW      192
	XORWF      _value+0, 0
L__lineFollow777:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow659
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow778
	MOVLW      128
	XORWF      _value+0, 0
L__lineFollow778:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow659
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow779
	MOVLW      0
	XORWF      _value+0, 0
L__lineFollow779:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow659
	GOTO       L_lineFollow57
L__lineFollow659:
;final_code_6.c,388 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,389 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,390 :: 		}
	GOTO       L_lineFollow58
L_lineFollow57:
;final_code_6.c,391 :: 		else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow780
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow780:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow658
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow781
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow781:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow658
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow782
	MOVLW      1
	XORWF      _sw+4, 0
L__lineFollow782:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow658
	GOTO       L_lineFollow65
L__lineFollow658:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow783
	MOVLW      1
	XORWF      _sw+12, 0
L__lineFollow783:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow657
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow784
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow784:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow657
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow785
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow785:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow657
	GOTO       L_lineFollow65
L__lineFollow657:
L__lineFollow656:
;final_code_6.c,394 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_6.c,395 :: 		turnNo=4;
	MOVLW      4
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,397 :: 		}else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
	GOTO       L_lineFollow66
L_lineFollow65:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow786
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow786:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow655
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow787
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow787:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow655
	GOTO       L_lineFollow73
L__lineFollow655:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow788
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow788:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow789
	MOVLW      0
	XORWF      _sw+2, 0
L__lineFollow789:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow790
	MOVLW      0
	XORWF      _sw+4, 0
L__lineFollow790:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow73
L__lineFollow654:
L__lineFollow653:
;final_code_6.c,401 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,402 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,407 :: 		}else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
	GOTO       L_lineFollow74
L_lineFollow73:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow791
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow791:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow652
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow792
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow792:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow652
	GOTO       L_lineFollow81
L__lineFollow652:
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow793
	MOVLW      0
	XORWF      _sw+12, 0
L__lineFollow793:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow794
	MOVLW      0
	XORWF      _sw+14, 0
L__lineFollow794:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow795
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow795:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow81
L__lineFollow651:
L__lineFollow650:
;final_code_6.c,411 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,412 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,417 :: 		}else if(((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)) && (sw[0][8]==1 && sw[0][7]==1)){
	GOTO       L_lineFollow82
L_lineFollow81:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow796
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow796:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow649
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow797
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow797:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow649
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow798
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow798:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow649
	GOTO       L_lineFollow89
L__lineFollow649:
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow799
	MOVLW      1
	XORWF      _sw+16, 0
L__lineFollow799:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
	MOVLW      0
	XORWF      _sw+15, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow800
	MOVLW      1
	XORWF      _sw+14, 0
L__lineFollow800:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow89
L__lineFollow648:
L__lineFollow647:
;final_code_6.c,420 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,421 :: 		turnNo=6;
	MOVLW      6
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,422 :: 		}else if((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
	GOTO       L_lineFollow90
L_lineFollow89:
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow801
	MOVLW      1
	XORWF      _sw+6, 0
L__lineFollow801:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow646
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow802
	MOVLW      1
	XORWF      _sw+8, 0
L__lineFollow802:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow646
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow803
	MOVLW      1
	XORWF      _sw+10, 0
L__lineFollow803:
	BTFSC      STATUS+0, 2
	GOTO       L__lineFollow646
	GOTO       L_lineFollow97
L__lineFollow646:
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow804
	MOVLW      1
	XORWF      _sw+0, 0
L__lineFollow804:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow805
	MOVLW      1
	XORWF      _sw+2, 0
L__lineFollow805:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow97
L__lineFollow645:
L__lineFollow644:
;final_code_6.c,425 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,426 :: 		turnNo=5;
	MOVLW      5
	MOVWF      _turnNo+0
	MOVLW      0
	MOVWF      _turnNo+1
;final_code_6.c,428 :: 		}else if(value==511){
	GOTO       L_lineFollow98
L_lineFollow97:
	MOVF       _value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow806
	MOVLW      255
	XORWF      _value+0, 0
L__lineFollow806:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow99
;final_code_6.c,429 :: 		forward();
	CALL       _forward+0
;final_code_6.c,430 :: 		delay_ms(200);
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
;final_code_6.c,431 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,433 :: 		}else {
	GOTO       L_lineFollow101
L_lineFollow99:
;final_code_6.c,434 :: 		if(turnNo==1){
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow807
	MOVLW      1
	XORWF      _turnNo+0, 0
L__lineFollow807:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow102
;final_code_6.c,436 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_6.c,437 :: 		}else if(turnNo==2){
	GOTO       L_lineFollow103
L_lineFollow102:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow808
	MOVLW      2
	XORWF      _turnNo+0, 0
L__lineFollow808:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow104
;final_code_6.c,439 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_6.c,440 :: 		}else if(turnNo==3){
	GOTO       L_lineFollow105
L_lineFollow104:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow809
	MOVLW      3
	XORWF      _turnNo+0, 0
L__lineFollow809:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow106
;final_code_6.c,441 :: 		RightTurn();
	CALL       _RightTurn+0
;final_code_6.c,442 :: 		}else if(turnNo==4){
	GOTO       L_lineFollow107
L_lineFollow106:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow810
	MOVLW      4
	XORWF      _turnNo+0, 0
L__lineFollow810:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow108
;final_code_6.c,443 :: 		leftTurn();
	CALL       _leftTurn+0
;final_code_6.c,444 :: 		}else if(turnNo==5){
	GOTO       L_lineFollow109
L_lineFollow108:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow811
	MOVLW      5
	XORWF      _turnNo+0, 0
L__lineFollow811:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow110
;final_code_6.c,445 :: 		rightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,446 :: 		}else if(turnNo==6){
	GOTO       L_lineFollow111
L_lineFollow110:
	MOVLW      0
	XORWF      _turnNo+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow812
	MOVLW      6
	XORWF      _turnNo+0, 0
L__lineFollow812:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow112
;final_code_6.c,447 :: 		leftHardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,448 :: 		}
L_lineFollow112:
L_lineFollow111:
L_lineFollow109:
L_lineFollow107:
L_lineFollow105:
L_lineFollow103:
;final_code_6.c,449 :: 		}
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
;final_code_6.c,451 :: 		if(sw[0][8]==0){
	MOVLW      0
	XORWF      _sw+17, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow813
	MOVLW      0
	XORWF      _sw+16, 0
L__lineFollow813:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow113
;final_code_6.c,452 :: 		left_count=0;
	CLRF       _left_count+0
	CLRF       _left_count+1
;final_code_6.c,454 :: 		}else{
	GOTO       L_lineFollow114
L_lineFollow113:
;final_code_6.c,455 :: 		left_count++;
	INCF       _left_count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _left_count+1, 1
;final_code_6.c,457 :: 		}
L_lineFollow114:
;final_code_6.c,458 :: 		if(sw[0][0]==0){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lineFollow814
	MOVLW      0
	XORWF      _sw+0, 0
L__lineFollow814:
	BTFSS      STATUS+0, 2
	GOTO       L_lineFollow115
;final_code_6.c,459 :: 		right_count=0;
	CLRF       _right_count+0
	CLRF       _right_count+1
;final_code_6.c,461 :: 		}else{
	GOTO       L_lineFollow116
L_lineFollow115:
;final_code_6.c,462 :: 		right_count++;
	INCF       _right_count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _right_count+1, 1
;final_code_6.c,463 :: 		}
L_lineFollow116:
;final_code_6.c,528 :: 		}
	RETURN
; end of _lineFollow

_initEncoder:

;final_code_6.c,530 :: 		void initEncoder(){
;final_code_6.c,531 :: 		TMR1_value=0;
	CLRF       _TMR1_value+0
	CLRF       _TMR1_value+1
;final_code_6.c,532 :: 		TMR0_value=0;
	CLRF       _TMR0_value+0
	CLRF       _TMR0_value+1
;final_code_6.c,533 :: 		}
	RETURN
; end of _initEncoder

_goStraight:

;final_code_6.c,536 :: 		void goStraight(){
;final_code_6.c,538 :: 		int left=0;
	CLRF       goStraight_left_L0+0
	CLRF       goStraight_left_L0+1
;final_code_6.c,539 :: 		int right=0;
	CLRF       goStraight_right_L0+0
	CLRF       goStraight_right_L0+1
;final_code_6.c,540 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,541 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,542 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight815
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight815:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight666
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight816
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight816:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight666
	GOTO       L_goStraight119
L__goStraight666:
;final_code_6.c,543 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,544 :: 		}
L_goStraight119:
;final_code_6.c,545 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,547 :: 		if(TMR0_value>=TMR1_value){
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight817
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight817:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight120
;final_code_6.c,549 :: 		if(TMR0_value-TMR1_value>=3){
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
	GOTO       L__goStraight818
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight818:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight121
;final_code_6.c,550 :: 		do{
L_goStraight122:
;final_code_6.c,551 :: 		rightT();
	CALL       _rightT+0
;final_code_6.c,552 :: 		}while(TMR0_value>=TMR1_value);
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight819
	MOVF       _TMR1_value+0, 0
	SUBWF      _TMR0_value+0, 0
L__goStraight819:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight122
;final_code_6.c,553 :: 		}
L_goStraight121:
;final_code_6.c,556 :: 		}else{
	GOTO       L_goStraight125
L_goStraight120:
;final_code_6.c,558 :: 		if(TMR1_value-TMR0_value>=3){
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
	GOTO       L__goStraight820
	MOVLW      3
	SUBWF      R1+0, 0
L__goStraight820:
	BTFSS      STATUS+0, 0
	GOTO       L_goStraight126
;final_code_6.c,559 :: 		do{
L_goStraight127:
;final_code_6.c,560 :: 		leftT();
	CALL       _leftT+0
;final_code_6.c,561 :: 		}while(TMR0_value<=TMR1_value);
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight821
	MOVF       _TMR0_value+0, 0
	SUBWF      _TMR1_value+0, 0
L__goStraight821:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight127
;final_code_6.c,562 :: 		}
L_goStraight126:
;final_code_6.c,563 :: 		}
L_goStraight125:
;final_code_6.c,564 :: 		}
	RETURN
; end of _goStraight

_goStraight2:

;final_code_6.c,567 :: 		void goStraight2(){
;final_code_6.c,568 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,569 :: 		if(TMR0_value>150||TMR1_value>150){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2822
	MOVF       _TMR0_value+0, 0
	SUBLW      150
L__goStraight2822:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2668
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2823
	MOVF       _TMR1_value+0, 0
	SUBLW      150
L__goStraight2823:
	BTFSS      STATUS+0, 0
	GOTO       L__goStraight2668
	GOTO       L_goStraight2132
L__goStraight2668:
;final_code_6.c,570 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,572 :: 		}
L_goStraight2132:
;final_code_6.c,573 :: 		if(TMR0_value>20&&TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2824
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__goStraight2824:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2135
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2825
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__goStraight2825:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2135
L__goStraight2667:
;final_code_6.c,574 :: 		distCounter= (TMR0_value*200);
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
;final_code_6.c,575 :: 		distCounter = distCounter/TMR1_value;
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
;final_code_6.c,576 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2826
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2826
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2826
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2826:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2136
;final_code_6.c,577 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,578 :: 		}else{
	GOTO       L_goStraight2137
L_goStraight2136:
;final_code_6.c,579 :: 		PWM2_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,580 :: 		}
L_goStraight2137:
;final_code_6.c,582 :: 		distCounter = (TMR1_value*200);
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
;final_code_6.c,583 :: 		distCounter = distCounter/TMR0_value;
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
;final_code_6.c,584 :: 		if(distCounter>255){
	MOVLW      128
	MOVWF      R4+0
	MOVLW      128
	XORWF      R0+3, 0
	SUBWF      R4+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2827
	MOVF       R0+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2827
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__goStraight2827
	MOVF       R0+0, 0
	SUBLW      255
L__goStraight2827:
	BTFSC      STATUS+0, 0
	GOTO       L_goStraight2138
;final_code_6.c,585 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,586 :: 		}else{
	GOTO       L_goStraight2139
L_goStraight2138:
;final_code_6.c,587 :: 		PWM1_Set_Duty(distCounter);
	MOVF       _distCounter+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,588 :: 		}
L_goStraight2139:
;final_code_6.c,589 :: 		}
L_goStraight2135:
;final_code_6.c,591 :: 		}
	RETURN
; end of _goStraight2

_SemSmallFollow:

;final_code_6.c,593 :: 		void SemSmallFollow(){
;final_code_6.c,594 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,595 :: 		if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow828
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow828:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow829
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow829:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow830
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow830:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow831
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow831:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow832
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow832:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow142
L__SemSmallFollow683:
;final_code_6.c,596 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,597 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow143
L_SemSmallFollow142:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow833
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow833:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow834
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow834:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow835
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow835:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow836
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow836:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow837
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow837:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow146
L__SemSmallFollow682:
;final_code_6.c,598 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,599 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow147
L_SemSmallFollow146:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow838
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow838:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow839
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow839:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow840
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow840:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow841
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow841:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow842
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow842:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow150
L__SemSmallFollow681:
;final_code_6.c,601 :: 		leftT2();
	CALL       _leftT2+0
;final_code_6.c,603 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow151
L_SemSmallFollow150:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow843
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow843:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow844
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow844:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow845
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow845:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow846
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow846:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow847
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow847:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow154
L__SemSmallFollow680:
;final_code_6.c,604 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,605 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow155
L_SemSmallFollow154:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow848
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow848:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow849
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow849:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow850
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow850:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow851
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow851:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow852
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow852:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow158
L__SemSmallFollow679:
;final_code_6.c,606 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,607 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
	GOTO       L_SemSmallFollow159
L_SemSmallFollow158:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow853
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow853:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow854
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow854:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow855
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow855:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow856
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow856:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow857
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow857:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow162
L__SemSmallFollow678:
;final_code_6.c,608 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,609 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow163
L_SemSmallFollow162:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow858
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow858:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow859
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow859:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow860
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow860:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow861
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow861:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow862
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow862:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow166
L__SemSmallFollow677:
;final_code_6.c,611 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,612 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow167
L_SemSmallFollow166:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow863
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow863:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow864
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow864:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow865
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow865:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow866
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow866:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow867
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow867:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow170
L__SemSmallFollow676:
;final_code_6.c,614 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,615 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow171
L_SemSmallFollow170:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow868
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow868:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow869
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow869:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow870
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow870:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow871
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow871:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow872
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow872:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow174
L__SemSmallFollow675:
;final_code_6.c,618 :: 		rightT2();
	CALL       _rightT2+0
;final_code_6.c,620 :: 		}else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow175
L_SemSmallFollow174:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow873
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow873:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow874
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow874:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow875
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow875:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow876
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow876:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow877
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow877:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow178
L__SemSmallFollow674:
;final_code_6.c,622 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,623 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow179
L_SemSmallFollow178:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow878
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow878:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow879
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow879:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow880
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow880:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow881
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow881:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow882
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow882:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow182
L__SemSmallFollow673:
;final_code_6.c,624 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,625 :: 		}else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow183
L_SemSmallFollow182:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow883
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow883:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow884
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow884:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow885
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow885:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow886
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow886:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow887
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow887:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow186
L__SemSmallFollow672:
;final_code_6.c,626 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,627 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
	GOTO       L_SemSmallFollow187
L_SemSmallFollow186:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow888
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow888:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow889
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow889:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow890
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow890:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow891
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow891:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow892
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow892:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow190
L__SemSmallFollow671:
;final_code_6.c,629 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,630 :: 		}else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
	GOTO       L_SemSmallFollow191
L_SemSmallFollow190:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow893
	MOVLW      0
	XORWF      _sw+18, 0
L__SemSmallFollow893:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow894
	MOVLW      0
	XORWF      _sw+20, 0
L__SemSmallFollow894:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow895
	MOVLW      0
	XORWF      _sw+22, 0
L__SemSmallFollow895:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow896
	MOVLW      0
	XORWF      _sw+24, 0
L__SemSmallFollow896:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow897
	MOVLW      0
	XORWF      _sw+26, 0
L__SemSmallFollow897:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow194
L__SemSmallFollow670:
;final_code_6.c,631 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,632 :: 		}else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
	GOTO       L_SemSmallFollow195
L_SemSmallFollow194:
	MOVLW      0
	XORWF      _sw+19, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow898
	MOVLW      1
	XORWF      _sw+18, 0
L__SemSmallFollow898:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow198
	MOVLW      0
	XORWF      _sw+21, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow899
	MOVLW      1
	XORWF      _sw+20, 0
L__SemSmallFollow899:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow198
	MOVLW      0
	XORWF      _sw+23, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow900
	MOVLW      1
	XORWF      _sw+22, 0
L__SemSmallFollow900:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow198
	MOVLW      0
	XORWF      _sw+25, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow901
	MOVLW      1
	XORWF      _sw+24, 0
L__SemSmallFollow901:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow198
	MOVLW      0
	XORWF      _sw+27, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemSmallFollow902
	MOVLW      1
	XORWF      _sw+26, 0
L__SemSmallFollow902:
	BTFSS      STATUS+0, 2
	GOTO       L_SemSmallFollow198
L__SemSmallFollow669:
;final_code_6.c,634 :: 		leftT2();
	CALL       _leftT2+0
;final_code_6.c,636 :: 		}else{
	GOTO       L_SemSmallFollow199
L_SemSmallFollow198:
;final_code_6.c,637 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,639 :: 		}
L_SemSmallFollow199:
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
;final_code_6.c,641 :: 		}
	RETURN
; end of _SemSmallFollow

_SemBigFollow:

;final_code_6.c,643 :: 		void SemBigFollow(){
;final_code_6.c,644 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,645 :: 		if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow903
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow903:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow904
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow904:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow905
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow905:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow906
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow906:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow907
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow907:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow202
L__SemBigFollow698:
;final_code_6.c,646 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,647 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow203
L_SemBigFollow202:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow908
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow908:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow909
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow909:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow910
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow910:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow911
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow911:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow912
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow912:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow206
L__SemBigFollow697:
;final_code_6.c,648 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,649 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow207
L_SemBigFollow206:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow913
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow913:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow914
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow914:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow915
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow915:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow916
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow916:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow917
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow917:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow210
L__SemBigFollow696:
;final_code_6.c,651 :: 		leftT2();
	CALL       _leftT2+0
;final_code_6.c,653 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow211
L_SemBigFollow210:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow918
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow918:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow919
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow919:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow920
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow920:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow921
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow921:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow922
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow922:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow214
L__SemBigFollow695:
;final_code_6.c,654 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,655 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow215
L_SemBigFollow214:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow923
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow923:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow924
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow924:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow925
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow925:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow926
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow926:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow927
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow927:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow218
L__SemBigFollow694:
;final_code_6.c,656 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,657 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==1){
	GOTO       L_SemBigFollow219
L_SemBigFollow218:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow928
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow928:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow929
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow929:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow930
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow930:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow931
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow931:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow932
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow932:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow222
L__SemBigFollow693:
;final_code_6.c,658 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,659 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow223
L_SemBigFollow222:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow933
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow933:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow934
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow934:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow935
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow935:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow936
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow936:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow937
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow937:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow226
L__SemBigFollow692:
;final_code_6.c,661 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,662 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow227
L_SemBigFollow226:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow938
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow938:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow939
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow939:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow940
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow940:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow941
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow941:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow942
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow942:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow230
L__SemBigFollow691:
;final_code_6.c,664 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,665 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow231
L_SemBigFollow230:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow943
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow943:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow944
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow944:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow945
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow945:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow946
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow946:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow947
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow947:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow234
L__SemBigFollow690:
;final_code_6.c,668 :: 		rightT2();
	CALL       _rightT2+0
;final_code_6.c,670 :: 		}else if(sw[0][2]==0&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow235
L_SemBigFollow234:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow948
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow948:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow949
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow949:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow950
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow950:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow951
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow951:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow952
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow952:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow238
L__SemBigFollow689:
;final_code_6.c,672 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,673 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow239
L_SemBigFollow238:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow953
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow953:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow954
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow954:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow955
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow955:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow956
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow956:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow957
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow957:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow242
L__SemBigFollow688:
;final_code_6.c,674 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,675 :: 		}else if(sw[0][2]==1&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow243
L_SemBigFollow242:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow958
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow958:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow959
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow959:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow960
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow960:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow961
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow961:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow962
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow962:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow246
L__SemBigFollow687:
;final_code_6.c,676 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,677 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==0){
	GOTO       L_SemBigFollow247
L_SemBigFollow246:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow963
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow963:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow964
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow964:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow965
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow965:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow966
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow966:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow967
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow967:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow250
L__SemBigFollow686:
;final_code_6.c,679 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,680 :: 		}else if(sw[0][2]==0&&sw[0][3]==0&&sw[0][4]==0&&sw[0][5]==0&&sw[0][6]==0){
	GOTO       L_SemBigFollow251
L_SemBigFollow250:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow968
	MOVLW      0
	XORWF      _sw+4, 0
L__SemBigFollow968:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow969
	MOVLW      0
	XORWF      _sw+6, 0
L__SemBigFollow969:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow970
	MOVLW      0
	XORWF      _sw+8, 0
L__SemBigFollow970:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow971
	MOVLW      0
	XORWF      _sw+10, 0
L__SemBigFollow971:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow972
	MOVLW      0
	XORWF      _sw+12, 0
L__SemBigFollow972:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow254
L__SemBigFollow685:
;final_code_6.c,681 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,682 :: 		}else if(sw[0][2]==1&&sw[0][3]==1&&sw[0][4]==1&&sw[0][5]==1&&sw[0][6]==1){
	GOTO       L_SemBigFollow255
L_SemBigFollow254:
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow973
	MOVLW      1
	XORWF      _sw+4, 0
L__SemBigFollow973:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow258
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow974
	MOVLW      1
	XORWF      _sw+6, 0
L__SemBigFollow974:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow258
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow975
	MOVLW      1
	XORWF      _sw+8, 0
L__SemBigFollow975:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow258
	MOVLW      0
	XORWF      _sw+11, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow976
	MOVLW      1
	XORWF      _sw+10, 0
L__SemBigFollow976:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow258
	MOVLW      0
	XORWF      _sw+13, 0
	BTFSS      STATUS+0, 2
	GOTO       L__SemBigFollow977
	MOVLW      1
	XORWF      _sw+12, 0
L__SemBigFollow977:
	BTFSS      STATUS+0, 2
	GOTO       L_SemBigFollow258
L__SemBigFollow684:
;final_code_6.c,684 :: 		leftT2();
	CALL       _leftT2+0
;final_code_6.c,686 :: 		}else{
	GOTO       L_SemBigFollow259
L_SemBigFollow258:
;final_code_6.c,687 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,689 :: 		}
L_SemBigFollow259:
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
;final_code_6.c,691 :: 		}
	RETURN
; end of _SemBigFollow

_encoder:

;final_code_6.c,694 :: 		void encoder(){
;final_code_6.c,695 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_encoder260
;final_code_6.c,696 :: 		tm1st= 0;
	CLRF       _tm1st+0
	CLRF       _tm1st+1
;final_code_6.c,698 :: 		}
L_encoder260:
;final_code_6.c,699 :: 		if(PORTC.F0==0&&tm1st==0){
	BTFSC      PORTC+0, 0
	GOTO       L_encoder263
	MOVLW      0
	XORWF      _tm1st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder978
	MOVLW      0
	XORWF      _tm1st+0, 0
L__encoder978:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder263
L__encoder700:
;final_code_6.c,700 :: 		tm1st= 1;
	MOVLW      1
	MOVWF      _tm1st+0
	MOVLW      0
	MOVWF      _tm1st+1
;final_code_6.c,701 :: 		TMR1_value= TMR1_value+1;
	INCF       _TMR1_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR1_value+1, 1
;final_code_6.c,702 :: 		if(rotationMode==1){
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder979
	MOVLW      1
	XORWF      _rotationMode+0, 0
L__encoder979:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder264
;final_code_6.c,703 :: 		clockEncoder=clockEncoder+1;
	INCF       _clockEncoder+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clockEncoder+1, 1
;final_code_6.c,704 :: 		}else if(rotationMode==2){
	GOTO       L_encoder265
L_encoder264:
	MOVLW      0
	XORWF      _rotationMode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder980
	MOVLW      2
	XORWF      _rotationMode+0, 0
L__encoder980:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder266
;final_code_6.c,705 :: 		clockEncoder=clockEncoder-1;
	MOVLW      1
	SUBWF      _clockEncoder+0, 1
	BTFSS      STATUS+0, 0
	DECF       _clockEncoder+1, 1
;final_code_6.c,706 :: 		}
L_encoder266:
L_encoder265:
;final_code_6.c,707 :: 		}
L_encoder263:
;final_code_6.c,709 :: 		if(PORTA.F4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_encoder267
;final_code_6.c,710 :: 		tm0st= 0;
	CLRF       _tm0st+0
	CLRF       _tm0st+1
;final_code_6.c,711 :: 		}
L_encoder267:
;final_code_6.c,712 :: 		if(PORTA.F4==0&&tm0st==0){
	BTFSC      PORTA+0, 4
	GOTO       L_encoder270
	MOVLW      0
	XORWF      _tm0st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encoder981
	MOVLW      0
	XORWF      _tm0st+0, 0
L__encoder981:
	BTFSS      STATUS+0, 2
	GOTO       L_encoder270
L__encoder699:
;final_code_6.c,713 :: 		tm0st= 1;
	MOVLW      1
	MOVWF      _tm0st+0
	MOVLW      0
	MOVWF      _tm0st+1
;final_code_6.c,714 :: 		TMR0_value= TMR0_value+1;
	INCF       _TMR0_value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _TMR0_value+1, 1
;final_code_6.c,715 :: 		}
L_encoder270:
;final_code_6.c,716 :: 		}
	RETURN
; end of _encoder

_tuneToMiddle:

;final_code_6.c,722 :: 		int tuneToMiddle(){
;final_code_6.c,723 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,724 :: 		if(totFront==0)  {
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle982
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle982:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle271
;final_code_6.c,726 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,727 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_6.c,728 :: 		}
L_tuneToMiddle271:
;final_code_6.c,729 :: 		else if (sw[0][4]==0){
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle983
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle983:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle273
;final_code_6.c,730 :: 		if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
	MOVLW      0
	XORWF      _sw+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle984
	MOVLW      1
	XORWF      _sw+0, 0
L__tuneToMiddle984:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle701
	MOVLW      0
	XORWF      _sw+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle985
	MOVLW      1
	XORWF      _sw+2, 0
L__tuneToMiddle985:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle701
	MOVLW      0
	XORWF      _sw+5, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle986
	MOVLW      1
	XORWF      _sw+4, 0
L__tuneToMiddle986:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle701
	MOVLW      0
	XORWF      _sw+7, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle987
	MOVLW      1
	XORWF      _sw+6, 0
L__tuneToMiddle987:
	BTFSC      STATUS+0, 2
	GOTO       L__tuneToMiddle701
	GOTO       L_tuneToMiddle276
L__tuneToMiddle701:
;final_code_6.c,731 :: 		while(sw[0][4]==0){
L_tuneToMiddle277:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle988
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle988:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle278
;final_code_6.c,732 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,733 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle989
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle989:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle279
;final_code_6.c,735 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,736 :: 		}else{
	GOTO       L_tuneToMiddle280
L_tuneToMiddle279:
;final_code_6.c,737 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,738 :: 		}
L_tuneToMiddle280:
;final_code_6.c,739 :: 		}
	GOTO       L_tuneToMiddle277
L_tuneToMiddle278:
;final_code_6.c,740 :: 		}
	GOTO       L_tuneToMiddle281
L_tuneToMiddle276:
;final_code_6.c,742 :: 		while(sw[0][4]==0){
L_tuneToMiddle282:
	MOVLW      0
	XORWF      _sw+9, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle990
	MOVLW      0
	XORWF      _sw+8, 0
L__tuneToMiddle990:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle283
;final_code_6.c,743 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,744 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tuneToMiddle991
	MOVLW      0
	XORWF      _totFront+0, 0
L__tuneToMiddle991:
	BTFSS      STATUS+0, 2
	GOTO       L_tuneToMiddle284
;final_code_6.c,746 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,747 :: 		}else{
	GOTO       L_tuneToMiddle285
L_tuneToMiddle284:
;final_code_6.c,748 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,749 :: 		}
L_tuneToMiddle285:
;final_code_6.c,750 :: 		}
	GOTO       L_tuneToMiddle282
L_tuneToMiddle283:
;final_code_6.c,751 :: 		}
L_tuneToMiddle281:
;final_code_6.c,752 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_6.c,753 :: 		}
L_tuneToMiddle273:
;final_code_6.c,755 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
;final_code_6.c,757 :: 		}
	RETURN
; end of _tuneToMiddle

_printClockEncoders:

;final_code_6.c,760 :: 		void printClockEncoders(){
;final_code_6.c,761 :: 		if(clockEncoder>=0){
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders992
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders992:
	BTFSS      STATUS+0, 0
	GOTO       L_printClockEncoders287
;final_code_6.c,765 :: 		}else if(clockEncoder<0){
	GOTO       L_printClockEncoders288
L_printClockEncoders287:
	MOVLW      128
	XORWF      _clockEncoder+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__printClockEncoders993
	MOVLW      0
	SUBWF      _clockEncoder+0, 0
L__printClockEncoders993:
	BTFSC      STATUS+0, 0
	GOTO       L_printClockEncoders289
;final_code_6.c,769 :: 		}
L_printClockEncoders289:
L_printClockEncoders288:
;final_code_6.c,771 :: 		}
	RETURN
; end of _printClockEncoders

_getFrontDecimal:

;final_code_6.c,774 :: 		int getFrontDecimal(){
;final_code_6.c,775 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,777 :: 		val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
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
L__getFrontDecimal994:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal995
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal994
L__getFrontDecimal995:
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
L__getFrontDecimal996:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal997
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal996
L__getFrontDecimal997:
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
L__getFrontDecimal998:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal999
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal998
L__getFrontDecimal999:
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
L__getFrontDecimal1000:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal1001
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal1000
L__getFrontDecimal1001:
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
L__getFrontDecimal1002:
	BTFSC      STATUS+0, 2
	GOTO       L__getFrontDecimal1003
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getFrontDecimal1002
L__getFrontDecimal1003:
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
;final_code_6.c,778 :: 		return val;
;final_code_6.c,779 :: 		}
	RETURN
; end of _getFrontDecimal

_getBackDecimal:

;final_code_6.c,780 :: 		int getBackDecimal(){
;final_code_6.c,781 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,782 :: 		val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
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
L__getBackDecimal1004:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal1005
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal1004
L__getBackDecimal1005:
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
L__getBackDecimal1006:
	BTFSC      STATUS+0, 2
	GOTO       L__getBackDecimal1007
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__getBackDecimal1006
L__getBackDecimal1007:
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
;final_code_6.c,783 :: 		return val;
;final_code_6.c,784 :: 		}
	RETURN
; end of _getBackDecimal

_followArrow:

;final_code_6.c,788 :: 		void followArrow(){
;final_code_6.c,789 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1008
	MOVLW      0
	XORWF      _k+0, 0
L__followArrow1008:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow290
;final_code_6.c,790 :: 		k=tuneToMiddle();
	CALL       _tuneToMiddle+0
	MOVF       R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	MOVWF      _k+1
;final_code_6.c,791 :: 		if(k==1){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1009
	MOVLW      1
	XORWF      R0+0, 0
L__followArrow1009:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow291
;final_code_6.c,792 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,798 :: 		}
L_followArrow291:
;final_code_6.c,799 :: 		} else if(k==1){
	GOTO       L_followArrow292
L_followArrow290:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1010
	MOVLW      1
	XORWF      _k+0, 0
L__followArrow1010:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow293
;final_code_6.c,800 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,801 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1011
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow1011:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow294
;final_code_6.c,802 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,803 :: 		}else{
	GOTO       L_followArrow295
L_followArrow294:
;final_code_6.c,804 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,806 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,808 :: 		}
L_followArrow295:
;final_code_6.c,809 :: 		}else if(k==2){
	GOTO       L_followArrow296
L_followArrow293:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1012
	MOVLW      2
	XORWF      _k+0, 0
L__followArrow1012:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow297
;final_code_6.c,810 :: 		SemSmallFollow();
	CALL       _SemSmallFollow+0
;final_code_6.c,811 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1013
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow1013:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow298
;final_code_6.c,812 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,813 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,815 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,816 :: 		}
L_followArrow298:
;final_code_6.c,817 :: 		}else if(k==3){
	GOTO       L_followArrow299
L_followArrow297:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1014
	MOVLW      3
	XORWF      _k+0, 0
L__followArrow1014:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow300
;final_code_6.c,818 :: 		moveB();
	CALL       _moveB+0
;final_code_6.c,819 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,820 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,821 :: 		if(TMR1_value>20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1015
	MOVF       _TMR1_value+0, 0
	SUBLW      20
L__followArrow1015:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow301
;final_code_6.c,824 :: 		k=4;
	MOVLW      4
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,825 :: 		}
L_followArrow301:
;final_code_6.c,827 :: 		}else if(k==4){
	GOTO       L_followArrow302
L_followArrow300:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1016
	MOVLW      4
	XORWF      _k+0, 0
L__followArrow1016:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow303
;final_code_6.c,828 :: 		SemBigFollow();
	CALL       _SemBigFollow+0
;final_code_6.c,829 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,830 :: 		if(totBack>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1017
	MOVF       _totBack+0, 0
	SUBLW      0
L__followArrow1017:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow304
;final_code_6.c,833 :: 		k=5;
	MOVLW      5
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,834 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,835 :: 		}
L_followArrow304:
;final_code_6.c,837 :: 		}else if(k==5){
	GOTO       L_followArrow305
L_followArrow303:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1018
	MOVLW      5
	XORWF      _k+0, 0
L__followArrow1018:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow306
;final_code_6.c,838 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,839 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,840 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,841 :: 		if(TMR1_value>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR1_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1019
	MOVF       _TMR1_value+0, 0
	SUBLW      2
L__followArrow1019:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow307
;final_code_6.c,842 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,843 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_followArrow308:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow308
	DECFSZ     R12+0, 1
	GOTO       L_followArrow308
	DECFSZ     R11+0, 1
	GOTO       L_followArrow308
	NOP
;final_code_6.c,844 :: 		k=6;
	MOVLW      6
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,846 :: 		}
L_followArrow307:
;final_code_6.c,847 :: 		}else if(k==6){
	GOTO       L_followArrow309
L_followArrow306:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1020
	MOVLW      6
	XORWF      _k+0, 0
L__followArrow1020:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow310
;final_code_6.c,848 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,849 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,850 :: 		if(getFrontDecimal()>(getBackDecimal()<<2)){
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
	GOTO       L__followArrow1021
	MOVF       FLOC__followArrow+0, 0
	SUBWF      R2+0, 0
L__followArrow1021:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow311
;final_code_6.c,851 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,852 :: 		}else if(getFrontDecimal()<(getBackDecimal()<<2)){
	GOTO       L_followArrow312
L_followArrow311:
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
	GOTO       L__followArrow1022
	MOVF       R2+0, 0
	SUBWF      FLOC__followArrow+0, 0
L__followArrow1022:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow313
;final_code_6.c,853 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,854 :: 		}else{
	GOTO       L_followArrow314
L_followArrow313:
;final_code_6.c,855 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,857 :: 		k=7;
	MOVLW      7
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
;final_code_6.c,858 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,859 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,860 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,861 :: 		}
L_followArrow314:
L_followArrow312:
;final_code_6.c,884 :: 		}else if(k==7){
	GOTO       L_followArrow315
L_followArrow310:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1023
	MOVLW      7
	XORWF      _k+0, 0
L__followArrow1023:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow316
;final_code_6.c,885 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,886 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,887 :: 		if(totFront==4){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1024
	MOVLW      4
	XORWF      _totFront+0, 0
L__followArrow1024:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow317
;final_code_6.c,888 :: 		headfound=1;
	MOVLW      1
	MOVWF      _headfound+0
	MOVLW      0
	MOVWF      _headfound+1
;final_code_6.c,889 :: 		}
L_followArrow317:
;final_code_6.c,890 :: 		if(totBack==0){
	MOVLW      0
	XORWF      _totBack+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1025
	MOVLW      0
	XORWF      _totBack+0, 0
L__followArrow1025:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow318
;final_code_6.c,891 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,893 :: 		k=0;
	CLRF       _k+0
	CLRF       _k+1
;final_code_6.c,894 :: 		if(headfound==0){
	MOVLW      0
	XORWF      _headfound+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__followArrow1026
	MOVLW      0
	XORWF      _headfound+0, 0
L__followArrow1026:
	BTFSS      STATUS+0, 2
	GOTO       L_followArrow319
;final_code_6.c,896 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,897 :: 		Delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_followArrow320:
	DECFSZ     R13+0, 1
	GOTO       L_followArrow320
	DECFSZ     R12+0, 1
	GOTO       L_followArrow320
	DECFSZ     R11+0, 1
	GOTO       L_followArrow320
	NOP
	NOP
;final_code_6.c,898 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,899 :: 		while(((TMR0_value+TMR1_value)/2)<44){
L_followArrow321:
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
	GOTO       L__followArrow1027
	MOVLW      44
	SUBWF      R1+0, 0
L__followArrow1027:
	BTFSC      STATUS+0, 0
	GOTO       L_followArrow322
;final_code_6.c,900 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,901 :: 		}
	GOTO       L_followArrow321
L_followArrow322:
;final_code_6.c,902 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,903 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,904 :: 		}
L_followArrow319:
;final_code_6.c,905 :: 		headfound=0;
	CLRF       _headfound+0
	CLRF       _headfound+1
;final_code_6.c,907 :: 		}
L_followArrow318:
;final_code_6.c,909 :: 		}
L_followArrow316:
L_followArrow315:
L_followArrow309:
L_followArrow305:
L_followArrow302:
L_followArrow299:
L_followArrow296:
L_followArrow292:
;final_code_6.c,910 :: 		}
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

;final_code_6.c,911 :: 		void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
;final_code_6.c,912 :: 		if(INTCON.TMR0IF){
	BTFSS      INTCON+0, 2
	GOTO       L_interrupt323
;final_code_6.c,913 :: 		encoder();
	CALL       _encoder+0
;final_code_6.c,914 :: 		INTCON.TMR0IF = 0; // clear TMR1IF
	BCF        INTCON+0, 2
;final_code_6.c,915 :: 		}
L_interrupt323:
;final_code_6.c,918 :: 		}
L__interrupt1028:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init_timer:

;final_code_6.c,921 :: 		void init_timer(){
;final_code_6.c,922 :: 		OPTION_REG = 0b10000101; //Timer0 interrupts are configured
	MOVLW      133
	MOVWF      OPTION_REG+0
;final_code_6.c,923 :: 		INTCON = 0b10100000; //Interrupts are enabled.
	MOVLW      160
	MOVWF      INTCON+0
;final_code_6.c,924 :: 		}
	RETURN
; end of _init_timer

_pulseIn1:

;final_code_6.c,927 :: 		int pulseIn1(){
;final_code_6.c,928 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_6.c,929 :: 		while(1){
L_pulseIn1324:
;final_code_6.c,930 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_6.c,931 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,932 :: 		if(PORTB.F6==1)break;
	BTFSS      PORTB+0, 6
	GOTO       L_pulseIn1326
	GOTO       L_pulseIn1325
L_pulseIn1326:
;final_code_6.c,933 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn11029
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn11029:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1327
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1327:
;final_code_6.c,934 :: 		}
	GOTO       L_pulseIn1324
L_pulseIn1325:
;final_code_6.c,935 :: 		counter1=0;
	CLRF       _counter1+0
	CLRF       _counter1+1
;final_code_6.c,936 :: 		while(1){
L_pulseIn1328:
;final_code_6.c,937 :: 		counter1++;
	INCF       _counter1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter1+1, 1
;final_code_6.c,938 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,939 :: 		if(PORTB.F6==0)return 0;
	BTFSC      PORTB+0, 6
	GOTO       L_pulseIn1330
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn1330:
;final_code_6.c,940 :: 		if(counter1>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn11030
	MOVF       _counter1+0, 0
	SUBLW      112
L__pulseIn11030:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn1331
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn1331:
;final_code_6.c,941 :: 		}
	GOTO       L_pulseIn1328
;final_code_6.c,943 :: 		}
	RETURN
; end of _pulseIn1

_pulseIn2:

;final_code_6.c,945 :: 		int pulseIn2(){
;final_code_6.c,946 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_6.c,947 :: 		while(1){
L_pulseIn2332:
;final_code_6.c,948 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_6.c,949 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,950 :: 		if(PORTD.F6==1)break;
	BTFSS      PORTD+0, 6
	GOTO       L_pulseIn2334
	GOTO       L_pulseIn2333
L_pulseIn2334:
;final_code_6.c,951 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn21031
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn21031:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2335
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2335:
;final_code_6.c,952 :: 		}
	GOTO       L_pulseIn2332
L_pulseIn2333:
;final_code_6.c,953 :: 		counter2=0;
	CLRF       _counter2+0
	CLRF       _counter2+1
;final_code_6.c,954 :: 		while(1){
L_pulseIn2336:
;final_code_6.c,955 :: 		counter2++;
	INCF       _counter2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter2+1, 1
;final_code_6.c,956 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,957 :: 		if(PORTD.F6==0)return 0;
	BTFSC      PORTD+0, 6
	GOTO       L_pulseIn2338
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn2338:
;final_code_6.c,958 :: 		if(counter2>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn21032
	MOVF       _counter2+0, 0
	SUBLW      112
L__pulseIn21032:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn2339
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn2339:
;final_code_6.c,959 :: 		}
	GOTO       L_pulseIn2336
;final_code_6.c,960 :: 		}
	RETURN
; end of _pulseIn2

_pulseIn3:

;final_code_6.c,963 :: 		int pulseIn3(){
;final_code_6.c,964 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_6.c,965 :: 		while(1){
L_pulseIn3340:
;final_code_6.c,966 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_6.c,967 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,968 :: 		if(PORTC.F7==1)break;
	BTFSS      PORTC+0, 7
	GOTO       L_pulseIn3342
	GOTO       L_pulseIn3341
L_pulseIn3342:
;final_code_6.c,969 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn31033
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn31033:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3343
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3343:
;final_code_6.c,970 :: 		}
	GOTO       L_pulseIn3340
L_pulseIn3341:
;final_code_6.c,971 :: 		counter3=0;
	CLRF       _counter3+0
	CLRF       _counter3+1
;final_code_6.c,972 :: 		while(1){
L_pulseIn3344:
;final_code_6.c,973 :: 		counter3++;
	INCF       _counter3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter3+1, 1
;final_code_6.c,974 :: 		Delay_1us();
	CALL       _Delay_1us+0
;final_code_6.c,975 :: 		if(PORTC.F7==0)return 0;
	BTFSC      PORTC+0, 7
	GOTO       L_pulseIn3346
	CLRF       R0+0
	CLRF       R0+1
	RETURN
L_pulseIn3346:
;final_code_6.c,976 :: 		if(counter3>6000)return -1;
	MOVLW      128
	XORLW      23
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pulseIn31034
	MOVF       _counter3+0, 0
	SUBLW      112
L__pulseIn31034:
	BTFSC      STATUS+0, 0
	GOTO       L_pulseIn3347
	MOVLW      255
	MOVWF      R0+0
	MOVLW      255
	MOVWF      R0+1
	RETURN
L_pulseIn3347:
;final_code_6.c,977 :: 		}
	GOTO       L_pulseIn3344
;final_code_6.c,978 :: 		}
	RETURN
; end of _pulseIn3

_getDis1:

;final_code_6.c,981 :: 		int getDis1(){
;final_code_6.c,982 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_6.c,983 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1348:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1348
	NOP
	NOP
;final_code_6.c,984 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_6.c,985 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis1349:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1349
	NOP
	NOP
;final_code_6.c,986 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_6.c,987 :: 		dis1= pulseIn1();
	CALL       _pulseIn1+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_6.c,988 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_getDis1350:
	DECFSZ     R13+0, 1
	GOTO       L_getDis1350
	DECFSZ     R12+0, 1
	GOTO       L_getDis1350
	DECFSZ     R11+0, 1
	GOTO       L_getDis1350
	NOP
	NOP
;final_code_6.c,989 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_6.c,991 :: 		}
	RETURN
; end of _getDis1

_getDis2:

;final_code_6.c,993 :: 		int getDis2(){
;final_code_6.c,994 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_6.c,995 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2351:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2351
	NOP
	NOP
;final_code_6.c,996 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;final_code_6.c,997 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis2352:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2352
	NOP
	NOP
;final_code_6.c,998 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;final_code_6.c,999 :: 		dis1= pulseIn2();
	CALL       _pulseIn2+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_6.c,1000 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis2353:
	DECFSZ     R13+0, 1
	GOTO       L_getDis2353
	DECFSZ     R12+0, 1
	GOTO       L_getDis2353
	NOP
	NOP
;final_code_6.c,1001 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_6.c,1003 :: 		}
	RETURN
; end of _getDis2

_getDis3:

;final_code_6.c,1005 :: 		int getDis3(){
;final_code_6.c,1006 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_6.c,1007 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3354:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3354
	NOP
	NOP
;final_code_6.c,1008 :: 		PORTB.F6=1;
	BSF        PORTB+0, 6
;final_code_6.c,1009 :: 		Delay_us(12);
	MOVLW      19
	MOVWF      R13+0
L_getDis3355:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3355
	NOP
	NOP
;final_code_6.c,1010 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;final_code_6.c,1011 :: 		dis1= pulseIn3();
	CALL       _pulseIn3+0
	MOVF       R0+0, 0
	MOVWF      _dis1+0
	MOVF       R0+1, 0
	MOVWF      _dis1+1
;final_code_6.c,1012 :: 		Delay_ms(20);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_getDis3356:
	DECFSZ     R13+0, 1
	GOTO       L_getDis3356
	DECFSZ     R12+0, 1
	GOTO       L_getDis3356
	NOP
	NOP
;final_code_6.c,1013 :: 		return dis1/2;
	MOVF       _dis1+0, 0
	MOVWF      R0+0
	MOVF       _dis1+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;final_code_6.c,1015 :: 		}
	RETURN
; end of _getDis3

_NidegL:

;final_code_6.c,1016 :: 		void NidegL(){
;final_code_6.c,1017 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1018 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1019 :: 		while(1){
L_NidegL357:
;final_code_6.c,1020 :: 		if(((TMR0_value+TMR1_value)/2)>16){
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
	GOTO       L__NidegL1035
	MOVF       R1+0, 0
	SUBLW      16
L__NidegL1035:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegL359
;final_code_6.c,1021 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1022 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1023 :: 		break;
	GOTO       L_NidegL358
;final_code_6.c,1024 :: 		}
L_NidegL359:
;final_code_6.c,1025 :: 		}
	GOTO       L_NidegL357
L_NidegL358:
;final_code_6.c,1026 :: 		}
	RETURN
; end of _NidegL

_NidegR:

;final_code_6.c,1028 :: 		void NidegR(){
;final_code_6.c,1029 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1030 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1031 :: 		while(1){
L_NidegR360:
;final_code_6.c,1032 :: 		if(((TMR0_value+TMR1_value)/2)>16){
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
	GOTO       L__NidegR1036
	MOVF       R1+0, 0
	SUBLW      16
L__NidegR1036:
	BTFSC      STATUS+0, 0
	GOTO       L_NidegR362
;final_code_6.c,1033 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1034 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1035 :: 		break;
	GOTO       L_NidegR361
;final_code_6.c,1036 :: 		}
L_NidegR362:
;final_code_6.c,1037 :: 		}
	GOTO       L_NidegR360
L_NidegR361:
;final_code_6.c,1038 :: 		}
	RETURN
; end of _NidegR

_moFEnc:

;final_code_6.c,1040 :: 		void moFEnc(int count){
;final_code_6.c,1041 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1042 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,1043 :: 		while(1){
L_moFEnc363:
;final_code_6.c,1044 :: 		if(TMR0_value>count){
	MOVLW      128
	XORWF      FARG_moFEnc_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__moFEnc1037
	MOVF       _TMR0_value+0, 0
	SUBWF      FARG_moFEnc_count+0, 0
L__moFEnc1037:
	BTFSC      STATUS+0, 0
	GOTO       L_moFEnc365
;final_code_6.c,1045 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1046 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1047 :: 		break;
	GOTO       L_moFEnc364
;final_code_6.c,1048 :: 		}
L_moFEnc365:
;final_code_6.c,1049 :: 		}
	GOTO       L_moFEnc363
L_moFEnc364:
;final_code_6.c,1051 :: 		}
	RETURN
; end of _moFEnc

_getCompass:

;final_code_6.c,1053 :: 		int getCompass(){
;final_code_6.c,1054 :: 		return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
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
;final_code_6.c,1055 :: 		}
	RETURN
; end of _getCompass

_turnToPoint:

;final_code_6.c,1060 :: 		void turnToPoint(int pt){
;final_code_6.c,1109 :: 		while(PORTD.F3==0 || PORTD.F4==0){
L_turnToPoint366:
	BTFSS      PORTD+0, 3
	GOTO       L__turnToPoint704
	BTFSS      PORTD+0, 4
	GOTO       L__turnToPoint704
	GOTO       L_turnToPoint367
L__turnToPoint704:
;final_code_6.c,1110 :: 		if(PORTD.F4==1 && PORTD.F3==0){
	BTFSS      PORTD+0, 4
	GOTO       L_turnToPoint372
	BTFSC      PORTD+0, 3
	GOTO       L_turnToPoint372
L__turnToPoint703:
;final_code_6.c,1111 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1112 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1113 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1114 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_turnToPoint373
;final_code_6.c,1115 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1116 :: 		break;
	GOTO       L_turnToPoint367
;final_code_6.c,1117 :: 		}
L_turnToPoint373:
;final_code_6.c,1118 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_turnToPoint374:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint374
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint374
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint374
	NOP
	NOP
;final_code_6.c,1119 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1120 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;final_code_6.c,1121 :: 		}else if(PORTD.F4==0 && PORTD.F3==1){
	GOTO       L_turnToPoint376
L_turnToPoint372:
	BTFSC      PORTD+0, 4
	GOTO       L_turnToPoint379
	BTFSS      PORTD+0, 3
	GOTO       L_turnToPoint379
L__turnToPoint702:
;final_code_6.c,1122 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1123 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1124 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1125 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_turnToPoint380
;final_code_6.c,1126 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1127 :: 		break;
	GOTO       L_turnToPoint367
;final_code_6.c,1128 :: 		}
L_turnToPoint380:
;final_code_6.c,1129 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_turnToPoint381:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint381
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint381
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint381
	NOP
	NOP
;final_code_6.c,1130 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1131 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_turnToPoint382:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint382
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint382
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint382
	NOP
	NOP
;final_code_6.c,1132 :: 		}
L_turnToPoint379:
L_turnToPoint376:
;final_code_6.c,1133 :: 		}
	GOTO       L_turnToPoint366
L_turnToPoint367:
;final_code_6.c,1134 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1135 :: 		delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_turnToPoint383:
	DECFSZ     R13+0, 1
	GOTO       L_turnToPoint383
	DECFSZ     R12+0, 1
	GOTO       L_turnToPoint383
	DECFSZ     R11+0, 1
	GOTO       L_turnToPoint383
	NOP
	NOP
;final_code_6.c,1138 :: 		}
	RETURN
; end of _turnToPoint

_convert:

;final_code_6.c,1140 :: 		int convert(int x_high,int x_low){
;final_code_6.c,1142 :: 		if(x_high>=127){
	MOVLW      128
	XORWF      FARG_convert_x_high+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__convert1038
	MOVLW      127
	SUBWF      FARG_convert_x_high+0, 0
L__convert1038:
	BTFSS      STATUS+0, 0
	GOTO       L_convert384
;final_code_6.c,1143 :: 		number=(x_high<<8)+x_low;
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
;final_code_6.c,1144 :: 		number=number-1;
	MOVLW      1
	SUBWF      convert_number_L0+0, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+1, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+2, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+3, 1
;final_code_6.c,1145 :: 		number=~(number);
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
;final_code_6.c,1148 :: 		number=(-1)*number;
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
;final_code_6.c,1149 :: 		return number;
	RETURN
;final_code_6.c,1150 :: 		}else{
L_convert384:
;final_code_6.c,1151 :: 		number=(x_high<<8)+x_low;
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
;final_code_6.c,1152 :: 		return number;
	MOVF       convert_number_L0+0, 0
	MOVWF      R0+0
	MOVF       convert_number_L0+1, 0
	MOVWF      R0+1
;final_code_6.c,1155 :: 		}
	RETURN
; end of _convert

_Read_Compass:

;final_code_6.c,1161 :: 		void Read_Compass(){
;final_code_6.c,1162 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1163 :: 		I2C1_Wr(0x3C);   //sellecting magnatometer
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1164 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1165 :: 		I2C1_Wr(0x00); //single mode readinh
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1166 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1168 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1169 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass386:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass386
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass386
	NOP
	NOP
;final_code_6.c,1170 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass387
;final_code_6.c,1172 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1173 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1174 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1175 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1176 :: 		x_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_h+0
;final_code_6.c,1177 :: 		}
L_Read_Compass387:
;final_code_6.c,1178 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1181 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1182 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass388:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass388
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass388
	NOP
	NOP
;final_code_6.c,1183 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass389
;final_code_6.c,1185 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1186 :: 		I2C1_Wr(0x04);
	MOVLW      4
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1187 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1188 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1189 :: 		x_l=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_l+0
;final_code_6.c,1190 :: 		}
L_Read_Compass389:
;final_code_6.c,1191 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1194 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1195 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass390:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass390
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass390
	NOP
	NOP
;final_code_6.c,1196 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass391
;final_code_6.c,1198 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1199 :: 		I2C1_Wr(0x05);
	MOVLW      5
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1200 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1201 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1202 :: 		z_h=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_h+0
;final_code_6.c,1203 :: 		}
L_Read_Compass391:
;final_code_6.c,1204 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1207 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1208 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass392:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass392
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass392
	NOP
	NOP
;final_code_6.c,1209 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass393
;final_code_6.c,1211 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1212 :: 		I2C1_Wr(0x06);
	MOVLW      6
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1213 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1214 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1215 :: 		z_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_l+0
;final_code_6.c,1216 :: 		}
L_Read_Compass393:
;final_code_6.c,1217 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1220 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1221 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass394:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass394
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass394
	NOP
	NOP
;final_code_6.c,1222 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass395
;final_code_6.c,1224 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1225 :: 		I2C1_Wr(0x07);
	MOVLW      7
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1226 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1227 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1228 :: 		y_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_h+0
;final_code_6.c,1229 :: 		}
L_Read_Compass395:
;final_code_6.c,1230 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1232 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;final_code_6.c,1233 :: 		Delay_ms(15);
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L_Read_Compass396:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass396
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass396
	NOP
	NOP
;final_code_6.c,1234 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass397
;final_code_6.c,1236 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1237 :: 		I2C1_Wr(0x08);
	MOVLW      8
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1238 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;final_code_6.c,1239 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;final_code_6.c,1240 :: 		y_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_l+0
;final_code_6.c,1241 :: 		}
L_Read_Compass397:
;final_code_6.c,1242 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;final_code_6.c,1244 :: 		X_Value=convert(x_h,x_l);
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
;final_code_6.c,1245 :: 		Y_Value=convert(y_h,y_l);
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
;final_code_6.c,1247 :: 		if(X_Value>=0 && Y_Value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1039
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1039
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1039
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass1039:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass400
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1040
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1040
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1040
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass1040:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass400
L__Read_Compass708:
;final_code_6.c,1249 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;final_code_6.c,1250 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_6.c,1252 :: 		}else if(X_Value<0 && Y_Value>=0){
	GOTO       L_Read_Compass401
L_Read_Compass400:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1041
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1041
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1041
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass1041:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass404
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1042
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1042
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1042
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass1042:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass404
L__Read_Compass707:
;final_code_6.c,1255 :: 		angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
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
;final_code_6.c,1256 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_6.c,1257 :: 		angle=180-angle;
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
;final_code_6.c,1261 :: 		}else if(X_Value<0 && Y_Value<0){
	GOTO       L_Read_Compass405
L_Read_Compass404:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1043
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1043
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1043
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass1043:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass408
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1044
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1044
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1044
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass1044:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass408
L__Read_Compass706:
;final_code_6.c,1263 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;final_code_6.c,1264 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_6.c,1265 :: 		angle=angle+180;
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
;final_code_6.c,1269 :: 		}else if(X_Value>=0 && Y_Value<0){
	GOTO       L_Read_Compass409
L_Read_Compass408:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1045
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1045
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1045
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass1045:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass412
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1046
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1046
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1046
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass1046:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass412
L__Read_Compass705:
;final_code_6.c,1271 :: 		angle=atan(((((double)(-1)*Y_Value)/(double)X_Value)));
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
;final_code_6.c,1272 :: 		angle=angle*((180)/(3.14159265));
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
;final_code_6.c,1273 :: 		angle=360-angle;
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
;final_code_6.c,1276 :: 		}
L_Read_Compass412:
L_Read_Compass409:
L_Read_Compass405:
L_Read_Compass401:
;final_code_6.c,1278 :: 		if(X_value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1047
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1047
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1047
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass1047:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass413
;final_code_6.c,1280 :: 		}else{
	GOTO       L_Read_Compass414
L_Read_Compass413:
;final_code_6.c,1281 :: 		X_value=(-1)*X_value;
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
;final_code_6.c,1283 :: 		}
L_Read_Compass414:
;final_code_6.c,1284 :: 		if(Y_value>=0){
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1048
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1048
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass1048
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass1048:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass415
;final_code_6.c,1286 :: 		}else{
	GOTO       L_Read_Compass416
L_Read_Compass415:
;final_code_6.c,1287 :: 		Y_value=(-1)*Y_value;
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
;final_code_6.c,1289 :: 		}
L_Read_Compass416:
;final_code_6.c,1290 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Read_Compass417:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass417
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass417
	DECFSZ     R11+0, 1
	GOTO       L_Read_Compass417
	NOP
	NOP
;final_code_6.c,1291 :: 		}
	RETURN
; end of _Read_Compass

_avoidObstacles:

;final_code_6.c,1295 :: 		void avoidObstacles(){
;final_code_6.c,1296 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1297 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1298 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_6.c,1300 :: 		if(stat==0){
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1049
	MOVLW      0
	XORWF      _stat+0, 0
L__avoidObstacles1049:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles418
;final_code_6.c,1301 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1302 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1303 :: 		if((counter2<100)||(counter3<100)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1050
	MOVLW      100
	SUBWF      _counter2+0, 0
L__avoidObstacles1050:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles715
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1051
	MOVLW      100
	SUBWF      _counter3+0, 0
L__avoidObstacles1051:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles715
	GOTO       L_avoidObstacles421
L__avoidObstacles715:
;final_code_6.c,1304 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1305 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1306 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1307 :: 		normalization++;
	INCF       _normalization+0, 1
	BTFSC      STATUS+0, 2
	INCF       _normalization+1, 1
;final_code_6.c,1315 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1316 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1320 :: 		if(direction==0){
	MOVLW      0
	XORWF      _direction+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1052
	MOVLW      0
	XORWF      _direction+0, 0
L__avoidObstacles1052:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles422
;final_code_6.c,1321 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1322 :: 		}else{
	GOTO       L_avoidObstacles423
L_avoidObstacles422:
;final_code_6.c,1323 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1324 :: 		}
L_avoidObstacles423:
;final_code_6.c,1325 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1326 :: 		}else{
	GOTO       L_avoidObstacles424
L_avoidObstacles421:
;final_code_6.c,1327 :: 		PWM1_Set_Duty(212);
	MOVLW      212
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1328 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1329 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,1332 :: 		}
L_avoidObstacles424:
;final_code_6.c,1333 :: 		}else if(stat==1){
	GOTO       L_avoidObstacles425
L_avoidObstacles418:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1053
	MOVLW      1
	XORWF      _stat+0, 0
L__avoidObstacles1053:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles426
;final_code_6.c,1334 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1335 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1337 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1338 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_avoidObstacles427
;final_code_6.c,1339 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1340 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_6.c,1341 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_6.c,1342 :: 		}
L_avoidObstacles427:
;final_code_6.c,1343 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles428:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles428
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles428
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles428
	NOP
	NOP
;final_code_6.c,1345 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1346 :: 		Delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_avoidObstacles429:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles429
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles429
	NOP
;final_code_6.c,1347 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1348 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1353 :: 		if((counter2>200)&&(counter3>200)){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1054
	MOVF       _counter2+0, 0
	SUBLW      200
L__avoidObstacles1054:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles432
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1055
	MOVF       _counter3+0, 0
	SUBLW      200
L__avoidObstacles1055:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles432
L__avoidObstacles714:
;final_code_6.c,1354 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1355 :: 		direction=1;
	MOVLW      1
	MOVWF      _direction+0
	MOVLW      0
	MOVWF      _direction+1
;final_code_6.c,1356 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1357 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_6.c,1359 :: 		}
L_avoidObstacles432:
;final_code_6.c,1360 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1056
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles1056:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles435
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1057
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles1057:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles435
L__avoidObstacles713:
;final_code_6.c,1361 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_6.c,1362 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1058
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles1058:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles436
;final_code_6.c,1363 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1364 :: 		}else{
	GOTO       L_avoidObstacles437
L_avoidObstacles436:
;final_code_6.c,1365 :: 		stat=2;
	MOVLW      2
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1366 :: 		}
L_avoidObstacles437:
;final_code_6.c,1367 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1368 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1370 :: 		while(TMR0_value<17){
L_avoidObstacles438:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1059
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles1059:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles439
;final_code_6.c,1371 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1372 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_6.c,1373 :: 		}
	GOTO       L_avoidObstacles438
L_avoidObstacles439:
;final_code_6.c,1374 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1377 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1378 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1379 :: 		}
L_avoidObstacles435:
;final_code_6.c,1381 :: 		}else if(stat==2){
	GOTO       L_avoidObstacles440
L_avoidObstacles426:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1060
	MOVLW      2
	XORWF      _stat+0, 0
L__avoidObstacles1060:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles441
;final_code_6.c,1382 :: 		PWM1_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1383 :: 		PWM2_Set_Duty(230);
	MOVLW      230
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1385 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1386 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_avoidObstacles442
;final_code_6.c,1387 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1388 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_6.c,1389 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_6.c,1390 :: 		}
L_avoidObstacles442:
;final_code_6.c,1392 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles443:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles443
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles443
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles443
	NOP
	NOP
;final_code_6.c,1393 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1394 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_avoidObstacles444:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles444
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles444
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles444
	NOP
	NOP
;final_code_6.c,1397 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1398 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1401 :: 		if((counter2>200)&&(counter3>200)){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1061
	MOVF       _counter2+0, 0
	SUBLW      200
L__avoidObstacles1061:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles447
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1062
	MOVF       _counter3+0, 0
	SUBLW      200
L__avoidObstacles1062:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles447
L__avoidObstacles712:
;final_code_6.c,1402 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1403 :: 		direction=0;
	CLRF       _direction+0
	CLRF       _direction+1
;final_code_6.c,1404 :: 		stat=3;
	MOVLW      3
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1405 :: 		noDirection=0;
	CLRF       _noDirection+0
	CLRF       _noDirection+1
;final_code_6.c,1406 :: 		}
L_avoidObstacles447:
;final_code_6.c,1407 :: 		if(TMR0_value>17&&stat!=3){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1063
	MOVF       _TMR0_value+0, 0
	SUBLW      17
L__avoidObstacles1063:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles450
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1064
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles1064:
	BTFSC      STATUS+0, 2
	GOTO       L_avoidObstacles450
L__avoidObstacles711:
;final_code_6.c,1408 :: 		noDirection++;
	INCF       _noDirection+0, 1
	BTFSC      STATUS+0, 2
	INCF       _noDirection+1, 1
;final_code_6.c,1409 :: 		if(noDirection>2){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _noDirection+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1065
	MOVF       _noDirection+0, 0
	SUBLW      2
L__avoidObstacles1065:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles451
;final_code_6.c,1410 :: 		stat=4;  // when no where to go
	MOVLW      4
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1411 :: 		}else{
	GOTO       L_avoidObstacles452
L_avoidObstacles451:
;final_code_6.c,1412 :: 		stat=1;
	MOVLW      1
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1413 :: 		}
L_avoidObstacles452:
;final_code_6.c,1414 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1415 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1417 :: 		while(TMR0_value<17){
L_avoidObstacles453:
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1066
	MOVLW      17
	SUBWF      _TMR0_value+0, 0
L__avoidObstacles1066:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles454
;final_code_6.c,1418 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1419 :: 		printClockEncoders();
	CALL       _printClockEncoders+0
;final_code_6.c,1420 :: 		}
	GOTO       L_avoidObstacles453
L_avoidObstacles454:
;final_code_6.c,1422 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1423 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1424 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_avoidObstacles455:
	DECFSZ     R13+0, 1
	GOTO       L_avoidObstacles455
	DECFSZ     R12+0, 1
	GOTO       L_avoidObstacles455
	DECFSZ     R11+0, 1
	GOTO       L_avoidObstacles455
	NOP
;final_code_6.c,1425 :: 		}
L_avoidObstacles450:
;final_code_6.c,1427 :: 		}else if(stat==3){
	GOTO       L_avoidObstacles456
L_avoidObstacles441:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1067
	MOVLW      3
	XORWF      _stat+0, 0
L__avoidObstacles1067:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles457
;final_code_6.c,1429 :: 		if(normalization>4){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _normalization+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1068
	MOVF       _normalization+0, 0
	SUBLW      4
L__avoidObstacles1068:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles458
;final_code_6.c,1430 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1431 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1432 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_6.c,1433 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_6.c,1434 :: 		}
L_avoidObstacles458:
;final_code_6.c,1435 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_6.c,1436 :: 		}else if(stat==4){
	GOTO       L_avoidObstacles459
L_avoidObstacles457:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1069
	MOVLW      4
	XORWF      _stat+0, 0
L__avoidObstacles1069:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles460
;final_code_6.c,1437 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1438 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1439 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1441 :: 		if((counter2>300)&&(counter3>300)){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1070
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles1070:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles463
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1071
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles1071:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles463
L__avoidObstacles710:
;final_code_6.c,1442 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1443 :: 		stat=5;
	MOVLW      5
	MOVWF      _stat+0
	MOVLW      0
	MOVWF      _stat+1
;final_code_6.c,1444 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1445 :: 		}
L_avoidObstacles463:
;final_code_6.c,1446 :: 		}else if(stat==5){
	GOTO       L_avoidObstacles464
L_avoidObstacles460:
	MOVLW      0
	XORWF      _stat+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1072
	MOVLW      5
	XORWF      _stat+0, 0
L__avoidObstacles1072:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles465
;final_code_6.c,1447 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1448 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1449 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1451 :: 		if((counter2<200)||(counter2<200)||(TMR0_value>60)){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1073
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles1073:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles709
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1074
	MOVLW      200
	SUBWF      _counter2+0, 0
L__avoidObstacles1074:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles709
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles1075
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__avoidObstacles1075:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles709
	GOTO       L_avoidObstacles468
L__avoidObstacles709:
;final_code_6.c,1452 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1453 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1454 :: 		clockEncoder=0;
	CLRF       _clockEncoder+0
	CLRF       _clockEncoder+1
;final_code_6.c,1455 :: 		normalization=0;
	CLRF       _normalization+0
	CLRF       _normalization+1
;final_code_6.c,1456 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1457 :: 		stat=0;
	CLRF       _stat+0
	CLRF       _stat+1
;final_code_6.c,1458 :: 		}
L_avoidObstacles468:
;final_code_6.c,1460 :: 		}
L_avoidObstacles465:
L_avoidObstacles464:
L_avoidObstacles459:
L_avoidObstacles456:
L_avoidObstacles440:
L_avoidObstacles425:
;final_code_6.c,1471 :: 		}
	RETURN
; end of _avoidObstacles

_cal_front:

;final_code_6.c,1475 :: 		cal_front(){
;final_code_6.c,1476 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_6.c,1477 :: 		initialDirection=angle;
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
;final_code_6.c,1478 :: 		fdirection = angle;
	MOVF       R0+0, 0
	MOVWF      _fdirection+0
	MOVF       R0+1, 0
	MOVWF      _fdirection+1
;final_code_6.c,1485 :: 		}
	RETURN
; end of _cal_front

_straight:

;final_code_6.c,1488 :: 		int straight(){
;final_code_6.c,1490 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_6.c,1491 :: 		newAngle= 180-initialDirection+angle;
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
;final_code_6.c,1492 :: 		if(newAngle<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1076
	MOVLW      0
	SUBWF      R0+0, 0
L__straight1076:
	BTFSC      STATUS+0, 0
	GOTO       L_straight469
;final_code_6.c,1493 :: 		newAngle= newAngle+360;
	MOVLW      104
	ADDWF      _newAngle+0, 1
	MOVLW      1
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _newAngle+1, 1
;final_code_6.c,1494 :: 		}else if(newAngle>360){
	GOTO       L_straight470
L_straight469:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1077
	MOVF       _newAngle+0, 0
	SUBLW      104
L__straight1077:
	BTFSC      STATUS+0, 0
	GOTO       L_straight471
;final_code_6.c,1495 :: 		newAngle= newAngle-360;
	MOVLW      104
	SUBWF      _newAngle+0, 1
	BTFSS      STATUS+0, 0
	DECF       _newAngle+1, 1
	MOVLW      1
	SUBWF      _newAngle+1, 1
;final_code_6.c,1496 :: 		}
L_straight471:
L_straight470:
;final_code_6.c,1497 :: 		if(newAngle<170&& newAngle>0){
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1078
	MOVLW      170
	SUBWF      _newAngle+0, 0
L__straight1078:
	BTFSC      STATUS+0, 0
	GOTO       L_straight474
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1079
	MOVF       _newAngle+0, 0
	SUBLW      0
L__straight1079:
	BTFSC      STATUS+0, 0
	GOTO       L_straight474
L__straight717:
;final_code_6.c,1498 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1499 :: 		}else if(newAngle>190&& newAngle<360){
	GOTO       L_straight475
L_straight474:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1080
	MOVF       _newAngle+0, 0
	SUBLW      190
L__straight1080:
	BTFSC      STATUS+0, 0
	GOTO       L_straight478
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight1081
	MOVLW      104
	SUBWF      _newAngle+0, 0
L__straight1081:
	BTFSC      STATUS+0, 0
	GOTO       L_straight478
L__straight716:
;final_code_6.c,1500 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1501 :: 		}else{
	GOTO       L_straight479
L_straight478:
;final_code_6.c,1502 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1505 :: 		}
L_straight479:
L_straight475:
;final_code_6.c,1507 :: 		}
	RETURN
; end of _straight

_avoidObstacles2:

;final_code_6.c,1509 :: 		void avoidObstacles2(){
;final_code_6.c,1510 :: 		if(stat2==0){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21082
	MOVLW      0
	XORWF      _stat2+0, 0
L__avoidObstacles21082:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2480
;final_code_6.c,1511 :: 		PWM1_Set_Duty(195);
	MOVLW      195
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1512 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1513 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,1514 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1515 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1516 :: 		if(PORTD.F0==0||PORTD.F1==0){
	BTFSS      PORTD+0, 0
	GOTO       L__avoidObstacles2721
	BTFSS      PORTD+0, 1
	GOTO       L__avoidObstacles2721
	GOTO       L_avoidObstacles2483
L__avoidObstacles2721:
;final_code_6.c,1517 :: 		PWM1_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1518 :: 		PWM2_Set_Duty(175);
	MOVLW      175
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1519 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_avoidObstacles2484
;final_code_6.c,1520 :: 		while(PORTD.F0==1)
L_avoidObstacles2485:
	BTFSS      PORTD+0, 0
	GOTO       L_avoidObstacles2486
;final_code_6.c,1522 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1523 :: 		if(PORTD.F1==1)break;
	BTFSS      PORTD+0, 1
	GOTO       L_avoidObstacles2487
	GOTO       L_avoidObstacles2486
L_avoidObstacles2487:
;final_code_6.c,1524 :: 		}
	GOTO       L_avoidObstacles2485
L_avoidObstacles2486:
;final_code_6.c,1525 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1526 :: 		}
L_avoidObstacles2484:
;final_code_6.c,1529 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_avoidObstacles2488
;final_code_6.c,1530 :: 		while(PORTD.F1==1){
L_avoidObstacles2489:
	BTFSS      PORTD+0, 1
	GOTO       L_avoidObstacles2490
;final_code_6.c,1531 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1532 :: 		if(PORTD.F0==1)break;
	BTFSS      PORTD+0, 0
	GOTO       L_avoidObstacles2491
	GOTO       L_avoidObstacles2490
L_avoidObstacles2491:
;final_code_6.c,1533 :: 		}
	GOTO       L_avoidObstacles2489
L_avoidObstacles2490:
;final_code_6.c,1534 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1535 :: 		}
L_avoidObstacles2488:
;final_code_6.c,1536 :: 		PWM1_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1537 :: 		PWM2_Set_Duty(185);
	MOVLW      185
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1538 :: 		}
L_avoidObstacles2483:
;final_code_6.c,1539 :: 		if(counter2<250||counter3<250){
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21083
	MOVLW      250
	SUBWF      _counter2+0, 0
L__avoidObstacles21083:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2720
	MOVLW      128
	XORWF      _counter3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21084
	MOVLW      250
	SUBWF      _counter3+0, 0
L__avoidObstacles21084:
	BTFSS      STATUS+0, 0
	GOTO       L__avoidObstacles2720
	GOTO       L_avoidObstacles2494
L__avoidObstacles2720:
;final_code_6.c,1540 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1541 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1542 :: 		stat2=1;
	MOVLW      1
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_6.c,1543 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1545 :: 		}
L_avoidObstacles2494:
;final_code_6.c,1547 :: 		}else if(stat2==11){
	GOTO       L_avoidObstacles2495
L_avoidObstacles2480:
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21085
	MOVLW      11
	XORWF      _stat2+0, 0
L__avoidObstacles21085:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2496
;final_code_6.c,1552 :: 		}
	GOTO       L_avoidObstacles2497
L_avoidObstacles2496:
;final_code_6.c,1553 :: 		else if(stat2==1){
	MOVLW      0
	XORWF      _stat2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21086
	MOVLW      1
	XORWF      _stat2+0, 0
L__avoidObstacles21086:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2498
;final_code_6.c,1555 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1556 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1557 :: 		if(mem==0){
	MOVLW      0
	XORWF      _mem+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21087
	MOVLW      0
	XORWF      _mem+0, 0
L__avoidObstacles21087:
	BTFSS      STATUS+0, 2
	GOTO       L_avoidObstacles2499
;final_code_6.c,1559 :: 		rotateLeft();
	CALL       _rotateLeft+0
;final_code_6.c,1560 :: 		if(((TMR0_value+TMR1_value)/2)>25){
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
	GOTO       L__avoidObstacles21088
	MOVF       R1+0, 0
	SUBLW      25
L__avoidObstacles21088:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2500
;final_code_6.c,1561 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1562 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1563 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;final_code_6.c,1564 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1565 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1566 :: 		}
L_avoidObstacles2500:
;final_code_6.c,1567 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_avoidObstacles2501
;final_code_6.c,1568 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1569 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1570 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;final_code_6.c,1571 :: 		}
L_avoidObstacles2501:
;final_code_6.c,1572 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21089
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles21089:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2504
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21090
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles21090:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2504
L__avoidObstacles2719:
;final_code_6.c,1573 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1574 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_6.c,1575 :: 		mem=1;
	MOVLW      1
	MOVWF      _mem+0
	MOVLW      0
	MOVWF      _mem+1
;final_code_6.c,1576 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1577 :: 		}
L_avoidObstacles2504:
;final_code_6.c,1578 :: 		}else{
	GOTO       L_avoidObstacles2505
L_avoidObstacles2499:
;final_code_6.c,1579 :: 		rotateRight();
	CALL       _rotateRight+0
;final_code_6.c,1580 :: 		if(((TMR0_value+TMR1_value)/2)>25){
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
	GOTO       L__avoidObstacles21091
	MOVF       R1+0, 0
	SUBLW      25
L__avoidObstacles21091:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2506
;final_code_6.c,1581 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1582 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1583 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;final_code_6.c,1584 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1585 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1586 :: 		}
L_avoidObstacles2506:
;final_code_6.c,1587 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_avoidObstacles2507
;final_code_6.c,1588 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1589 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1590 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;final_code_6.c,1591 :: 		}
L_avoidObstacles2507:
;final_code_6.c,1592 :: 		if(counter2>300&&counter3>300){
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21092
	MOVF       _counter2+0, 0
	SUBLW      44
L__avoidObstacles21092:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2510
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__avoidObstacles21093
	MOVF       _counter3+0, 0
	SUBLW      44
L__avoidObstacles21093:
	BTFSC      STATUS+0, 0
	GOTO       L_avoidObstacles2510
L__avoidObstacles2718:
;final_code_6.c,1593 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1594 :: 		stat2=2;
	MOVLW      2
	MOVWF      _stat2+0
	MOVLW      0
	MOVWF      _stat2+1
;final_code_6.c,1595 :: 		mem=0;
	CLRF       _mem+0
	CLRF       _mem+1
;final_code_6.c,1596 :: 		stat2=0;
	CLRF       _stat2+0
	CLRF       _stat2+1
;final_code_6.c,1597 :: 		}
L_avoidObstacles2510:
;final_code_6.c,1599 :: 		}
L_avoidObstacles2505:
;final_code_6.c,1600 :: 		}
L_avoidObstacles2498:
L_avoidObstacles2497:
L_avoidObstacles2495:
;final_code_6.c,1601 :: 		}
	RETURN
; end of _avoidObstacles2

_turnToMiddle:

;final_code_6.c,1696 :: 		void turnToMiddle(int ang){
;final_code_6.c,1698 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_6.c,1699 :: 		dif=angle-ang;
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
;final_code_6.c,1701 :: 		while(1){
L_turnToMiddle511:
;final_code_6.c,1702 :: 		Read_Compass();
	CALL       _Read_Compass+0
;final_code_6.c,1703 :: 		dif=angle-ang;
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
;final_code_6.c,1704 :: 		if(dif<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle1094
	MOVLW      0
	SUBWF      R0+0, 0
L__turnToMiddle1094:
	BTFSC      STATUS+0, 0
	GOTO       L_turnToMiddle513
;final_code_6.c,1705 :: 		dif=dif*(-1);
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
;final_code_6.c,1706 :: 		}
L_turnToMiddle513:
;final_code_6.c,1707 :: 		duty=180+(dif*50)/360;
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
;final_code_6.c,1708 :: 		leftHardT();
	CALL       _leftHardT+0
;final_code_6.c,1709 :: 		PWM1_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1710 :: 		PWM2_Set_Duty(duty);
	MOVF       turnToMiddle_duty_L0+0, 0
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1711 :: 		if(dif>=0 && dif<=40){
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle1095
	MOVLW      0
	SUBWF      turnToMiddle_dif_L0+0, 0
L__turnToMiddle1095:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle516
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      turnToMiddle_dif_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__turnToMiddle1096
	MOVF       turnToMiddle_dif_L0+0, 0
	SUBLW      40
L__turnToMiddle1096:
	BTFSS      STATUS+0, 0
	GOTO       L_turnToMiddle516
L__turnToMiddle722:
;final_code_6.c,1712 :: 		break;
	GOTO       L_turnToMiddle512
;final_code_6.c,1713 :: 		}
L_turnToMiddle516:
;final_code_6.c,1719 :: 		}
	GOTO       L_turnToMiddle511
L_turnToMiddle512:
;final_code_6.c,1721 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1722 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_turnToMiddle517:
	DECFSZ     R13+0, 1
	GOTO       L_turnToMiddle517
	DECFSZ     R12+0, 1
	GOTO       L_turnToMiddle517
	DECFSZ     R11+0, 1
	GOTO       L_turnToMiddle517
	NOP
;final_code_6.c,1724 :: 		}
	RETURN
; end of _turnToMiddle

_runner:

;final_code_6.c,1727 :: 		void runner(){
;final_code_6.c,1728 :: 		if(totCounter==0){
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1097
	MOVLW      0
	XORWF      _totCounter+0, 0
L__runner1097:
	BTFSS      STATUS+0, 2
	GOTO       L_runner518
;final_code_6.c,1729 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code_6.c,1730 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1731 :: 		if(totFront==9){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1098
	MOVLW      9
	XORWF      _totFront+0, 0
L__runner1098:
	BTFSS      STATUS+0, 2
	GOTO       L_runner519
;final_code_6.c,1732 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1733 :: 		Delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_runner520:
	DECFSZ     R13+0, 1
	GOTO       L_runner520
	DECFSZ     R12+0, 1
	GOTO       L_runner520
	DECFSZ     R11+0, 1
	GOTO       L_runner520
	NOP
	NOP
;final_code_6.c,1734 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1735 :: 		if(totFront==9){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1099
	MOVLW      9
	XORWF      _totFront+0, 0
L__runner1099:
	BTFSS      STATUS+0, 2
	GOTO       L_runner521
;final_code_6.c,1736 :: 		totCounter=2;
	MOVLW      2
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_6.c,1737 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1739 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1740 :: 		}else{
	GOTO       L_runner522
L_runner521:
;final_code_6.c,1741 :: 		moveF();
	CALL       _moveF+0
;final_code_6.c,1742 :: 		}
L_runner522:
;final_code_6.c,1743 :: 		}
L_runner519:
;final_code_6.c,1744 :: 		}else if(totCounter==2){
	GOTO       L_runner523
L_runner518:
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1100
	MOVLW      2
	XORWF      _totCounter+0, 0
L__runner1100:
	BTFSS      STATUS+0, 2
	GOTO       L_runner524
;final_code_6.c,1745 :: 		avoidObstacles();
	CALL       _avoidObstacles+0
;final_code_6.c,1746 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1747 :: 		if(totFront==0){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1101
	MOVLW      0
	XORWF      _totFront+0, 0
L__runner1101:
	BTFSS      STATUS+0, 2
	GOTO       L_runner525
;final_code_6.c,1748 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1750 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1751 :: 		totCounter=3;
	MOVLW      3
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_6.c,1752 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1753 :: 		}
L_runner525:
;final_code_6.c,1755 :: 		}else if(totCounter==3){
	GOTO       L_runner526
L_runner524:
	MOVLW      0
	XORWF      _totCounter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1102
	MOVLW      3
	XORWF      _totCounter+0, 0
L__runner1102:
	BTFSS      STATUS+0, 2
	GOTO       L_runner527
;final_code_6.c,1757 :: 		followArrow();
	CALL       _followArrow+0
;final_code_6.c,1758 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1759 :: 		if(totFront==9&&totBack>2){
	MOVLW      0
	XORWF      _totFront+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1103
	MOVLW      9
	XORWF      _totFront+0, 0
L__runner1103:
	BTFSS      STATUS+0, 2
	GOTO       L_runner530
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _totBack+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__runner1104
	MOVF       _totBack+0, 0
	SUBLW      2
L__runner1104:
	BTFSC      STATUS+0, 0
	GOTO       L_runner530
L__runner723:
;final_code_6.c,1760 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1761 :: 		totCounter=4;
	MOVLW      4
	MOVWF      _totCounter+0
	MOVLW      0
	MOVWF      _totCounter+1
;final_code_6.c,1762 :: 		}
L_runner530:
;final_code_6.c,1763 :: 		}
L_runner527:
L_runner526:
L_runner523:
;final_code_6.c,1764 :: 		}
	RETURN
; end of _runner

_getTrackMiddle:

;final_code_6.c,1766 :: 		void getTrackMiddle(){
;final_code_6.c,1768 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,1769 :: 		PWM1_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1770 :: 		PWM2_Set_Duty(200);
	MOVLW      200
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1771 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1772 :: 		NidegL();
	CALL       _NidegL+0
;final_code_6.c,1774 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1775 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1776 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1777 :: 		while(counter2>300&&counter3>300){
L_getTrackMiddle531:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1105
	MOVF       _counter2+0, 0
	SUBLW      44
L__getTrackMiddle1105:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle532
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1106
	MOVF       _counter3+0, 0
	SUBLW      44
L__getTrackMiddle1106:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle532
L__getTrackMiddle725:
;final_code_6.c,1778 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1779 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1780 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1783 :: 		}
	GOTO       L_getTrackMiddle531
L_getTrackMiddle532:
;final_code_6.c,1784 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1785 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_getTrackMiddle535:
	DECFSZ     R13+0, 1
	GOTO       L_getTrackMiddle535
	DECFSZ     R12+0, 1
	GOTO       L_getTrackMiddle535
	DECFSZ     R11+0, 1
	GOTO       L_getTrackMiddle535
	NOP
;final_code_6.c,1786 :: 		NidegR();
	CALL       _NidegR+0
;final_code_6.c,1787 :: 		NidegR();
	CALL       _NidegR+0
;final_code_6.c,1789 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1790 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1791 :: 		while(counter2>80&&counter3>80){
L_getTrackMiddle536:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1107
	MOVF       _counter2+0, 0
	SUBLW      80
L__getTrackMiddle1107:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle537
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _counter3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getTrackMiddle1108
	MOVF       _counter3+0, 0
	SUBLW      80
L__getTrackMiddle1108:
	BTFSC      STATUS+0, 0
	GOTO       L_getTrackMiddle537
L__getTrackMiddle724:
;final_code_6.c,1792 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1793 :: 		getDis3();
	CALL       _getDis3+0
;final_code_6.c,1794 :: 		goStraight2();
	CALL       _goStraight2+0
;final_code_6.c,1795 :: 		}
	GOTO       L_getTrackMiddle536
L_getTrackMiddle537:
;final_code_6.c,1797 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1798 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_getTrackMiddle540:
	DECFSZ     R13+0, 1
	GOTO       L_getTrackMiddle540
	DECFSZ     R12+0, 1
	GOTO       L_getTrackMiddle540
	DECFSZ     R11+0, 1
	GOTO       L_getTrackMiddle540
	NOP
;final_code_6.c,1800 :: 		}
	RETURN
; end of _getTrackMiddle

_search_arrow:

;final_code_6.c,1802 :: 		int search_arrow(){
;final_code_6.c,1803 :: 		int state=0;
	CLRF       search_arrow_state_L0+0
	CLRF       search_arrow_state_L0+1
;final_code_6.c,1804 :: 		PWM1_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1805 :: 		PWM2_Set_Duty(190);
	MOVLW      190
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,1813 :: 		while(value==0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1109
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1109:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow542
;final_code_6.c,1815 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1816 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1817 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1818 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1819 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1820 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow543:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1110
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow1110:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow544
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1111
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1111:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow544
L__search_arrow735:
;final_code_6.c,1821 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1822 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1823 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1824 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1825 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,1826 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1112
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1112:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow547
;final_code_6.c,1827 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1828 :: 		break;
	GOTO       L_search_arrow544
;final_code_6.c,1829 :: 		}
L_search_arrow547:
;final_code_6.c,1830 :: 		}
	GOTO       L_search_arrow543
L_search_arrow544:
;final_code_6.c,1831 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1113
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1113:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow548
;final_code_6.c,1832 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1833 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow549:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow549
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow549
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow549
	NOP
;final_code_6.c,1834 :: 		}
L_search_arrow548:
;final_code_6.c,1835 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1836 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow550:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1114
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow1114:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow551
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1115
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1115:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow551
L__search_arrow734:
;final_code_6.c,1837 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1838 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1839 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1840 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1842 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1843 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1116
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1116:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow554
;final_code_6.c,1844 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1845 :: 		break;
	GOTO       L_search_arrow551
;final_code_6.c,1846 :: 		}
L_search_arrow554:
;final_code_6.c,1847 :: 		if(counter1<200 && counter2<200){
	MOVLW      128
	XORWF      _counter1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1117
	MOVLW      200
	SUBWF      _counter1+0, 0
L__search_arrow1117:
	BTFSC      STATUS+0, 0
	GOTO       L_search_arrow557
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1118
	MOVLW      200
	SUBWF      _counter2+0, 0
L__search_arrow1118:
	BTFSC      STATUS+0, 0
	GOTO       L_search_arrow557
L__search_arrow733:
;final_code_6.c,1848 :: 		state=0;
	CLRF       search_arrow_state_L0+0
	CLRF       search_arrow_state_L0+1
;final_code_6.c,1849 :: 		break;
	GOTO       L_search_arrow551
;final_code_6.c,1850 :: 		}
L_search_arrow557:
;final_code_6.c,1852 :: 		}
	GOTO       L_search_arrow550
L_search_arrow551:
;final_code_6.c,1853 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1119
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1119:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow558
;final_code_6.c,1854 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1855 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow559:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow559
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow559
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow559
	NOP
;final_code_6.c,1856 :: 		}
L_search_arrow558:
;final_code_6.c,1858 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1859 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow560:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1120
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow1120:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow561
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1121
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1121:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow561
L__search_arrow732:
;final_code_6.c,1860 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1861 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1862 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1863 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1864 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,1865 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1122
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1122:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow564
;final_code_6.c,1866 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1867 :: 		break;
	GOTO       L_search_arrow561
;final_code_6.c,1868 :: 		}
L_search_arrow564:
;final_code_6.c,1869 :: 		}
	GOTO       L_search_arrow560
L_search_arrow561:
;final_code_6.c,1870 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1123
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1123:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow565
;final_code_6.c,1871 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1872 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow566:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow566
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow566
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow566
	NOP
;final_code_6.c,1873 :: 		}
L_search_arrow565:
;final_code_6.c,1875 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1876 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow567:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1124
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow1124:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow568
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1125
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1125:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow568
L__search_arrow731:
;final_code_6.c,1877 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1878 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1879 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1880 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1881 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1882 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1126
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1126:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow571
;final_code_6.c,1883 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1884 :: 		break;
	GOTO       L_search_arrow568
;final_code_6.c,1885 :: 		}
L_search_arrow571:
;final_code_6.c,1886 :: 		}
	GOTO       L_search_arrow567
L_search_arrow568:
;final_code_6.c,1887 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1127
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1127:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow572
;final_code_6.c,1888 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1889 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow573:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow573
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow573
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow573
	NOP
;final_code_6.c,1890 :: 		}
L_search_arrow572:
;final_code_6.c,1892 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1893 :: 		while(TMR0_value<=15 && state==0){
L_search_arrow574:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1128
	MOVF       _TMR0_value+0, 0
	SUBLW      15
L__search_arrow1128:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow575
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1129
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1129:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow575
L__search_arrow730:
;final_code_6.c,1894 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1895 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1896 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1897 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1898 :: 		RightHardTurn();
	CALL       _RightHardTurn+0
;final_code_6.c,1899 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1130
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1130:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow578
;final_code_6.c,1900 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1901 :: 		break;
	GOTO       L_search_arrow575
;final_code_6.c,1902 :: 		}
L_search_arrow578:
;final_code_6.c,1903 :: 		}
	GOTO       L_search_arrow574
L_search_arrow575:
;final_code_6.c,1904 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1131
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1131:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow579
;final_code_6.c,1905 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1906 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow580:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow580
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow580
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow580
	NOP
;final_code_6.c,1907 :: 		}
L_search_arrow579:
;final_code_6.c,1909 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1910 :: 		while(TMR0_value<=60 && state==0){
L_search_arrow581:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1132
	MOVF       _TMR0_value+0, 0
	SUBLW      60
L__search_arrow1132:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow582
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1133
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1133:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow582
L__search_arrow729:
;final_code_6.c,1911 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1912 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1913 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1914 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1915 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1916 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1134
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1134:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow585
;final_code_6.c,1917 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1918 :: 		break;
	GOTO       L_search_arrow582
;final_code_6.c,1919 :: 		}
L_search_arrow585:
;final_code_6.c,1920 :: 		if(counter1<200 && counter2<200){
	MOVLW      128
	XORWF      _counter1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1135
	MOVLW      200
	SUBWF      _counter1+0, 0
L__search_arrow1135:
	BTFSC      STATUS+0, 0
	GOTO       L_search_arrow588
	MOVLW      128
	XORWF      _counter2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1136
	MOVLW      200
	SUBWF      _counter2+0, 0
L__search_arrow1136:
	BTFSC      STATUS+0, 0
	GOTO       L_search_arrow588
L__search_arrow728:
;final_code_6.c,1921 :: 		state=0;
	CLRF       search_arrow_state_L0+0
	CLRF       search_arrow_state_L0+1
;final_code_6.c,1922 :: 		break;
	GOTO       L_search_arrow582
;final_code_6.c,1923 :: 		}
L_search_arrow588:
;final_code_6.c,1925 :: 		}
	GOTO       L_search_arrow581
L_search_arrow582:
;final_code_6.c,1926 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1137
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1137:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow589
;final_code_6.c,1927 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1928 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow590:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow590
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow590
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow590
	NOP
;final_code_6.c,1929 :: 		}
L_search_arrow589:
;final_code_6.c,1931 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1932 :: 		while(TMR0_value<=20 && state==0){
L_search_arrow591:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1138
	MOVF       _TMR0_value+0, 0
	SUBLW      20
L__search_arrow1138:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow592
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1139
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1139:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow592
L__search_arrow727:
;final_code_6.c,1933 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1934 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1935 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1936 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1937 :: 		lefthardTurn();
	CALL       _leftHardTurn+0
;final_code_6.c,1938 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1140
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1140:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow595
;final_code_6.c,1939 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1940 :: 		break;
	GOTO       L_search_arrow592
;final_code_6.c,1941 :: 		}
L_search_arrow595:
;final_code_6.c,1942 :: 		}
	GOTO       L_search_arrow591
L_search_arrow592:
;final_code_6.c,1943 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1141
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1141:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow596
;final_code_6.c,1944 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1945 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow597:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow597
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow597
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow597
	NOP
;final_code_6.c,1946 :: 		}
L_search_arrow596:
;final_code_6.c,1948 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,1949 :: 		while(TMR0_value<=16 && state==0){
L_search_arrow598:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _TMR0_value+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1142
	MOVF       _TMR0_value+0, 0
	SUBLW      16
L__search_arrow1142:
	BTFSS      STATUS+0, 0
	GOTO       L_search_arrow599
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1143
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1143:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow599
L__search_arrow726:
;final_code_6.c,1950 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,1951 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,1952 :: 		getDis1();
	CALL       _getDis1+0
;final_code_6.c,1953 :: 		getDis2();
	CALL       _getDis2+0
;final_code_6.c,1954 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,1955 :: 		if(value!=0){
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1144
	MOVLW      0
	XORWF      _value+0, 0
L__search_arrow1144:
	BTFSC      STATUS+0, 2
	GOTO       L_search_arrow602
;final_code_6.c,1956 :: 		state=1;
	MOVLW      1
	MOVWF      search_arrow_state_L0+0
	MOVLW      0
	MOVWF      search_arrow_state_L0+1
;final_code_6.c,1957 :: 		break;
	GOTO       L_search_arrow599
;final_code_6.c,1958 :: 		}
L_search_arrow602:
;final_code_6.c,1959 :: 		}
	GOTO       L_search_arrow598
L_search_arrow599:
;final_code_6.c,1960 :: 		if(state==0){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1145
	MOVLW      0
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1145:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow603
;final_code_6.c,1961 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1962 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow604:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow604
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow604
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow604
	NOP
;final_code_6.c,1963 :: 		}
L_search_arrow603:
;final_code_6.c,1965 :: 		if(state==1){
	MOVLW      0
	XORWF      search_arrow_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__search_arrow1146
	MOVLW      1
	XORWF      search_arrow_state_L0+0, 0
L__search_arrow1146:
	BTFSS      STATUS+0, 2
	GOTO       L_search_arrow605
;final_code_6.c,1966 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,1967 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_search_arrow606:
	DECFSZ     R13+0, 1
	GOTO       L_search_arrow606
	DECFSZ     R12+0, 1
	GOTO       L_search_arrow606
	DECFSZ     R11+0, 1
	GOTO       L_search_arrow606
	NOP
;final_code_6.c,1969 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	RETURN
;final_code_6.c,1970 :: 		}else{
L_search_arrow605:
;final_code_6.c,1971 :: 		return 0;
	CLRF       R0+0
	CLRF       R0+1
	RETURN
;final_code_6.c,1975 :: 		}
L_search_arrow542:
;final_code_6.c,1978 :: 		}
	RETURN
; end of _search_arrow

_main:

;final_code_6.c,1984 :: 		void main() {
;final_code_6.c,1985 :: 		TRISD=0b11000000;
	MOVLW      192
	MOVWF      TRISD+0
;final_code_6.c,1986 :: 		TRISC=0b10000001;
	MOVLW      129
	MOVWF      TRISC+0
;final_code_6.c,1987 :: 		ADCON1=0x06; // Configure all input and output in to digital
	MOVLW      6
	MOVWF      ADCON1+0
;final_code_6.c,1988 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_6.c,1992 :: 		init_timer();
	CALL       _init_timer+0
;final_code_6.c,1993 :: 		TRISB.F6=0;
	BCF        TRISB+0, 6
;final_code_6.c,1994 :: 		TRISB.F7=0;
	BCF        TRISB+0, 7
;final_code_6.c,1996 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;final_code_6.c,1997 :: 		PWM2_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;final_code_6.c,1998 :: 		PWM1_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;final_code_6.c,1999 :: 		PWM2_Set_Duty(180);
	MOVLW      180
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;final_code_6.c,2000 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;final_code_6.c,2001 :: 		PWM2_Start();
	CALL       _PWM2_Start+0
;final_code_6.c,2002 :: 		TRISA.F4=1;
	BSF        TRISA+0, 4
;final_code_6.c,2003 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;final_code_6.c,2005 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;final_code_6.c,2006 :: 		TRISD.F7 = 1;
	BSF        TRISD+0, 7
;final_code_6.c,2007 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;final_code_6.c,2008 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;final_code_6.c,2009 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;final_code_6.c,2010 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;final_code_6.c,2011 :: 		TRISC.F4=0;
	BCF        TRISC+0, 4
;final_code_6.c,2012 :: 		TRISC.F5=0;
	BCF        TRISC+0, 5
;final_code_6.c,2013 :: 		TRISC.F6=0;
	BCF        TRISC+0, 6
;final_code_6.c,2014 :: 		TRISD.F3=1;
	BSF        TRISD+0, 3
;final_code_6.c,2015 :: 		TRISD.F4=1;
	BSF        TRISD+0, 4
;final_code_6.c,2016 :: 		initEncoder();
	CALL       _initEncoder+0
;final_code_6.c,2021 :: 		mediumSpeed();
	CALL       _mediumSpeed+0
;final_code_6.c,2023 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,2024 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main608:
	DECFSZ     R13+0, 1
	GOTO       L_main608
	DECFSZ     R12+0, 1
	GOTO       L_main608
	DECFSZ     R11+0, 1
	GOTO       L_main608
	NOP
;final_code_6.c,2025 :: 		do{
L_main609:
;final_code_6.c,2026 :: 		forward();
	CALL       _forward+0
;final_code_6.c,2027 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,2028 :: 		value=bin_deci();
	CALL       _bin_deci+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;final_code_6.c,2029 :: 		}while(value==0);
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1147
	MOVLW      0
	XORWF      R0+0, 0
L__main1147:
	BTFSC      STATUS+0, 2
	GOTO       L_main609
;final_code_6.c,2031 :: 		while(1){
L_main612:
;final_code_6.c,2032 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,2033 :: 		front_value=getFrontDecimal();
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      _front_value+0
	MOVF       R0+1, 0
	MOVWF      _front_value+1
;final_code_6.c,2034 :: 		back_value=getBackDecimal();
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      _back_value+0
	MOVF       R0+1, 0
	MOVWF      _back_value+1
;final_code_6.c,2035 :: 		if(mode_change==0){
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1148
	MOVLW      0
	XORWF      _mode_change+0, 0
L__main1148:
	BTFSS      STATUS+0, 2
	GOTO       L_main614
;final_code_6.c,2036 :: 		lineFollow();
	CALL       _lineFollow+0
;final_code_6.c,2037 :: 		if(front_value==511){
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main1149
	MOVLW      255
	XORWF      _front_value+0, 0
L__main1149:
	BTFSS      STATUS+0, 2
	GOTO       L_main615
;final_code_6.c,2038 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,2039 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main616:
	DECFSZ     R13+0, 1
	GOTO       L_main616
	DECFSZ     R12+0, 1
	GOTO       L_main616
	DECFSZ     R11+0, 1
	GOTO       L_main616
	NOP
;final_code_6.c,2040 :: 		forward();
	CALL       _forward+0
;final_code_6.c,2041 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main617:
	DECFSZ     R13+0, 1
	GOTO       L_main617
	DECFSZ     R12+0, 1
	GOTO       L_main617
	DECFSZ     R11+0, 1
	GOTO       L_main617
	NOP
	NOP
;final_code_6.c,2042 :: 		if(back_value==31 && front_value==511 && mode_change==0){
	MOVLW      0
	XORWF      _back_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1150
	MOVLW      31
	XORWF      _back_value+0, 0
L__main1150:
	BTFSS      STATUS+0, 2
	GOTO       L_main620
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main1151
	MOVLW      255
	XORWF      _front_value+0, 0
L__main1151:
	BTFSS      STATUS+0, 2
	GOTO       L_main620
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1152
	MOVLW      0
	XORWF      _mode_change+0, 0
L__main1152:
	BTFSS      STATUS+0, 2
	GOTO       L_main620
L__main737:
;final_code_6.c,2043 :: 		mode_change=1;
	MOVLW      1
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_6.c,2044 :: 		}
L_main620:
;final_code_6.c,2045 :: 		}else if(left_count>=500 || right_count>=500){
	GOTO       L_main621
L_main615:
	MOVLW      128
	XORWF      _left_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1153
	MOVLW      244
	SUBWF      _left_count+0, 0
L__main1153:
	BTFSC      STATUS+0, 0
	GOTO       L__main736
	MOVLW      128
	XORWF      _right_count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1154
	MOVLW      244
	SUBWF      _right_count+0, 0
L__main1154:
	BTFSC      STATUS+0, 0
	GOTO       L__main736
	GOTO       L_main624
L__main736:
;final_code_6.c,2046 :: 		mode_change=1;
	MOVLW      1
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_6.c,2047 :: 		}
L_main624:
L_main621:
;final_code_6.c,2048 :: 		}else if(mode_change==1){
	GOTO       L_main625
L_main614:
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1155
	MOVLW      1
	XORWF      _mode_change+0, 0
L__main1155:
	BTFSS      STATUS+0, 2
	GOTO       L_main626
;final_code_6.c,2049 :: 		if(mode_state==0){
	MOVLW      0
	XORWF      _mode_state+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1156
	MOVLW      0
	XORWF      _mode_state+0, 0
L__main1156:
	BTFSS      STATUS+0, 2
	GOTO       L_main627
;final_code_6.c,2050 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,2051 :: 		mode_state=1;
	MOVLW      1
	MOVWF      _mode_state+0
	MOVLW      0
	MOVWF      _mode_state+1
;final_code_6.c,2052 :: 		}
L_main627:
;final_code_6.c,2053 :: 		avoidObstacles2();
	CALL       _avoidObstacles2+0
;final_code_6.c,2054 :: 		if(front_value==0){
	MOVLW      0
	XORWF      _front_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1157
	MOVLW      0
	XORWF      _front_value+0, 0
L__main1157:
	BTFSS      STATUS+0, 2
	GOTO       L_main628
;final_code_6.c,2055 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,2056 :: 		forward();
	CALL       _forward+0
;final_code_6.c,2057 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main629:
	DECFSZ     R13+0, 1
	GOTO       L_main629
	DECFSZ     R12+0, 1
	GOTO       L_main629
	DECFSZ     R11+0, 1
	GOTO       L_main629
	NOP
	NOP
;final_code_6.c,2058 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,2059 :: 		if(front_value==0){
	MOVLW      0
	XORWF      _front_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1158
	MOVLW      0
	XORWF      _front_value+0, 0
L__main1158:
	BTFSS      STATUS+0, 2
	GOTO       L_main630
;final_code_6.c,2060 :: 		mode_change=2;
	MOVLW      2
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_6.c,2061 :: 		mode_state=0;
	CLRF       _mode_state+0
	CLRF       _mode_state+1
;final_code_6.c,2062 :: 		}
	GOTO       L_main631
L_main630:
;final_code_6.c,2064 :: 		mode_change=1;
	MOVLW      1
	MOVWF      _mode_change+0
	MOVLW      0
	MOVWF      _mode_change+1
;final_code_6.c,2065 :: 		}
L_main631:
;final_code_6.c,2066 :: 		}
L_main628:
;final_code_6.c,2067 :: 		}else if(mode_change==2){
	GOTO       L_main632
L_main626:
	MOVLW      0
	XORWF      _mode_change+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1159
	MOVLW      2
	XORWF      _mode_change+0, 0
L__main1159:
	BTFSS      STATUS+0, 2
	GOTO       L_main633
;final_code_6.c,2068 :: 		if(mode_state==0){
	MOVLW      0
	XORWF      _mode_state+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1160
	MOVLW      0
	XORWF      _mode_state+0, 0
L__main1160:
	BTFSS      STATUS+0, 2
	GOTO       L_main634
;final_code_6.c,2069 :: 		turnToPoint(4);
	MOVLW      4
	MOVWF      FARG_turnToPoint_pt+0
	MOVLW      0
	MOVWF      FARG_turnToPoint_pt+1
	CALL       _turnToPoint+0
;final_code_6.c,2070 :: 		mode_state=2;
	MOVLW      2
	MOVWF      _mode_state+0
	MOVLW      0
	MOVWF      _mode_state+1
;final_code_6.c,2071 :: 		}
L_main634:
;final_code_6.c,2072 :: 		while(search_arrow()==0);
L_main635:
	CALL       _search_arrow+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1161
	MOVLW      0
	XORWF      R0+0, 0
L__main1161:
	BTFSS      STATUS+0, 2
	GOTO       L_main636
	GOTO       L_main635
L_main636:
;final_code_6.c,2073 :: 		followArrow();
	CALL       _followArrow+0
;final_code_6.c,2074 :: 		if(front_value==511){
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main1162
	MOVLW      255
	XORWF      _front_value+0, 0
L__main1162:
	BTFSS      STATUS+0, 2
	GOTO       L_main637
;final_code_6.c,2075 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,2076 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main638:
	DECFSZ     R13+0, 1
	GOTO       L_main638
	DECFSZ     R12+0, 1
	GOTO       L_main638
	DECFSZ     R11+0, 1
	GOTO       L_main638
	NOP
;final_code_6.c,2077 :: 		do{
L_main639:
;final_code_6.c,2078 :: 		goStraight();
	CALL       _goStraight+0
;final_code_6.c,2079 :: 		sensorRead();
	CALL       _sensorRead+0
;final_code_6.c,2080 :: 		front_value=getFrontDecimal();
	CALL       _getFrontDecimal+0
	MOVF       R0+0, 0
	MOVWF      _front_value+0
	MOVF       R0+1, 0
	MOVWF      _front_value+1
;final_code_6.c,2081 :: 		back_value=getBackDecimal();
	CALL       _getBackDecimal+0
	MOVF       R0+0, 0
	MOVWF      _back_value+0
	MOVF       R0+1, 0
	MOVWF      _back_value+1
;final_code_6.c,2082 :: 		if(back_value==31){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main1163
	MOVLW      31
	XORWF      R0+0, 0
L__main1163:
	BTFSS      STATUS+0, 2
	GOTO       L_main642
;final_code_6.c,2083 :: 		stopAll();
	CALL       _stopAll+0
;final_code_6.c,2084 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main643:
	DECFSZ     R13+0, 1
	GOTO       L_main643
	DECFSZ     R12+0, 1
	GOTO       L_main643
	DECFSZ     R11+0, 1
	GOTO       L_main643
	NOP
;final_code_6.c,2085 :: 		break;
	GOTO       L_main640
;final_code_6.c,2087 :: 		}
L_main642:
;final_code_6.c,2088 :: 		}while(front_value==511);
	MOVF       _front_value+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main1164
	MOVLW      255
	XORWF      _front_value+0, 0
L__main1164:
	BTFSC      STATUS+0, 2
	GOTO       L_main639
L_main640:
;final_code_6.c,2090 :: 		}
L_main637:
;final_code_6.c,2091 :: 		}
L_main633:
L_main632:
L_main625:
;final_code_6.c,2092 :: 		}
	GOTO       L_main612
;final_code_6.c,2100 :: 		}
	GOTO       $+0
; end of _main
