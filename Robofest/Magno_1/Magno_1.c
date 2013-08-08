sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB7_bit;
sbit LCD_D5 at RB6_bit;
sbit LCD_D6 at RB5_bit;
sbit LCD_D7 at RB4_bit;


sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB7_bit;
sbit LCD_D5_Direction at TRISB6_bit;
sbit LCD_D6_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB4_bit;

char to_LCD[6];
char x_h,x_l,z_h,z_l,y_h,y_l;
double angle=0;
long X_Value;
long Y_Value;
int newAngle;
int initialDirection=60;


int convert(int x_high,int x_low){
  long number;
  if(x_high>=127){
    number=(x_high<<8)+x_low;
    number=number-1;
    number=~(number);
   /*number=number-32768;
   */
    number=(-1)*number;
    return number;
   }else{
     number=(x_high<<8)+x_low;
     return number;
    }

}


void Read_Compass(){

         //Lcd_Out(1,1,"Read_Compass");
         //delay_ms(1000);
         I2C1_Start();
         I2C1_Wr(0x3C);   //sellecting magnatometer
         I2C1_Wr(0x02);
         I2C1_Wr(0x00); //single mode readinh
         I2C1_Stop();

          I2C1_Start();
          Delay_ms(15);
          if(I2c1_Is_Idle())
          {
                    I2C1_Wr(0x3C);
                    I2C1_Wr(0x03);
                    I2C1_Repeated_Start();
                    I2C1_Wr(0x3D);
                    x_h=I2c1_Rd(0)   ;
          }
          I2C1_Stop();


          I2C1_Start();
          Delay_ms(15);
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
          Delay_ms(15);
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
          Delay_ms(15);
          if(I2c1_Is_Idle())
          {
                    I2C1_Wr(0x3C);
                    I2C1_Wr(0x06);
                    I2C1_Repeated_Start();
                    I2C1_Wr(0x3D);
                    z_l=I2c1_Rd(0)   ;
          }
          I2C1_Stop();


          I2C1_Start();
          Delay_ms(15);
          if(I2c1_Is_Idle())
          {
                    I2C1_Wr(0x3C);
                    I2C1_Wr(0x07);
                    I2C1_Repeated_Start();
                    I2C1_Wr(0x3D);
                    y_h=I2c1_Rd(0)   ;
          }
          I2C1_Stop();

          I2C1_Start();
          Delay_ms(15);
          if(I2c1_Is_Idle())
          {
                    I2C1_Wr(0x3C);
                    I2C1_Wr(0x08);
                    I2C1_Repeated_Start();
                    I2C1_Wr(0x3D);
                    y_l=I2c1_Rd(0)   ;
          }
          I2C1_Stop();

    X_Value=convert(x_h,x_l);
    Y_Value=convert(y_h,y_l);
   // WordToStr(X_Value,to_LCD);
   // Lcd_Out(1,1,to_LCD);

    if(X_Value>=0 && Y_Value>=0){
     //1
     angle=atan((((double)Y_Value/(double)X_Value)));
     angle=angle*((180)/(3.14159265));

     }else if(X_Value<0 && Y_Value>=0){
      //2

     angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
     angle=angle*((180)/(3.14159265));
     angle=180-angle;



    }else if(X_Value<0 && Y_Value<0){
      //3
     angle=atan((((double)Y_Value/(double)X_Value)));
     angle=angle*((180)/(3.14159265));
     angle=angle+180;



    }else if(X_Value>=0 && Y_Value<0){
      //4
     angle=atan(((((double)(-1)*Y_Value)/(double)X_Value)));
     angle=angle*((180)/(3.14159265));
     angle=360-angle;


    }

    if(X_value>=0){

    }else{
     X_value=(-1)*X_value;

    }
    if(Y_value>=0){

    }else{
     Y_value=(-1)*Y_value;

    }
    Delay_ms(100);
}

int left_state=0;
int right_state=0;
int initialize=0;
int straight(){

    Read_Compass();
    newAngle= 180-initialDirection+angle;
    if(newAngle<0){
       newAngle= newAngle+360;
    }else if(newAngle>360){
       newAngle= newAngle-360;
    }
    if(newAngle<170&& newAngle>0){
       // rotateRight();
        PORTB.F0=0;
        PORTB.F1=1;
       // right 10;
    }else if(newAngle>190&& newAngle<360){
        //rotateLeft();
        PORTB.F0=1;
        PORTB.F1=0;
       // right 01;
        
    }else if((newAngle<345 && newAngle>335) || (newAngle<115 && newAngle>105)){
       //stopAll();
          PORTB.F0=1;
          PORTB.F1=1;
         // right 11;

    }

}





void main(){

Lcd_init(); // Initialize LCD
Lcd_Cmd(_LCD_CLEAR);               // Clear display
Lcd_Cmd(_LCD_CURSOR_OFF);
I2C1_Init(100000);
TRISB.F0=0;
TRISB.F1=0;

while(1){

   Read_Compass();
   WordToStr(angle,to_LCD);
   Lcd_Out(1,1,to_LCD);
   straight();
   // delay_ms(500);
  // Lcd_Out(1,1,"Piyumal");
   //delay_ms(1000);
   
}



}
