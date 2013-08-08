#line 1 "D:/Milinda/Robofest/3D_magnometer/3dMagnometer.c"







long X_Value;
long Y_Value;
long X_Value_Array[5];
long Y_Value_Array[5];
char First_Time;
char word[8];


void Init_Main();
void Read_Compass();

sbit LCD_RS at RD5_bit;
sbit LCD_EN at RD4_bit;
sbit LCD_D4 at RD0_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D7 at RD3_bit;


sbit LCD_RS_Direction at TRISD5_bit;
sbit LCD_EN_Direction at TRISD4_bit;
sbit LCD_D4_Direction at TRISD0_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D7_Direction at TRISD3_bit;


void main(){

Init_Main();
Delay_ms(100);

 Lcd_init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

while(1){
 Read_Compass();
 Delay_ms(100);
}


}
int convert(int x_high,int x_low){
 long number;
if(x_high>=127){
 number=(x_high<<8)+x_low;
 number=number-1;
 number=~(number);
#line 59 "D:/Milinda/Robofest/3D_magnometer/3dMagnometer.c"
 number=(-1)*number;
 return number;
}else{
 number=(x_high<<8)+x_low;
 return number;
}




}
void Init_Main(){

int i;

PORTE=0;
TRISE=255;
PORTC=0;
TRISC=0b00100000;



First_Time=1;
I2C1_Init(100000);


for(i=0;i<5;++i){
X_Value_Array[i]=0;
Y_Value_Array[i]=0;
}



}

char i;
char x_h,x_l,z_h,z_l,y_h,y_l;
double angle=0;
void Read_Compass(){



 I2C1_Start();
 I2C1_Wr(0x3C);
 I2C1_Wr(0x02);
 I2C1_Wr(0x00);
 I2C1_Stop();

 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x03);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 x_h=I2c1_Rd(0) ;
 }
 I2C1_Stop();


 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x04);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 x_l=I2c1_Rd(0);
 }
 I2C1_Stop();


 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x05);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 z_h=I2c1_Rd(0);
 }
 I2C1_Stop();


 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x06);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 z_l=I2c1_Rd(0) ;
 }
 I2C1_Stop();


 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x07);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 y_h=I2c1_Rd(0) ;
 }
 I2C1_Stop();

 I2C1_Start();
 if(I2c1_Is_Idle())
 {
 I2C1_Wr(0x3C);
 I2C1_Wr(0x08);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);
 y_l=I2c1_Rd(0) ;
 }
 I2C1_Stop();

 X_Value=convert(x_h,x_l);
 Y_Value=convert(y_h,y_l);

 if(X_Value>=0 && Y_Value>=0){

 angle=atan((double)((Y_Value/X_Value)));
 angle=angle*((180)/(3));
 WordToStr(angle,word);
 Lcd_Out(1,10,word);

 }else if(X_Value<0 && Y_Value>=0){


 angle=atan((double)((Y_Value/((-1)*X_Value))));
 angle=angle*((180)/(3));
 angle=180-angle;
 WordToStr(angle,word);
 Lcd_Out(1,10,word);


 }else if(X_Value<0 && Y_Value<0){

 angle=atan((double)((Y_Value/X_Value)));
 angle=angle*((180)/(3));
 angle=angle+180;
 WordToStr(angle,word);
 Lcd_Out(1,10,word);


 }else if(X_Value>=0 && Y_Value<0){

 angle=atan((double)((((-1)*Y_Value)/X_Value)));
 angle=angle*((180)/(3));
 angle=360-angle;
 WordToStr(angle,word);
 Lcd_Out(1,10,word);

 }

 if(X_value>=0){
 WordToStr(X_Value,word);
 Lcd_Out(1,2,word);
 Lcd_Out(1,1,"+");
 }else{
 X_value=(-1)*X_value;
 WordToStr(X_Value,word);
 Lcd_Out(1,2,word);
 Lcd_Out(1,1,"-");
 }
 if(Y_value>=0){
 WordToStr(Y_Value,word);
 Lcd_Out(2,2,word);
 Lcd_Out(2,1,"+");
 }else{
 Y_value=(-1)*Y_value;
 WordToStr(Y_Value,word);
 Lcd_Out(2,2,word);
 Lcd_Out(2,1,"-");
 }
#line 307 "D:/Milinda/Robofest/3D_magnometer/3dMagnometer.c"
}
