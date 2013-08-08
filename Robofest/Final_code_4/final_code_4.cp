#line 1 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
#line 16 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
int sw[2][9],adcVal =200,adcVal1 =60;
char text[14],to_LCD[6];
int totFront=0,totBack=0;
int i,j,k=0,tm1st=0,tm0st=0,TMR1_value=0,TMR0_value=0,rotationMode=0,clockEncoder=0;
int speed =255, speed1=225,speed2=250,speed3=230;
int value=0;
int mode=0;
int mode_state=0;
int mode_change=0;
int angle;
void fullSpeed(){

speed =255;
speed1=235;
speed2=250;
speed3=230;



}
void mediumSpeed(){
speed =230;
speed1=200;
speed2=225;
speed3=205;
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
 PORTC.F3=0;
 PORTC.F6=1;
 PORTC.F4=1;
 PORTC.F5=0;
 PWM1_Set_Duty(speed1);
 PWM2_Set_Duty(speed1);
}

RightHardTurn(){
 PORTC.F3=1;
 PORTC.F6=0;
 PORTC.F4=0;
 PORTC.F5=1;
 PWM1_Set_Duty(speed1);
 PWM2_Set_Duty(speed1);
}

leftTurn(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=1;
 PORTC.F5=0;
 PWM1_Set_Duty(speed2);
 PWM2_Set_Duty(speed2);
}

RightTurn(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=0;
 PORTC.F5=1;
 PWM1_Set_Duty(speed2);
 PWM2_Set_Duty(speed2);
}

leftSoftTurn(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=0;
 PORTC.F5=0;
 PWM1_Set_Duty(speed2);
 PWM2_Set_Duty(speed1);

}

rightSoftTurn(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=0;
 PORTC.F5=0;
 PWM1_Set_Duty(speed1);
 PWM2_Set_Duty(speed2);
}

stopAll(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=1;
 PORTC.F5=1;
}

 leftT(){
 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=1;
 PORTC.F5=0;
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);

 }

rightT(){

 PORTC.F3=1;
 PORTC.F6=1;
 PORTC.F4=0;
 PORTC.F5=1;
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);

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

void printToLcd(){
int i=0;
for(i=0;i<9;i++){



}


}

int bin_deci(){
 char val[6];
 int decimal_value=0;
 decimal_value=sw[0][0]+2*sw[0][1]+4*sw[0][2]+8*sw[0][3]+16*sw[0][4]+32*sw[0][5]+64*sw[0][6]+128*sw[0][7]+256*sw[0][8];


 return decimal_value;

}
 int turnNo=0;
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
 turnNo=3;
 }
 else if((value==224) || (value==192)){
 leftTurn();
 turnNo=4;
 }
 else if((value==7) || (value==3) || (value==1)){
 rightHardTurn();
 turnNo=5;
 }
 else if((value==448) || (value==384) || (value==256)){
 leftHardTurn();
 turnNo=6;
 }
 else if((sw[0][0]==1 || sw[0][1]==1 || sw[0][2]==1) && (sw[0][6]==1 || sw[0][7]==1 || sw[0][8]==1)){


 leftTurn();
 turnNo=4;

 }else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){



 leftHardTurn();
 turnNo=6;




 }else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){



 rightHardTurn();
 turnNo=5;




 }else if(((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)) && (sw[0][8]==1 && sw[0][7]==1)){


 leftHardTurn();
 turnNo=6;
 }else if((sw[0][3]==1 || sw[0][4]==1 || sw[0][5]==1)&& (sw[0][0]==1 && sw[0][1]==1)){


 rightHardTurn();
 turnNo=5;

 }else if(value==511){
 forward();
 delay_ms(200);
 stopAll();

 }else {
 if(turnNo==1){

 RightTurn();
 }else if(turnNo==2){

 leftTurn();
 }else if(turnNo==3){
 RightTurn();
 }else if(turnNo==4){
 leftTurn();
 }else if(turnNo==5){
 rightHardTurn();
 }else if(turnNo==6){
 leftHardTurn();
 }
#line 454 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
 }
#line 474 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
}

int newAngle;
int initialDirection=63;

