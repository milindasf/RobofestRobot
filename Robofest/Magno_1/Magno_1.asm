
_convert:

;Magno_1.c,25 :: 		int convert(int x_high,int x_low){
;Magno_1.c,27 :: 		if(x_high>=127){
	MOVLW      128
	XORWF      FARG_convert_x_high+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__convert53
	MOVLW      127
	SUBWF      FARG_convert_x_high+0, 0
L__convert53:
	BTFSS      STATUS+0, 0
	GOTO       L_convert0
;Magno_1.c,28 :: 		number=(x_high<<8)+x_low;
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
;Magno_1.c,29 :: 		number=number-1;
	MOVLW      1
	SUBWF      convert_number_L0+0, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+1, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+2, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+3, 1
;Magno_1.c,30 :: 		number=~(number);
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
;Magno_1.c,33 :: 		number=(-1)*number;
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
;Magno_1.c,34 :: 		return number;
	RETURN
;Magno_1.c,35 :: 		}else{
L_convert0:
;Magno_1.c,36 :: 		number=(x_high<<8)+x_low;
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
;Magno_1.c,37 :: 		return number;
	MOVF       convert_number_L0+0, 0
	MOVWF      R0+0
	MOVF       convert_number_L0+1, 0
	MOVWF      R0+1
;Magno_1.c,40 :: 		}
	RETURN
; end of _convert

_Read_Compass:

;Magno_1.c,43 :: 		void Read_Compass(){
;Magno_1.c,47 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,48 :: 		I2C1_Wr(0x3C);   //sellecting magnatometer
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,49 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,50 :: 		I2C1_Wr(0x00); //single mode readinh
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,51 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,53 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,54 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass2:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass2
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass2
	NOP
	NOP
;Magno_1.c,55 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass3
;Magno_1.c,57 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,58 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,59 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,60 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,61 :: 		x_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_h+0
;Magno_1.c,62 :: 		}
L_Read_Compass3:
;Magno_1.c,63 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,66 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,67 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass4:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass4
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass4
	NOP
	NOP
;Magno_1.c,68 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass5
;Magno_1.c,70 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,71 :: 		I2C1_Wr(0x04);
	MOVLW      4
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,72 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,73 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,74 :: 		x_l=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_l+0
;Magno_1.c,75 :: 		}
L_Read_Compass5:
;Magno_1.c,76 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,79 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,80 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass6:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass6
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass6
	NOP
	NOP
;Magno_1.c,81 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass7
;Magno_1.c,83 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,84 :: 		I2C1_Wr(0x05);
	MOVLW      5
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,85 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,86 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,87 :: 		z_h=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_h+0
;Magno_1.c,88 :: 		}
L_Read_Compass7:
;Magno_1.c,89 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,92 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,93 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass8:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass8
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass8
	NOP
	NOP
;Magno_1.c,94 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass9
;Magno_1.c,96 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,97 :: 		I2C1_Wr(0x06);
	MOVLW      6
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,98 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,99 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,100 :: 		z_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_l+0
;Magno_1.c,101 :: 		}
L_Read_Compass9:
;Magno_1.c,102 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,105 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,106 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass10:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass10
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass10
	NOP
	NOP
;Magno_1.c,107 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass11
;Magno_1.c,109 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,110 :: 		I2C1_Wr(0x07);
	MOVLW      7
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,111 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,112 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,113 :: 		y_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_h+0
;Magno_1.c,114 :: 		}
L_Read_Compass11:
;Magno_1.c,115 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,117 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;Magno_1.c,118 :: 		Delay_ms(15);
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L_Read_Compass12:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass12
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass12
	NOP
	NOP
;Magno_1.c,119 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass13
;Magno_1.c,121 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,122 :: 		I2C1_Wr(0x08);
	MOVLW      8
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,123 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;Magno_1.c,124 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;Magno_1.c,125 :: 		y_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_l+0
;Magno_1.c,126 :: 		}
L_Read_Compass13:
;Magno_1.c,127 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;Magno_1.c,129 :: 		X_Value=convert(x_h,x_l);
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
;Magno_1.c,130 :: 		Y_Value=convert(y_h,y_l);
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
;Magno_1.c,134 :: 		if(X_Value>=0 && Y_Value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass54
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass54
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass54
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass54:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass16
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass55
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass55
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass55
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass55:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass16
L__Read_Compass50:
;Magno_1.c,136 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;Magno_1.c,137 :: 		angle=angle*((180)/(3.14159265));
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
;Magno_1.c,139 :: 		}else if(X_Value<0 && Y_Value>=0){
	GOTO       L_Read_Compass17
L_Read_Compass16:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass56
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass56
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass56
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass56:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass20
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass57
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass57
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass57
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass57:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass20
L__Read_Compass49:
;Magno_1.c,142 :: 		angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
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
;Magno_1.c,143 :: 		angle=angle*((180)/(3.14159265));
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
;Magno_1.c,144 :: 		angle=180-angle;
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
;Magno_1.c,148 :: 		}else if(X_Value<0 && Y_Value<0){
	GOTO       L_Read_Compass21
L_Read_Compass20:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass58
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass58
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass58
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass58:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass24
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass59
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass59
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass59
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass59:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass24
L__Read_Compass48:
;Magno_1.c,150 :: 		angle=atan((((double)Y_Value/(double)X_Value)));
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
;Magno_1.c,151 :: 		angle=angle*((180)/(3.14159265));
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
;Magno_1.c,152 :: 		angle=angle+180;
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
;Magno_1.c,156 :: 		}else if(X_Value>=0 && Y_Value<0){
	GOTO       L_Read_Compass25
L_Read_Compass24:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass60
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass60
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass60
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass60:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass28
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass61
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass61
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass61
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass61:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass28
L__Read_Compass47:
;Magno_1.c,158 :: 		angle=atan(((((double)(-1)*Y_Value)/(double)X_Value)));
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
;Magno_1.c,159 :: 		angle=angle*((180)/(3.14159265));
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
;Magno_1.c,160 :: 		angle=360-angle;
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
;Magno_1.c,163 :: 		}
L_Read_Compass28:
L_Read_Compass25:
L_Read_Compass21:
L_Read_Compass17:
;Magno_1.c,165 :: 		if(X_value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass62
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass62
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass62
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass62:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass29
;Magno_1.c,167 :: 		}else{
	GOTO       L_Read_Compass30
L_Read_Compass29:
;Magno_1.c,168 :: 		X_value=(-1)*X_value;
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
;Magno_1.c,170 :: 		}
L_Read_Compass30:
;Magno_1.c,171 :: 		if(Y_value>=0){
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass63
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass63
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass63
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass63:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass31
;Magno_1.c,173 :: 		}else{
	GOTO       L_Read_Compass32
L_Read_Compass31:
;Magno_1.c,174 :: 		Y_value=(-1)*Y_value;
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
;Magno_1.c,176 :: 		}
L_Read_Compass32:
;Magno_1.c,177 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Read_Compass33:
	DECFSZ     R13+0, 1
	GOTO       L_Read_Compass33
	DECFSZ     R12+0, 1
	GOTO       L_Read_Compass33
	NOP
	NOP
