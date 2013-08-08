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

void rotateLeft(){
  PORTC.F3=0;
  PORTC.F4=1;
  PORTC.F5=0;
  PORTC.F6=1;
  rotationMode=1;
}

void rotateRight(){
  PORTC.F3=1;
  PORTC.F4=0;
  PORTC.F5=1;
  PORTC.F6=0;
  rotationMode=2;
}

void moveF(){
  PORTC.F3=1;
  PORTC.F4=0;
  PORTC.F5=0;
  PORTC.F6=1;
  rotationMode=3;
}

void moveB(){
  PORTC.F3=0;
  PORTC.F4=1;
  PORTC.F5=1;
  PORTC.F6=0;
  rotationMode=4;
}

void stopAll(){
  PORTC.F3=1;
  PORTC.F4=1;
  PORTC.F5=1;
  PORTC.F6=1;
  //rotationMode=0;
}



void speedChangeObsF(){

 speed=180;
 speed1=190;
 speed2=175;
 speed3=165;

}
void speedChangeback(){

 speed=230;
 speed1=200;
 speed2=225;
 speed3=215;



}
void encoder(){
       if(PORTC.F0==1){
           tm1st= 0;

        }
        if(PORTC.F0==0&&tm1st==0){
           tm1st= 1;
           TMR1_value= TMR1_value+1;
        }

        if(PORTA.F4==1){
           tm0st= 0;
        }
        if(PORTA.F4==0&&tm0st==0){
           tm0st= 1;
           TMR0_value= TMR0_value+1;
        }
  }



  void interrupt(){                              //Timer0 interrupts are handled at here. Here is the main driving section of the cube
     if(INTCON.TMR0IF){
        encoder();
        INTCON.TMR0IF = 0; // clear TMR1IF
     }


}


void init_timer(){
    OPTION_REG = 0b10000101; //Timer0 interrupts are configured
    INTCON = 0b10100000; //Interrupts are enabled.
}

  void initEncoder(){
     TMR1_value=0;
     TMR0_value=0;
  }


int  bin_deci(){
      char val[6];
      int decimal_value=0;
      decimal_value=se[5]+2*se[6]+4*se[7]+8*se[8]+16*se[9]+32*se[10]+64*se[11]+128*se[12]+256*se[13];
     // WordToStr(decimal_value,val);
     // LCD_Out(1,1,val);
      return decimal_value;

}

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

forward(){
  PORTC.F3=1;
  PORTC.F4=0;
  PORTC.F5=0;
  PORTC.F6=1;
  PWM1_Set_Duty(speed);
  PWM2_Set_Duty(speed);
}

backward(){
  PORTC.F3=0;
  PORTC.F4=1;
  PORTC.F5=1;
  PORTC.F6=0;
  PWM1_Set_Duty(speed);
  PWM2_Set_Duty(speed);
 }

leftHardTurn(){
  PORTC.F3=0;    //left motor backward
  PORTC.F6=1;
  PORTC.F4=1;    //Right motor forward
  PORTC.F5=0;
  PWM1_Set_Duty(speed1);
  PWM2_Set_Duty(speed1);
}

RightHardTurn(){
  PORTC.F3=1;    //left motor backward
  PORTC.F6=0;
  PORTC.F4=0;    //Right motor forward
  PORTC.F5=1;
  PWM1_Set_Duty(speed1);
  PWM2_Set_Duty(speed1);
}

leftTurn(){
  PORTC.F3=1;    //left motor backward
  PORTC.F6=1;
  PORTC.F4=1;    //Right motor forward
  PORTC.F5=0;
  PWM1_Set_Duty(speed2);
  PWM2_Set_Duty(speed2);
}

RightTurn(){
  PORTC.F3=1;    //left motor forward
  PORTC.F6=1;
  PORTC.F4=0;    //Right motor stopped
  PORTC.F5=1;
  PWM1_Set_Duty(speed2);
  PWM2_Set_Duty(speed2);
}

leftSoftTurn(){
  PORTC.F3=1;    //left motor forward
  PORTC.F6=1;
  PORTC.F4=0;    //Right motor forward
  PORTC.F5=0;
  PWM1_Set_Duty(speed2);
  PWM2_Set_Duty(speed1);

}

rightSoftTurn(){
  PORTC.F3=1;    //left motor backward
  PORTC.F6=1;
  PORTC.F4=0;    //Right motor forward
  PORTC.F5=0;
  PWM1_Set_Duty(speed1);
  PWM2_Set_Duty(speed2);
}

stopAll(){
  PORTC.F3=1;    //left motor backward
  PORTC.F6=1;
  PORTC.F4=1;    //Right motor forward
  PORTC.F5=1;
}

