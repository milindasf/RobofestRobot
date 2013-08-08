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
// End LCD module connections


//------------------------------------------------------------------------VARIABLES-----------------------------------------------------------------
int state3=0;
int turn_state=0;
int turn_state_1=0;
int adcVal =90;
int maxPoint,minPoint,avgRpm=190,error=0,prevError=0,whiteError=0;
int i=0;
char text[14];
int se[14];
int count_4=0;
int temp=0;

//int s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11;
int speed =230, speed1=200,speed2=225,speed3=215;
unsigned int TMR1_value,TMR0_value;
char to_LCD[6],to_LCD2[6];
int juncCap=0,side=0;
int value;
int noline=0;
int counter2;
int counter3;
int tm1st;
int tm0st;
int P;
int I;
int D;
int kp=1;
int ki=0;
int kd=0;
int max_error=25;
int mean_pwm=230;
int last_error=0;
int ST=10;// in mili seconds.
int pwm=0;
pwm_right=0;
pwm_left=0;
//-------------------------------------------------------------------------------------------------------------------------------------------------

sensorRead(){
    int i;
    if(ADC_Read(0)>adcVal){
       text[0]='1';
        se[0]=1;
     }else{
        text[0]='0';
        se[0]=0;
     }
     if(ADC_Read(1)>adcVal){
        text[1]='1';
        se[1]=1;
     }else{
        text[1]='0';
        se[1]=0;
     }
     if(ADC_Read(2)> adcVal){
        text[2]='1';
        se[2]=1;
     }else{
        text[2]='0';
        se[2]=0;
     }
     if(ADC_Read(3)> adcVal){
        text[3]='1';
        se[3]=1;
     }else{
        text[3]='0';
        se[3]=0;
     }

     if(ADC_Read(4)>adcVal){
        text[4]='1';
        se[4]=1;
     }else{
        text[4]='0';
        se[4]=0;
     }
     if(ADC_Read(5)>adcVal){
        text[5]='1';
        se[5]=1;
     }else{
        text[5]='0';
        se[5]=0;
     }

     if(ADC_Read(6)>adcVal){
        text[6]='1';
        se[6]=1;
     }else{
        text[6]='0';
        se[6]=0;
     }
     if(ADC_Read(7)>adcVal){
        text[7]='1';
        se[7]=1;
     }else{
        text[7]='0';
        se[7]=0;
     }
     if(ADC_Read(8)>adcVal){
        text[8]='1';
        se[8]=1;
     }else{
        text[8]='0';
        se[8]=0;
     }
     if(ADC_Read(9)>adcVal){
        text[9]='1';
        se[9]=1;
     }else{
        text[9]='0';
        se[9]=0;
     }
     if(ADC_Read(10)>adcVal){
        text[10]='1';
        se[10]=1;
     }else{
        text[10]='0';
        se[10]=0;
     }
     if(ADC_Read(11)>adcVal){
        text[11]='1';
        se[11]=1;
     }else{
        text[11]='0';
        se[11]=0;
     }
     if(ADC_Read(12)>adcVal){
        text[12]='1';
        se[12]=1;
     }else{
        text[12]='0';
        se[12]=0;
     }
     if(ADC_Read(13)>adcVal){
        text[13]='1';
        se[13]=1;
     }else{
        text[13]='0';
        se[13]=0;
     }


}



int error(){
int e=0;
sensorRead();
e=se[5]*4+se[6]*3+se[7]*2+se[8]*1+se[10]*(-1)+se[11]*(-2)+se[12]*(-3)+se[13]*([-4);
return(e);
}

forward(int power_right,int power_left){
  PORTC.F3=1;
  PORTC.F4=0;
  PORTC.F5=0;
  PORTC.F6=1;
  PWM1_Set_Duty(power_right);
  PWM2_Set_Duty(power_left);
}


void PID_calc(){


P=error();

if(kd!=0){   // calculation of the Deferrentioal

D=(P-last_error);
last_error=P;

}

if(ki!==0){
I=(I+P);
}

pwm=(P)+(D*0)+(I*0);
if(pwm>max_error){
 pwm=max_error;
}else if(pwm<-max_error){
 pwm=-max_error;
}

pwm_right=mean_pwm+pwm;
pwm_left=mean_pwm-pwm;

forward(pwm_right,pwm_left);



}


void main(){

  OSCCON = 0b01110001;        // pdf 64.
  T1CON = 0b00110111;         // pdf 81.
  OPTION_REG=0b11110111;

                     // T1CKI is input
  TRISD = 0;
  PORTD = 0;
  LCD_Init();
  LCD_Out(1, 1, "Asynchronous T1");

  TMR1H = TMR1L = 0;
  TMR0=0;

  ADCON1=0x06; // Configure all input and output in to digital
  TRISA.F4=1;
  Lcd_init(); // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  PWM1_Init(5000);        //right motor
  PWM2_Init(5000);        //left motor

  PWM1_Start();
  PWM2_Start();

  TRISC=0b10000001;
  TRISB.F6=1;
  TRISB.F7=0;
  TRISD=0b11000000;
  TRISA.F4=1;
  TRISC=0b10000001;
  TRISD=0b11000000;
  TRISB.F6=0;
  TRISB.F7=0;

  init_timer();



while(1){




}

}
