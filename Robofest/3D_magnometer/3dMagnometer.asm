
_main:

;3dMagnometer.c,35 :: 		void main(){
;3dMagnometer.c,37 :: 		Init_Main();
	CALL       _Init_Main+0
;3dMagnometer.c,38 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;3dMagnometer.c,40 :: 		Lcd_init(); // Initialize LCD
	CALL       _Lcd_Init+0
;3dMagnometer.c,41 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;3dMagnometer.c,42 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;3dMagnometer.c,44 :: 		while(1){
L_main1:
;3dMagnometer.c,45 :: 		Read_Compass();
	CALL       _Read_Compass+0
;3dMagnometer.c,46 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;3dMagnometer.c,47 :: 		}
	GOTO       L_main1
;3dMagnometer.c,50 :: 		}
	GOTO       $+0
; end of _main

_convert:

;3dMagnometer.c,51 :: 		int convert(int x_high,int x_low){
;3dMagnometer.c,53 :: 		if(x_high>=127){
	MOVLW      128
	XORWF      FARG_convert_x_high+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__convert38
	MOVLW      127
	SUBWF      FARG_convert_x_high+0, 0
L__convert38:
	BTFSS      STATUS+0, 0
	GOTO       L_convert4
;3dMagnometer.c,54 :: 		number=(x_high<<8)+x_low;
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
;3dMagnometer.c,55 :: 		number=number-1;
	MOVLW      1
	SUBWF      convert_number_L0+0, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+1, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+2, 1
	BTFSS      STATUS+0, 0
	SUBWF      convert_number_L0+3, 1
;3dMagnometer.c,56 :: 		number=~(number);
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
;3dMagnometer.c,59 :: 		number=(-1)*number;
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
;3dMagnometer.c,60 :: 		return number;
	RETURN
;3dMagnometer.c,61 :: 		}else{
L_convert4:
;3dMagnometer.c,62 :: 		number=(x_high<<8)+x_low;
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
;3dMagnometer.c,63 :: 		return number;
	MOVF       convert_number_L0+0, 0
	MOVWF      R0+0
	MOVF       convert_number_L0+1, 0
	MOVWF      R0+1
;3dMagnometer.c,69 :: 		}
	RETURN
; end of _convert

_Init_Main:

;3dMagnometer.c,70 :: 		void Init_Main(){
;3dMagnometer.c,74 :: 		PORTE=0;
	CLRF       PORTE+0
;3dMagnometer.c,75 :: 		TRISE=255;
	MOVLW      255
	MOVWF      TRISE+0
;3dMagnometer.c,76 :: 		PORTC=0;
	CLRF       PORTC+0
;3dMagnometer.c,77 :: 		TRISC=0b00100000;
	MOVLW      32
	MOVWF      TRISC+0
;3dMagnometer.c,81 :: 		First_Time=1;
	MOVLW      1
	MOVWF      _First_Time+0
;3dMagnometer.c,82 :: 		I2C1_Init(100000);
	MOVLW      50
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;3dMagnometer.c,85 :: 		for(i=0;i<5;++i){
	CLRF       Init_Main_i_L0+0
	CLRF       Init_Main_i_L0+1
L_Init_Main6:
	MOVLW      128
	XORWF      Init_Main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Init_Main39
	MOVLW      5
	SUBWF      Init_Main_i_L0+0, 0
L__Init_Main39:
	BTFSC      STATUS+0, 0
	GOTO       L_Init_Main7
;3dMagnometer.c,86 :: 		X_Value_Array[i]=0;
	MOVF       Init_Main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       Init_Main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _X_Value_Array+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;3dMagnometer.c,87 :: 		Y_Value_Array[i]=0;
	MOVF       Init_Main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       Init_Main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _Y_Value_Array+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;3dMagnometer.c,85 :: 		for(i=0;i<5;++i){
	INCF       Init_Main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       Init_Main_i_L0+1, 1
;3dMagnometer.c,88 :: 		}
	GOTO       L_Init_Main6
L_Init_Main7:
;3dMagnometer.c,92 :: 		}
	RETURN
; end of _Init_Main

_Read_Compass:

;3dMagnometer.c,97 :: 		void Read_Compass(){
;3dMagnometer.c,101 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,102 :: 		I2C1_Wr(0x3C);   //sellecting magnatometer
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,103 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,104 :: 		I2C1_Wr(0x00); //single mode readinh
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,105 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,107 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,108 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass9
;3dMagnometer.c,110 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,111 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,112 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,113 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,114 :: 		x_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_h+0
;3dMagnometer.c,115 :: 		}
L_Read_Compass9:
;3dMagnometer.c,116 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,119 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,120 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass10
;3dMagnometer.c,122 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,123 :: 		I2C1_Wr(0x04);
	MOVLW      4
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,124 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,125 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,126 :: 		x_l=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _x_l+0
;3dMagnometer.c,127 :: 		}
L_Read_Compass10:
;3dMagnometer.c,128 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,131 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,132 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass11
;3dMagnometer.c,134 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,135 :: 		I2C1_Wr(0x05);
	MOVLW      5
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,136 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,137 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,138 :: 		z_h=I2c1_Rd(0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_h+0
;3dMagnometer.c,139 :: 		}
L_Read_Compass11:
;3dMagnometer.c,140 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,143 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,144 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass12
;3dMagnometer.c,146 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,147 :: 		I2C1_Wr(0x06);
	MOVLW      6
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,148 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,149 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,150 :: 		z_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _z_l+0
;3dMagnometer.c,151 :: 		}
L_Read_Compass12:
;3dMagnometer.c,152 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,155 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,156 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass13
;3dMagnometer.c,158 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,159 :: 		I2C1_Wr(0x07);
	MOVLW      7
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,160 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,161 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,162 :: 		y_h=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_h+0
;3dMagnometer.c,163 :: 		}
L_Read_Compass13:
;3dMagnometer.c,164 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,166 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;3dMagnometer.c,167 :: 		if(I2c1_Is_Idle())
	CALL       _I2C1_Is_Idle+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Read_Compass14