lineFollow(){
    int count=0;
    int count_1=0;
    int state=0;
    int state_1=0;
    sensorRead();
    value=bin_deci();
     if(value==56 || value==48 || value==24){

              forward();
       }
       else if((value==28) || (value==12)){
            rightSoftTurn();
       }

       else if((value==112) || (value==96)){
            leftSoftTurn();
       }
       else if((value==14) || (value==6)){
            rightTurn();
       }
       else if((value==224) || (value==192)){
            leftTurn();
       }
       else if((value==7) || (value==3) || (value==1)){
           rightHardTurn();
       }
       else if((value==448) || (value==384) || (value==256)){
            leftHardTurn();
       }
       else if(se[9]==1 && (se[5]==1 || se[6]==1 || se[7]==1) && (se[11]==1 || se[12]==1 || se[13]==1)){
            //stopAll();
            //delay_ms(500);
            RightTurn();

       } else if(((value==56) || (value==48) || (value==24))&& (se[5]==1 && se[6]==1)){
            //stopAll();
            ///delay_ms(500);
            rightHardTurn();

       }else if(((value==56) || (value==48) || (value==24)) && (se[13]==1 && se[12]==1)){
           //stopAll();
           //delay_ms(500);
           leftHardTurn();
       }  else if((se[5]==1 || se[6]==1) && (se[11]==0 && se[12]==0 && se[13]==0)){
            // stopAll();
             //delay_ms(500);
             //do{
             rightHardTurn();
             //sensorRead();
            // value=bin_deci();
             //}while(!((value==56) || (value==48) || (value==24)));

       }
        else if((se[13]==1 || se[12]==1) && (se[5]==0 && se[6]==0 && se[7]==0)){
            /// stopAll();
            // delay_ms(500);
            // do{
                leftHardTurn();
               // sensorRead();
              //  value=bin_deci();
              // }while(!((value==56) || (value==48) || (value==24)));

       }
       else if ( (se[7]==1 || se[8]==1) && (se[12]==0 && se[13]==0)){
               rightTurn();
       }
       else if ((se[11]==1 || se[10] ==1) && (se[5]==0 && se[6]==0))  {
            leftTurn();
       }else if(se[13]==1 && se[12]==1){
          do{
            leftHardTurn();
            delay_ms(20);
            stopAll();
            delay_ms(20);
            sensorRead();
            count=count+1;
            if(count==10){
             stopAll();
             delay_ms(100);
             forward();
             delay_ms(100);
             count=0;
             break;
            }
          }while(!(se[11]==1 || se[10]==1||se[9]==1||se[8]==1));
       }else if(se[5]==1&& se[6]==1){
          do{
            rightHardTurn();
            delay_ms(20);
            stopAll();
            delay_ms(20);
            sensorRead();
            count_1=count_1+1;
            if(count_1==10){
             count_1=0;
             stopAll();
             delay_ms(100);
             forward();
             delay_ms(100);
             break;
            }
          }while(!(se[7]==1 || se[8]==1||se[9]==1 || se[10]==1));
       }




      /*else if((s1==1 && s2==1 && s3==1 && s4==1 && s5==0 && s6==0 && s7==0 && s8==0 && s9==0 && s10==0 && s11==0) || (s1==1 && s2==1 && s3==1 && s4==1 && s5==1 && s6==0 && s7==0 && s8==0 && s9==0 && s10==0 && s11==0) ){
            rightHardTurn();
       }

       else if((s1==1 && s2==1 && s3==1 && s4==1 && s5==1 && s6==1 && s7==0 && s8==0 && s9==0 && s10==0 && s11==0) || (s1==1 && s2==1 && s3==0 && s4==0 && s5==0 && s6==0 && s7==0 && s8==0 && s9==0 && s10==0 && s11==0) || (s1==1 && s2==0 && s3==0 && s4==0 && s5==0 && s6==0 && s7==0 && s8==0 && s9==0 && s10==0 && s11==0)){
            rightHardTurn();
       } */
       /*else if((s1==0 && s2==0 && s3==0 && s4==0 && s5==0 && s6==0 && s7==0 && s8==1 && s9==1 && s10==1 && s11==1) || (s1==0 && s2==0 && s3==0 && s4==0 && s5==0 && s6==0 && s7==1 && s8==1 && s9==1 && s10==1 && s11==1) || (s1==0 && s2==0 && s3==0 && s4==0 && s5==0 && s6==0 && s7==0 && s8==0 && s9==1 && s10==1 && s11==1) ){
            leftHardTurn();
       }

       else if((s1==0 && s2==0 && s3==0 && s4==0 && s5==0 && s6==0 && s7==0 && s8==0 && s9==0 && s10==1 && s11==1) || (s1==0 && s2==0 && s3==0 && s4==0 && s5==0 && s6==1 && s7==1 && s8==1 && s9==1 && s10==1 && s11==1)) {
             leftHardTurn();
       }*/


}

arrow_follow(){

do{
 forward();
 delay_ms(1000);
 stopAll();
 sensorRead();
 value=bin_deci();
}while(value==0);

while(1){
do{
 lineFollow();
}while(value!=0);
stopAll();
backward();
delay_ms(1000);
stopAll();
do{
lineFollow();
}while(value!=0);
stopAll();
do{
forward();
delay_ms(1000);
stopAll();
sensorRead();
value=bin_deci();
}while(value==0);

}

}

int pulseIn2(){
   counter2=0;
   while(1){
      counter2++;
      Delay_1us();
      if(PORTD.F6==1)break;
      if(counter2>60000)return -1;
}
 counter2=0;
   while(1){
      counter2++;
      Delay_1us();
      if(PORTD.F6==0)return 0;
      if(counter2>60000)return -1;
   }
}