;Magno_1.c,178 :: 		}
	RETURN
; end of _Read_Compass

_straight:

;Magno_1.c,183 :: 		int straight(){
;Magno_1.c,185 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Magno_1.c,186 :: 		newAngle= 180-initialDirection+angle;
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
;Magno_1.c,187 :: 		if(newAngle<0){
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight64
	MOVLW      0
	SUBWF      R0+0, 0
L__straight64:
	BTFSC      STATUS+0, 0
	GOTO       L_straight34
;Magno_1.c,188 :: 		newAngle= newAngle+360;
	MOVLW      104
	ADDWF      _newAngle+0, 1
	MOVLW      1
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _newAngle+1, 1
;Magno_1.c,189 :: 		}else if(newAngle>360){
	GOTO       L_straight35
L_straight34:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight65
	MOVF       _newAngle+0, 0
	SUBLW      104
L__straight65:
	BTFSC      STATUS+0, 0
	GOTO       L_straight36
;Magno_1.c,190 :: 		newAngle= newAngle-360;
	MOVLW      104
	SUBWF      _newAngle+0, 1
	BTFSS      STATUS+0, 0
	DECF       _newAngle+1, 1
	MOVLW      1
	SUBWF      _newAngle+1, 1
;Magno_1.c,191 :: 		}
L_straight36:
L_straight35:
;Magno_1.c,192 :: 		if(newAngle<170&& newAngle>0){
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight66
	MOVLW      170
	SUBWF      _newAngle+0, 0
L__straight66:
	BTFSC      STATUS+0, 0
	GOTO       L_straight39
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight67
	MOVF       _newAngle+0, 0
	SUBLW      0
L__straight67:
	BTFSC      STATUS+0, 0
	GOTO       L_straight39
L__straight52:
;Magno_1.c,194 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;Magno_1.c,195 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;Magno_1.c,197 :: 		}else if(newAngle>190&& newAngle<360){
	GOTO       L_straight40
L_straight39:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _newAngle+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight68
	MOVF       _newAngle+0, 0
	SUBLW      190
L__straight68:
	BTFSC      STATUS+0, 0
	GOTO       L_straight43
	MOVLW      128
	XORWF      _newAngle+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__straight69
	MOVLW      104
	SUBWF      _newAngle+0, 0
L__straight69:
	BTFSC      STATUS+0, 0
	GOTO       L_straight43
L__straight51:
;Magno_1.c,199 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;Magno_1.c,200 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;Magno_1.c,203 :: 		}else{
	GOTO       L_straight44
L_straight43:
;Magno_1.c,205 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;Magno_1.c,206 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;Magno_1.c,209 :: 		}
L_straight44:
L_straight40:
;Magno_1.c,211 :: 		}
	RETURN
; end of _straight

_main:

;Magno_1.c,217 :: 		void main(){
;Magno_1.c,219 :: 		Lcd_init(); // Initialize LCD
	CALL       _Lcd_Init+0
;Magno_1.c,220 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Magno_1.c,221 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Magno_1.c,222 :: 		I2C1_Init(100000);
	MOVLW      10
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;Magno_1.c,223 :: 		TRISB.F0=0;
	BCF        TRISB+0, 0
;Magno_1.c,224 :: 		TRISB.F1=0;
	BCF        TRISB+0, 1
;Magno_1.c,226 :: 		while(1){
L_main45:
;Magno_1.c,228 :: 		Read_Compass();
	CALL       _Read_Compass+0
;Magno_1.c,229 :: 		WordToStr(angle,to_LCD);
	MOVF       _angle+0, 0
	MOVWF      R0+0
	MOVF       _angle+1, 0
	MOVWF      R0+1
	MOVF       _angle+2, 0
	MOVWF      R0+2
	MOVF       _angle+3, 0
	MOVWF      R0+3
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _to_LCD+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Magno_1.c,230 :: 		Lcd_Out(1,1,to_LCD);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _to_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Magno_1.c,231 :: 		straight();
	CALL       _straight+0
;Magno_1.c,236 :: 		}
	GOTO       L_main45
;Magno_1.c,240 :: 		}
	GOTO       $+0
; end of _main