;3dMagnometer.c,169 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,170 :: 		I2C1_Wr(0x08);
	MOVLW      8
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,171 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;3dMagnometer.c,172 :: 		I2C1_Wr(0x3D);
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;3dMagnometer.c,173 :: 		y_l=I2c1_Rd(0)   ;
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _y_l+0
;3dMagnometer.c,174 :: 		}
L_Read_Compass14:
;3dMagnometer.c,175 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;3dMagnometer.c,177 :: 		X_Value=convert(x_h,x_l);
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
;3dMagnometer.c,178 :: 		Y_Value=convert(y_h,y_l);
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
;3dMagnometer.c,180 :: 		if(X_Value>=0 && Y_Value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass40
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass40
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass40
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass40:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass17
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass41
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass41
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass41
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass41:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass17
L__Read_Compass37:
;3dMagnometer.c,182 :: 		angle=atan((double)((Y_Value/X_Value)));
	MOVF       _X_Value+0, 0
	MOVWF      R4+0
	MOVF       _X_Value+1, 0
	MOVWF      R4+1
	MOVF       _X_Value+2, 0
	MOVWF      R4+2
	MOVF       _X_Value+3, 0
	MOVWF      R4+3
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	CALL       _Longint2Double+0
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
;3dMagnometer.c,183 :: 		angle=angle*((180)/(3));
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
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
;3dMagnometer.c,184 :: 		WordToStr(angle,word);
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,185 :: 		Lcd_Out(1,10,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,187 :: 		}else if(X_Value<0 && Y_Value>=0){
	GOTO       L_Read_Compass18
L_Read_Compass17:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass42
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass42
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass42
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass42:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass21
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass43
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass43
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass43
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass43:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass21
L__Read_Compass36:
;3dMagnometer.c,190 :: 		angle=atan((double)((Y_Value/((-1)*X_Value))));
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
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	CALL       _Longint2Double+0
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
;3dMagnometer.c,191 :: 		angle=angle*((180)/(3));
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
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
;3dMagnometer.c,192 :: 		angle=180-angle;
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
;3dMagnometer.c,193 :: 		WordToStr(angle,word);
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,194 :: 		Lcd_Out(1,10,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,197 :: 		}else if(X_Value<0 && Y_Value<0){
	GOTO       L_Read_Compass22
L_Read_Compass21:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass44
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass44
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass44
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass44:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass25
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass45
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass45
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass45
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass45:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass25
L__Read_Compass35:
;3dMagnometer.c,199 :: 		angle=atan((double)((Y_Value/X_Value)));
	MOVF       _X_Value+0, 0
	MOVWF      R4+0
	MOVF       _X_Value+1, 0
	MOVWF      R4+1
	MOVF       _X_Value+2, 0
	MOVWF      R4+2
	MOVF       _X_Value+3, 0
	MOVWF      R4+3
	MOVF       _Y_Value+0, 0
	MOVWF      R0+0
	MOVF       _Y_Value+1, 0
	MOVWF      R0+1
	MOVF       _Y_Value+2, 0
	MOVWF      R0+2
	MOVF       _Y_Value+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	CALL       _Longint2Double+0
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
;3dMagnometer.c,200 :: 		angle=angle*((180)/(3));
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
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
;3dMagnometer.c,201 :: 		angle=angle+180;
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
;3dMagnometer.c,202 :: 		WordToStr(angle,word);
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,203 :: 		Lcd_Out(1,10,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,206 :: 		}else if(X_Value>=0 && Y_Value<0){
	GOTO       L_Read_Compass26
L_Read_Compass25:
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass46
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass46
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass46
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass46:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass29
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass47
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass47
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass47
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass47:
	BTFSC      STATUS+0, 0
	GOTO       L_Read_Compass29
L__Read_Compass34:
;3dMagnometer.c,208 :: 		angle=atan((double)((((-1)*Y_Value)/X_Value)));
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
	MOVF       _X_Value+0, 0
	MOVWF      R4+0
	MOVF       _X_Value+1, 0
	MOVWF      R4+1
	MOVF       _X_Value+2, 0
	MOVWF      R4+2
	MOVF       _X_Value+3, 0
	MOVWF      R4+3
	CALL       _Div_32x32_S+0
	CALL       _Longint2Double+0
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
;3dMagnometer.c,209 :: 		angle=angle*((180)/(3));
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
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
;3dMagnometer.c,210 :: 		angle=360-angle;
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
;3dMagnometer.c,211 :: 		WordToStr(angle,word);
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,212 :: 		Lcd_Out(1,10,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,214 :: 		}
L_Read_Compass29:
L_Read_Compass26:
L_Read_Compass22:
L_Read_Compass18:
;3dMagnometer.c,216 :: 		if(X_value>=0){
	MOVLW      128
	XORWF      _X_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass48
	MOVLW      0
	SUBWF      _X_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass48
	MOVLW      0
	SUBWF      _X_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass48
	MOVLW      0
	SUBWF      _X_Value+0, 0
L__Read_Compass48:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass30
;3dMagnometer.c,217 :: 		WordToStr(X_Value,word);
	MOVF       _X_Value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _X_Value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,218 :: 		Lcd_Out(1,2,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,219 :: 		Lcd_Out(1,1,"+");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_3dMagnometer+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,220 :: 		}else{
	GOTO       L_Read_Compass31
L_Read_Compass30:
;3dMagnometer.c,221 :: 		X_value=(-1)*X_value;
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
;3dMagnometer.c,222 :: 		WordToStr(X_Value,word);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,223 :: 		Lcd_Out(1,2,word);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,224 :: 		Lcd_Out(1,1,"-");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_3dMagnometer+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,225 :: 		}
L_Read_Compass31:
;3dMagnometer.c,226 :: 		if(Y_value>=0){
	MOVLW      128
	XORWF      _Y_Value+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass49
	MOVLW      0
	SUBWF      _Y_Value+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass49
	MOVLW      0
	SUBWF      _Y_Value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Read_Compass49
	MOVLW      0
	SUBWF      _Y_Value+0, 0
L__Read_Compass49:
	BTFSS      STATUS+0, 0
	GOTO       L_Read_Compass32
;3dMagnometer.c,227 :: 		WordToStr(Y_Value,word);
	MOVF       _Y_Value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _Y_Value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,228 :: 		Lcd_Out(2,2,word);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,229 :: 		Lcd_Out(2,1,"+");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_3dMagnometer+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,230 :: 		}else{
	GOTO       L_Read_Compass33
L_Read_Compass32:
;3dMagnometer.c,231 :: 		Y_value=(-1)*Y_value;
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
;3dMagnometer.c,232 :: 		WordToStr(Y_Value,word);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _word+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;3dMagnometer.c,233 :: 		Lcd_Out(2,2,word);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _word+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,234 :: 		Lcd_Out(2,1,"-");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_3dMagnometer+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;3dMagnometer.c,235 :: 		}
L_Read_Compass33:
;3dMagnometer.c,307 :: 		}
	RETURN
; end of _Read_Compass