int pulseIn3(){
   counter3=0;
   while(1){
      counter3++;
      Delay_1us();
      if(PORTC.F7==1)break;
      if(counter3>60000)return -1;
   }
   counter3=0;
   while(1){
      counter3++;
      Delay_1us();
      if(PORTC.F7==0)return 0;
      if(counter3>60000)return -1;
   }
}

int getDis2(){
     PORTB.F7=0;
     Delay_us(12);
     PORTB.F7=1;
     Delay_us(12);
     PORTB.F7=0;
     pulseIn2();
     Delay_ms(50);
     return 0;

}

int getDis3(){
     PORTB.F6=0;
     Delay_us(12);
     PORTB.F6=1;
     Delay_us(12);
     PORTB.F6=0;
     pulseIn3();
     Delay_ms(50);
     return 0;

}

void AllUltrasonicRead(){

   getDis2(); // left ultrasonic read
   WordToStr(counter2,to_LCD);
   LCD_Out(1, 11,to_LCD);

   getDis3(); // right ultrasonic read;
   WordToStr(counter3,to_LCD);
   LCD_Out(2, 6,to_LCD);
   Delay_us(1);



 }

void normalize(int left,int k){
int med;
if(k==0){
speedChangeObsF();
med=left;
WordToStr(med,to_LCD);
LCD_Out(1,1,to_LCD);
initEncoder();
do{
leftHardTurn();
delay_ms(20);
WordToStr(TMR0_value,to_LCD);
LCD_Out(2,1,to_LCD);

}while(TMR0_value<med);

speedChangeback();
}else if(k==1){

speedChangeObsF();
med=left;
WordToStr(med,to_LCD);
LCD_Out(1,1,to_LCD);
initEncoder();
do{
RightHardTurn();
delay_ms(20);
WordToStr(TMR0_value,to_LCD);
LCD_Out(2,1,to_LCD);

}while(TMR0_value<med);

speedChangeback();


}
}


void Obs_avoid(){
  int thv=200;
  int encorder_90=16;
  AllUltrasonicRead();
  if(counter3>=thv && counter2>=thv){
     forward();
     delay_ms(100);
     if(count_4==0){

      state3=0;
     }else{
      state3=1;
     }

  }else if(turn_state==0){
     if(turn_state_1==1){
      normalize(temp,1);
      turn_state_1=0;
      if(state3==0){
       turn_state=0;
       state3=1;
      }
      turn_state=1;
     }else{
      do{
       initEncoder();
       speedChangeObsF();
       RightHardTurn();
       delay_ms(20);
       stopAll();
       AllUltrasonicRead();
       }while((counter2<=thv || counter3<=thv) && TMR0_value<=encorder_90);
       //normalize(TMR0_value,TMR0_value);
       temp=TMR0_value;
       initEncoder();
       speedChangeback();
       turn_state_1=1;
       turn_state=1;

      }
      state3=0;

  }else if(turn_state==1){
     if(turn_state_1==1){
      normalize(temp,0);
      turn_state_1=0;
      if(state3==0){
       turn_state=1;
       state3=1;
      }
       turn_state=0;
     }else{
       do{
       initEncoder();
       speedChangeObsF();
       leftHardTurn();
       delay_ms(20);
       stopAll();
       AllUltrasonicRead();
       }while((counter2<=thv || counter3<=thv) && TMR0_value<=encorder_90);
       //normalize(TMR0_value,TMR0_value);
       temp=TMR0_value;
       speedChangeback();
       turn_state_1=1;
       turn_state=0;

     }
       state3=0;
  }


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

   //stopAll();
  //delay_ms(2000);
   while(1){
       // lineFollow();
        //obsAvoid();
       /*
        TMR1_value = (TMR1H << 8) + TMR1L;
        TMR1_value= TMR1_value>>3;
        TMR0_value= TMR0;
        if((TMR1_value+TMR0_value)/2>20){
          juncCap=0;
        }
        WordToStr(TMR0_value, to_LCD2);
        WordToStr(TMR1_value, to_LCD);
       // LCD_Out(2, 1, to_LCD);
       // LCD_Out(2, 9, to_LCD2);
      */
/*
   getDis1(); // left ultrasonic read;
   WordToStr(counter1,to_LCD);
   LCD_Out(1,1,to_LCD);

   getDis2(); // right ultrasonic read
   WordToStr(counter2,to_LCD);
   LCD_Out(1, 11,to_LCD);

   getDis3(); // left ultrasonic read;
   WordToStr(counter3,to_LCD);
   LCD_Out(2, 6,to_LCD);

   Delay_us(1);

  */
         Obs_avoid();
         lineFollow();

 /*  initEncoder();
   speedChangeObsF();
   RightHardTurn();
   delay_ms(500);
   //WordToStr(TMR0_value,to_LCD);
   ///LCD_Out(1,1,to_LCD);
   normalize(TMR0_value,TMR0_value);
   speedChangeback();
   stopAll();
   delay_ms(1000);
   */


   }

}