int straight(){



 initialDirection=63;
 newAngle= 180-initialDirection+angle;
 if(newAngle<0){
 newAngle= newAngle+360;
 }else if(newAngle>360){
 newAngle= newAngle-360;
 }
 if(newAngle<170&& newAngle>0){
 rotateRight();
 }else if(newAngle>190&& newAngle<360){
 rotateLeft();
 }else{
 stopAll();


 }

}

void straight_com(){

PWM1_Set_Duty(180);
PWM2_Set_Duty(180);


if(PORTD.F3==1 && PORTD.F4==1){
 stopAll();
 delay_ms(500);
}else if(PORTD.F4==1 && PORTD.F3==0){
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);
 rotateRight();
}else if(PORTD.F4==0 && PORTD.F3==1){
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);
 rotateLeft();
}


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

 moveF();
 }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){

 rotateRight();
 }else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==0&&sw[1][4]==0){

 moveF();
 }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
 rotateRight();
 }else if(sw[1][0]==1&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
 rotateRight();
 }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){

 moveF();
 }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==0&&sw[1][3]==0&&sw[1][4]==0){
 moveF();
 }else{
 moveF();
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

void goStraight(){

 int left=0;
 int right=0;
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);
 if(TMR0_value>150||TMR1_value>150){
 initEncoder();
 }
 moveF();

 if(TMR0_value>=TMR1_value){

 if(TMR0_value-TMR1_value>=5){
 do{
 rightT();
 }while(TMR0_value>=TMR1_value);
 }


 }else{

 if(TMR1_value-TMR0_value>=5){
 do{
 leftT();
 }while(TMR0_value<=TMR1_value);
 }
 }
 }

 long distCounter;
 void goStraight2(){
 moveF();
 if(TMR0_value>150||TMR1_value>150){
 initEncoder();

 }
 if(TMR0_value>20&&TMR1_value>20){
 distCounter= (TMR0_value*200);
 distCounter = distCounter/TMR1_value;
 if(distCounter>255){
 PWM2_Set_Duty(255);
 }else{
 PWM2_Set_Duty(distCounter);
 }

 distCounter = (TMR1_value*200);
 distCounter = distCounter/TMR0_value;
 if(distCounter>255){
 PWM1_Set_Duty(255);
 }else{
 PWM1_Set_Duty(distCounter);
 }
 }

}

 int tuneToMiddle(){
 sensorRead();
 if(totFront==0) {

 goStraight();
 return 0;
 }
 else if (sw[0][4]==0){
 if(sw[0][0]==1 || sw[0][1]==1||sw[0][2]==1||sw[0][3]==1){
 while(sw[0][4]==0){
 sensorRead();
 if(totFront==0){

 goStraight();
 }else{
 rotateRight();
 }
 }
 }
 else{
 while(sw[0][4]==0){
 sensorRead();
 if(totFront==0){

 goStraight();
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


 void printClockEncoders(){
 if(clockEncoder>=0){



 }else if(clockEncoder<0){



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



 void followArrow(){
 if(k==0){
 k=tuneToMiddle();
 if(k==1){
 stopAll();
 Delay_ms(500);
#line 726 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
 }
 } else if(k==1){
 sensorRead();
 if(totBack==0){
 moveF();
 }else{
 stopAll();
 Delay_ms(500);
 k=2;

 }
 }else if(k==2){
 SemSmallFollow();
 if(totBack==0){
 k=3;
 stopAll();
 Delay_ms(500);
 initEncoder();
 }
 }else if(k==3){
 moveB();
 if(TMR1_value>20){


 k=4;
 }

 }else if(k==4){
 moveF();
 sensorRead();
 if(totBack>0){


 k=5;
 initEncoder();
 }

 }else if(k==5){
 PWM1_Set_Duty(170);
 PWM2_Set_Duty(170);
 SemSmallFollow();
 if(TMR1_value>2){


 k=6;

 }
 }else if(k==6){
 PWM1_Set_Duty(170);
 PWM2_Set_Duty(170);
 if(getFrontDecimal()>(getBackDecimal()<<2)){
 rotateLeft();
 }else if(getFrontDecimal()<(getBackDecimal()<<2)){
 rotateRight();
 }else{
 stopAll();
 Delay_ms(500);
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
 Delay_ms(2000);
 k=0;

 }

 }
 }

 void interrupt(){
 if(INTCON.TMR0IF){
 encoder();
 INTCON.TMR0IF = 0;
 }


}


void init_timer(){
 OPTION_REG = 0b10000101;
 INTCON = 0b10100000;
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

int getCompass(){
 return (PORTD.F0*4+PORTD.F1*2+PORTD.F2);
}
int compTemp;
#line 995 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
int stat=0,pervenc=0,direction=0,normalization=0,noDirection=0;
void avoidObstacles(){
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);
 printClockEncoders();

 if(stat==0){
 getDis3();
 getDis2();
 if((counter2<200)||(counter3<200)){
 stopAll();
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);
 normalization++;
 while(clockEncoder!=0){
 if(clockEncoder>0){
 rotateRight();
 }else if(clockEncoder<0){
 rotateLeft();
 }
 }
 stopAll();
 Delay_ms(500);

 if(getCompass()>=4){
 stat=1;
 }else{
 stat=2;
 }
 initEncoder();
 }else{

 goStraight();

 }
 }else if(stat==1){
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);

 rotateRight();


 getDis3();
 getDis2();




 if((counter2>300)&&(counter3>300)){
 stopAll();
 direction=1;
 stat=3;
 noDirection=0;

 }
 if(TMR0_value>15&&stat!=3){
 noDirection++;
 if(noDirection>2){
 stat=4;
 }else{
 stat=2;
 }
 initEncoder();
 stopAll();
 Delay_ms(500);
 while(TMR0_value<15){
 rotateLeft();
 printClockEncoders();
 }
 stopAll();
 Delay_ms(500);

 initEncoder();
 stopAll();
 }

 }else if(stat==2){
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);

 rotateLeft();


 getDis3();
 getDis2();


 if((counter2>300)&&(counter3>300)){
 stopAll();
 direction=0;
 stat=3;
 noDirection=0;
 }
 if(TMR0_value>15&&stat!=3){
 noDirection++;
 if(noDirection>2){
 stat=4;
 }else{
 stat=1;
 }
 initEncoder();
 stopAll();
 Delay_ms(500);
 while(TMR0_value<15){
 rotateRight();
 printClockEncoders();
 }

 initEncoder();
 stopAll();
 Delay_ms(500);
 }

 }else if(stat==3){

 if(normalization>4){
 stopAll();
 straight_com();
 clockEncoder=0;
 normalization=0;
 }
 stat=0;
 }else if(stat==4){
 rotateLeft();
 getDis3();
 getDis2();

 if((counter2>300)&&(counter3>300)){
 stopAll();
 stat=5;
 initEncoder();
 }
 }else if(stat==5){
 goStraight();
 getDis3();
 getDis2();

 if((counter2<200)||(counter2<200)||(TMR0_value>60)){
 stopAll();

 straight_com();
 clockEncoder=0;
 normalization=0;
 stat=0;
 }

 }
#line 1152 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
}


int totCounter=0;
void main() {
 TRISD=0b11000000;
 TRISC=0b10000001;
 ADCON1=0x06;
 TRISA.F4=1;



 init_timer();
 TRISB.F6=0;
 TRISB.F7=0;

 PWM1_Init(5000);
 PWM2_Init(5000);
 PWM1_Set_Duty(200);
 PWM2_Set_Duty(200);
 PWM1_Start();
 PWM2_Start();
 TRISA.F4=1;
 TRISC.F0=1;

 PORTD.F7=1;
 TRISD.F7 = 1;
 TRISD.F0=1;
 TRISD.F1=1;
 TRISD.F2=1;
 initEncoder();
 do{
 moveF();
 sensorRead();
 value=bin_deci();
 }while(value==0);
 fullSpeed();
 while(1){
#line 1206 "D:/Milinda/Robofest/Final_code_4/final_code_4.c"
 avoidObstacles();

 Delay_us(100);




 }


}
