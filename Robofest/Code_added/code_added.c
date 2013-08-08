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

int sw[2][9],adcVal =200,adcVal1 =90;
char text[14],to_LCD[6];
int totFront=0,totBack=0;
int i,j,k=0,tm1st=0,tm0st=0,TMR1_value=0,TMR0_value=0,rotationMode=0,clockEncoder=0;
int speed =230, speed1=200,speed2=225,speed3=215;
int value=0;
int count_4=0;
int turn_state=0;
int turn_state_1=0;
int state3=0;
int temp;


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
 leftT(){
  PORTC.F3=1;    //left motor backward
  PORTC.F6=1;
  PORTC.F4=1;    //Right motor forward
  PORTC.F5=0;
  PWM1_Set_Duty(180);
  PWM2_Set_Duty(180);

 }
RightTurn(){
  PORTC.F3=1;    //left motor forward
  PORTC.F6=1;
  PORTC.F4=0;    //Right motor stopped
  PORTC.F5=1;
  PWM1_Set_Duty(speed2);
  PWM2_Set_Duty(speed2);
}

rightT(){

  PORTC.F3=1;    //left motor forward
  PORTC.F6=1;
  PORTC.F4=0;    //Right motor stopped
  PORTC.F5=1;
  PWM1_Set_Duty(180);
  PWM2_Set_Duty(180);

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

sensorRead(){
    int i;
    totFront=0;
    totBack=0;
    if(ADC_Read(0)>adcVal){
       text[0]='1';
        sw[1][0]=1;
        totBack++;
     }else{
        text[0]='0';
        sw[1][0]=0;
     }
     if(ADC_Read(1)>adcVal){
        text[1]='1';
        sw[1][1]=1;
        totBack++;
     }else{
        text[1]='0';
        sw[1][1]=0;
     }
     if(ADC_Read(2)> adcVal){
        text[2]='1';
        sw[1][2]=1;
        totBack++;
     }else{
        text[2]='0';
        sw[1][2]=0;
     }
     if(ADC_Read(3)> adcVal){
        text[3]='1';
        sw[1][3]=1;
        totBack++;
     }else{
        text[3]='0';
        sw[1][3]=0;
     }

     if(ADC_Read(4)>adcVal){
        text[4]='1';
        sw[1][4]=1;
        totBack++;
     }else{
        text[4]='0';
        sw[1][4]=0;
     }
     if(ADC_Read(5)>adcVal1){
        text[5]='1';
        sw[0][0]=1;
        totFront++;
     }else{
        text[5]='0';
        sw[0][0]=0;
     }

     if(ADC_Read(6)>adcVal1){
        text[6]='1';
        sw[0][1]=1;
        totFront++;
     }else{
        text[6]='0';
        sw[0][1]=0;
     }
     if(ADC_Read(7)>adcVal1){
        text[7]='1';
        sw[0][2]=1;
        totFront++;
     }else{
        text[7]='0';
        sw[0][2]=0;
     }
     if(ADC_Read(8)>adcVal1){
        text[8]='1';
        sw[0][3]=1;
        totFront++;
     }else{
        text[8]='0';
        sw[0][3]=0;
     }
     if(ADC_Read(9)>adcVal1){
        text[9]='1';
        sw[0][4]=1;
        totFront++;
     }else{
        text[9]='0';
        sw[0][4]=0;
     }
     if(ADC_Read(10)>adcVal1){
        text[10]='1';
        sw[0][5]=1;
        totFront++;
     }else{
        text[10]='0';
        sw[0][5]=0;
     }
     if(ADC_Read(11)>adcVal1){
        text[11]='1';
        sw[0][6]=1;
        totFront++;
     }else{
        text[11]='0';
        sw[0][6]=0;
     }
     if(ADC_Read(12)>adcVal1){
        text[12]='1';
        sw[0][7]=1;
        totFront++;
     }else{
        text[12]='0';
        sw[0][7]=0;
     }
     if(ADC_Read(13)>adcVal1){
        text[13]='1';
        sw[0][8]=1;
        totFront++;
     }else{
        text[13]='0';
        sw[0][8]=0;
     }

}

int  bin_deci(){
      char val[6];
      int decimal_value=0;
      decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];
     // WordToStr(decimal_value,val);
     // LCD_Out(1,1,val);
      return decimal_value;

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
       else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){
            RightTurn();
        } else if((sw[0][4]==1 || sw[0][5]==1 || sw[0][3]==1)&& (sw[0][0]==1 && sw[0][1]==1)){
            rightHardTurn();
       }else if((sw[0][4]==1 || sw[0][5]==1 || sw[0][3]==1) && (sw[0][8]==1 && sw[0][7]==1)){
           leftHardTurn();
       }  else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){
             rightHardTurn();
       }
        else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){
            leftHardTurn();
       }
       else if ( (sw[0][2]==1 || sw[0][3]==1) && (sw[0][7]==0 && sw[0][8]==0)){
               rightTurn();
       }
       else if ((sw[0][6]==1 || sw[0][5] ==1) && (sw[0][0]==0 && sw[0][1]==0))  {
            leftTurn();
       }else if(sw[0][8]==1 && sw[0][7]==1){
          do{
            leftHardTurn();
            delay_ms(20);
            stopAll();
            //delay_ms(20);
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
          }while(!(sw[0][6]==1 || sw[0][5]==1||sw[0][4]==1||sw[0][3]==1));
       }else if(sw[0][0]==1&& sw[0][1]==1){
          do{
            rightHardTurn();
            delay_ms(20);
            stopAll();
            //delay_ms(20);
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
          }while(!(sw[0][2]==1 || sw[0][3]==1||sw[0][4]==1 || sw[0][5]==1));
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

void SemSmallFollow(){

   sensorRead();
   if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
        moveF();
   }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
        rotateLeft();
   }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
        moveF();
   }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==1&&sw[1][4]==1){
        rotateLeft();
   }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==1){
        rotateLeft();
   }else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
        //rotateLeft();
        moveF();
   }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
        //rotateLeft();
        rotateRight();
   }else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){
        //rotateLeft();
        moveF();
   }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
        rotateRight();
   }else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
        rotateRight();
   }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
        //rotateRight();
        moveF();
   }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
        moveF();
   }else{
        moveF();
   }

}

int tuneToMiddle(){
         sensorRead();
         if(totFront==0)  {
               moveF();
               return 0;
         }
          else if (sw[0][4]==0){
               if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
                       while(sw[0][4]==0){
                           sensorRead();
                           if(totFront==0){
                              moveF();
                           }else{
                              rotateRight();
                           }
                       }
               }
               else{
                       while(sw[0][4]==0){
                           sensorRead();
                           if(totFront==0){
                              moveF();
                           }else{
                              rotateLeft();
                           }
                       }
               }
               return 0;
          }
          else{
               return 1;
          }
  }

  void encoder(){
       if(PORTC.F0==1){
           tm1st= 0;

        }
        if(PORTC.F0==0&&tm1st==0){
           tm1st= 1;
           TMR1_value= TMR1_value+1;
           if(rotationMode==1){
              clockEncoder=clockEncoder+1;
           }else if(rotationMode==2){
              clockEncoder=clockEncoder-1;
           }
        }

        if(PORTA.F4==1){
           tm0st= 0;
        }
        if(PORTA.F4==0&&tm0st==0){
           tm0st= 1;
           TMR0_value= TMR0_value+1;
        }
  }

  void initEncoder(){
     TMR1_value=0;
     TMR0_value=0;
  }

  void printClockEncoders(){
            if(clockEncoder>=0){
               Lcd_Chr(2,7,'P');
               WordToStr(clockEncoder,to_LCD);
               LCD_Out(2, 10, to_LCD);
           }else if(clockEncoder<0){
               Lcd_Chr(2,7,'N');
               WordToStr(-clockEncoder,to_LCD);
               LCD_Out(2, 10, to_LCD);
           }

  }

  int val=0;
  int getFrontDecimal(){
      sensorRead();

      val=sw[0][0]+sw[0][1]*2+sw[0][2]*4+sw[0][3]*8+sw[0][4]*16+sw[0][5]*32+sw[0][6]*64+sw[0][7]*128+sw[0][8]*256;
      return val;
  }
  int getBackDecimal(){
      sensorRead();
      val=sw[1][0]+sw[1][1]*2+sw[1][2]*4+sw[1][3]*8+sw[1][4]*16;
      return val;
  }

  void goStraight(){
  //  PWM1_Set_Duty(180);
   // PWM2_Set_Duty(180);
//   TMR0_vlaue right encoder
//   TMR1_value left encoder
     int temp;
       moveF();
     if(TMR0_value>20 || TMR1_value>20){

         initEncoder();


     }
     if(TMR0_value>5&&TMR1_value>5){
             if(((TMR0_value*180)/TMR1_value)>255){
              PWM2_Set_Duty(255);
             }else{
              PWM2_Set_Duty((TMR0_value*180)/TMR1_value);
             }

             if(((TMR1_value*180)/TMR0_value)>255){
              PWM1_Set_Duty(255);
             }else{
              PWM1_Set_Duty((TMR1_value*180)/TMR0_value);
             }
    }

}

  void goStraight_1(){
     int left=0;
     int right=0;
     if(TMR0_value>150||TMR1_value>150){
           initEncoder();
     }
     moveF();

     if(TMR0_value>=TMR1_value){

         if(TMR0_value-TMR1_value>=5){
//                 stopAll();
  //                delay_ms(500);
                  do{
                   rightT();
                  }while(TMR0_value>=TMR1_value);
         }


     }else{
     
            if(TMR1_value-TMR0_value>=5){
   //               stopAll();
     //             delay_ms(500);
                  do{
                   leftT();
                  }while(TMR0_value<=TMR1_value);
         }

     
     

     }
     



  }


  void followArrow(){
     if(k==0){
          k=tuneToMiddle();
          if(k==1){
            stopAll();
            //Delay_ms(500);
          }
      } else if(k==1){
          sensorRead();
          if(totBack==0){
             moveF();
          }else{
             stopAll();
             //Delay_ms(500);
             k=2;

          }
      }else if(k==2){
          SemSmallFollow();
          if(totBack==0){
            k=3;
            stopAll();
            //Delay_ms(500);
            initEncoder();
          }
      }else if(k==3){
          moveB();
          if(TMR1_value>20){
             stopAll();
             k=4;
          }

      }else if(k==4){
         moveF();
         sensorRead();
         if(totBack>0){
            stopAll();
            k=5;
            initEncoder();
         }

      }else if(k==5){
         SemSmallFollow();
         if(TMR1_value>2){
            stopAll();
            k=6;

         }
      }else if(k==6){
          PWM1_Set_Duty(180);
          PWM2_Set_Duty(180);
         if(getFrontDecimal()>(getBackDecimal()<<2)){
            rotateLeft();
         }else if(getFrontDecimal()<(getBackDecimal()<<2)){
            rotateRight();
         }else{
            stopAll();
            k=7;
            initEncoder();
            PWM1_Set_Duty(180);
            PWM2_Set_Duty(180);
         }
      }else if(k==7){
         goStraight();
         sensorRead();
         if(totBack==0){
            stopAll();
            k=0;
         }

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

int counter1;
int pulseIn1(){
   counter1=0;
   while(1){
      counter1++;
      Delay_1us();
      if(PORTB.F6==1)break;
      if(counter1>6000)return -1;
   }
   counter1=0;
   while(1){
      counter1++;
      Delay_1us();
      if(PORTB.F6==0)return 0;
      if(counter1>6000)return -1;
   }

}
int counter2;
int pulseIn2(){
   counter2=0;
   while(1){
      counter2++;
      Delay_1us();
      if(PORTD.F6==1)break;
      if(counter2>6000)return -1;
   }
   counter2=0;
   while(1){
      counter2++;
      Delay_1us();
      if(PORTD.F6==0)return 0;
      if(counter2>6000)return -1;
   }
}

int counter3;
int pulseIn3(){
   counter3=0;
   while(1){
      counter3++;
      Delay_1us();
      if(PORTC.F7==1)break;
      if(counter3>6000)return -1;
   }
   counter3=0;
   while(1){
      counter3++;
      Delay_1us();
      if(PORTC.F7==0)return 0;
      if(counter3>6000)return -1;
   }
}

int dis1;
int getDis1(){
     PORTB.F7=0;
     Delay_us(12);
     PORTB.F7=1;
     Delay_us(12);
     PORTB.F7=0;
     dis1= pulseIn1();
     Delay_ms(50);
     return dis1/2;

}

int getDis2(){
     PORTB.F7=0;
     Delay_us(12);
     PORTB.F7=1;
     Delay_us(12);
     PORTB.F7=0;
     dis1= pulseIn2();
     Delay_ms(20);
     return dis1/2;

}

int getDis3(){
     PORTB.F6=0;
     Delay_us(12);
     PORTB.F6=1;
     Delay_us(12);
     PORTB.F6=0;
     dis1= pulseIn3();
     Delay_ms(20);
     return dis1/2;

}
void NidegL(){
     initEncoder();
     rotateLeft();
     while(1){
      if(TMR0_value>22){
          stopAll();
          initEncoder();
          break;
      }
      }
}

void NidegR(){
     initEncoder();
     rotateRight();
     while(1){
      if(TMR0_value>17){
          stopAll();
          initEncoder();
          break;
      }
      }
}

void moFEnc(int count){
     initEncoder();
     moveF();
     while(1){
      if(TMR0_value>count){
          stopAll();
          initEncoder();
          break;
      }
      }

}
int stat=0,pervenc=0,direction=0;

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
med=left;
WordToStr(med,to_LCD);
Lcd_Out(2,1,to_LCD);

//Lcd_Out(2,1,"NLize");
if(k==0){
speedChangeObsF();
med=left;
initEncoder();
do{
leftHardTurn();
delay_ms(50);
stopAll();
}while(TMR0_value<med);
speedChangeback();
}else if(k==1){

speedChangeObsF();
med=left;
initEncoder();
do{
RightHardTurn();
delay_ms(50);
stopAll();
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
       count_4=1;
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
      }else{
      turn_state=0;
      }
     }else{
       initEncoder();
       speedChangeObsF();
       do{
       RightHardTurn();
       delay_ms(50);
       stopAll();
       AllUltrasonicRead();
       WordToStr(TMR0_value,to_LCD);
       Lcd_Out(2,1,to_LCD);
       }while((counter2<=thv || counter3<=thv) && TMR0_value<=encorder_90);
       //normalize(TMR0_value,TMR0_value);
       temp=TMR0_value;
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
      }else{
       turn_state=1;
       }
     }else{
       initEncoder();
       speedChangeObsF();

       do{
       leftHardTurn();
       delay_ms(50);
       stopAll();
       AllUltrasonicRead();
       WordToStr(TMR0_value,to_LCD);
       Lcd_Out(2,1,to_LCD);
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

void avoidObstacles(){
     PWM1_Set_Duty(190);
     PWM2_Set_Duty(190);
     printClockEncoders();

     if(stat==0){
       getDis3();
       getDis2();
       if((counter2<200)||(counter3<200)){
          stopAll();
          PWM1_Set_Duty(185);
          PWM2_Set_Duty(185);
          while(clockEncoder!=0){
            if(clockEncoder>0){
               rotateRight();
            }else if(clockEncoder<0){
               rotateLeft();
            }
          }
          stopAll();
          Delay_ms(500);
          Lcd_Chr(2,5,'0');
          if(clockEncoder>=0){
           stat=1;
          }else{
           stat=2;
          }
          initEncoder();
       }else{
           moveF();
           Lcd_Chr(2,5,'B');
       }
     }else if(stat==1){
        PWM1_Set_Duty(185);
        PWM2_Set_Duty(185);
        Lcd_Chr(2,5,'1');
       rotateRight();
       //Delay_ms(50);
       //stopAll();
       getDis3();
       getDis2();




       if((counter2>300)&&(counter3>300)){
           stopAll();
           direction=1;
           stat=3;

       }
       if(TMR0_value>15){
          stat=2;
          initEncoder();
          while(TMR0_value<15){
              rotateLeft();
              printClockEncoders();
          }

          initEncoder();
          stopAll();
       }

     }else if(stat==2){
         PWM1_Set_Duty(185);
         PWM2_Set_Duty(185);
         Lcd_Chr(2,5,'2');
         rotateLeft();
         //Delay_ms(50);
         //stopAll();
         getDis3();
         getDis2();


         if((counter2>300)&&(counter3>300)){
           stopAll();
           direction=0;
           stat=3;
         }
         if(TMR0_value>15){
           stat=1;
           initEncoder();
           while(TMR0_value<15){
              rotateRight();
              printClockEncoders();
           }

           initEncoder();
          stopAll();
         }

     }else if(stat==3){
        Lcd_Chr(2,5,'3');
        stat=0;
     }


     WordToStr(counter3,to_LCD);
     LCD_Out(1, 1, to_LCD);

     WordToStr(counter2,to_LCD);
     LCD_Out(1, 10, to_LCD);




}

void main() {

  TRISD=0b11000000;
  TRISC=0b10000001;
  ADCON1=0x06; // Configure all input and output in to digital
  TRISA.F4=1;
  Lcd_init(); // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);
  init_timer();
  TRISB.F6=0;
  TRISB.F7=0;

  PWM1_Init(5000);
  PWM2_Init(5000);
  PWM1_Set_Duty(190);
  PWM2_Set_Duty(190);
  PWM1_Start();
  PWM2_Start();
  TRISA.F4=1;
  TRISC.F0=1;
  //CCP1CON = 0b01000011;
  PORTD.F7=1;
  TRISD.F7 = 1;
  initEncoder();
  //moveF();
  init_timer();

  while(1){
      /*
       WordToStr(TMR0_value,to_LCD);
       Lcd_Out(2,1,to_LCD);
       WordToStr(TMR1_value,to_LCD);
       Lcd_Out(1,1,to_LCD);
      */ // To Check the Encorders

      //SemSmallFollow();
      //sensorRead();
      //for(i=0;i<5;i++){
       // Lcd_Chr(1,i+1,text[i]);
      //}
      //for(i=5;i<14;i++){
       // Lcd_Chr(2,i-4,text[i]);
      //}

      //followArrow();
      //getDis1();
      //avoidObstacles();
      //followArrow();
     // lineFollow();
     //followArrow();
    // initEncoder();
     goStraight_1();
      //getDis3();
      //getDis2();

      //avoidObstacles();
      //Delay_us(1);

      //if(counter1<70||counter2<70){                                 //   stopAll();
      //}else{
       //   moveF();
      //}
      /*    moveF();

          PWM1_Set_Duty(255);
          PWM2_Set_Duty(255);
      if((counter2 < 500 || counter3 < 300)&&(counter2 > 300 || counter3 > 200)){
          PWM1_Set_Duty(180);
          PWM2_Set_Duty(180);
          WordToStr(counter3,to_LCD);
       LCD_Out(1, 1, to_LCD);
         Lcd_Chr(2,1,'A');

       WordToStr(counter2,to_LCD);
       LCD_Out(1, 12, to_LCD);

          }else if(counter2 < 300 || counter3 < 200){
           stopAll();
           PWM1_Set_Duty(190);
           PWM2_Set_Duty(190);
           Delay_ms(500);
           NidegL();
           Delay_ms(500);
           moFEnc(40);
           Delay_ms(500);
           NidegR();
           Delay_ms(500);
           PWM1_Set_Duty(255);
           PWM2_Set_Duty(255);
           WordToStr(counter3,to_LCD);
       LCD_Out(1, 1, to_LCD);
        Lcd_Chr(2,1,'B');

       WordToStr(counter2,to_LCD);
       LCD_Out(1, 12, to_LCD);

           //NidegR();

      } */

      Delay_us(100);




  }


}
