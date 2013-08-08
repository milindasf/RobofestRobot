#line 1 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
#line 16 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
int sw[2][9],adcVal =200,adcVal1 =60;
char text[14],to_LCD[6];
int totFront=0,totBack=0;
int i,j,k=0,tm1st=0,tm0st=0,TMR1_value=0,TMR0_value=0,rotationMode=0,clockEncoder=0;
int speed =230, speed1=200,speed2=225,speed3=205;
int value=0;
int mode=0;

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

void arrow_speed(){
speed =170;
speed1=170;
speed2=180;
speed3=180;
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

leftHardT(){
 PORTC.F3=0;
 PORTC.F6=1;
 PORTC.F4=1;
 PORTC.F5=0;
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
 turnNo=1;
 }

 else if((value==112) || (value==96)){
 leftSoftTurn();
 turnNo=2;
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


 LeftTurn();
 turnNo=3;

 }else if(((value==56) || (value==48) || (value==24)) && (sw[0][8]==1 && sw[0][7]==1)){


 leftHardTurn();
 turnNo=6;
 }else if(((value==56) || (value==48) || (value==24))&& (sw[0][0]==1 && sw[0][1]==1)){


 rightHardTurn();
 turnNo=5;

 }else if((sw[0][8]==1 || sw[0][7]==1) && (sw[0][0]==0 && sw[0][1]==0 && sw[0][2]==0)){



 leftHardTurn();
 turnNo=6;




 }else if((sw[0][0]==1 || sw[0][1]==1) && (sw[0][6]==0 && sw[0][7]==0 && sw[0][8]==0)){



 rightHardTurn();
 turnNo=5;




 }else {
 if(turnNo==1){

 RightTurn();
 }else if(turnNo==2){

 leftTurn();
 }else if(turnNo==3){
 LeftTurn();
 }else if(turnNo==4){
 leftTurn();
 }else if(turnNo==5){
 rightHardTurn();
 }else if(turnNo==6){
 leftHardTurn();
 }
#line 461 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
 }
#line 481 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
}

void SemSmallFollow(){
 sensorRead();
 if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){
 moveF();
 }else if(sw[1][0]==0&&sw[1][1]==0&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
 rotateLeft();
 }else if(sw[1][0]==0&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
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
 }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==0){

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
 }else if(sw[1][0]==1&&sw[1][1]==1&&sw[1][2]==1&&sw[1][3]==1&&sw[1][4]==1){
 rotateLeft();

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

 if(TMR0_value-TMR1_value>=3){
 do{
 rightT();
 }while(TMR0_value>=TMR1_value);
 }


 }else{

 if(TMR1_value-TMR0_value>=3){
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


 int midval=0,headfound=0;
 void followArrow(){
 if(k==0){
 k=tuneToMiddle();
 if(k==1){
 stopAll();
#line 693 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
 }
 } else if(k==1){
 sensorRead();
 if(totBack==0){
 moveF();
 }else{
 stopAll();

 k=2;

 }
 }else if(k==2){
 SemSmallFollow();
 if(totBack==0){
 k=3;
 stopAll();

 initEncoder();
 }
 }else if(k==3){
 moveB();
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);
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
 PWM1_Set_Duty(180);
 PWM2_Set_Duty(180);
 SemSmallFollow();
 if(TMR1_value>2){


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
#line 779 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
 }else if(k==7){
 goStraight();
 sensorRead();
 if(totFront==4){
 headfound=1;
 }
 if(totBack==0){
 stopAll();

 k=0;
 if(headfound==0){
 initEncoder();
 moveF();
 Delay_ms(500);
 while(TMR0_value<55){
 rotateLeft();
 }
 stopAll();
 }
 headfound=0;

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
void turnToPoint(int pt){
 PWM1_Set_Duty(185);
 PWM2_Set_Duty(185);
 if(getCompass()<pt){

 while(getCompass()<=pt){
 rotateLeft();
 }
 stopAll();
 Delay_ms(2000);
 initEncoder();
 while(getCompass()>=pt){
 rotateRight();
 }
 stopAll();
 Delay_ms(2000);
 compTemp= TMR0_value/2;
 initEncoder();
 while(TMR0_value<compTemp){
 rotateLeft();
 }
 stopAll();
 }else{
 while(getCompass()>=pt){
 rotateRight();
 }
 stopAll();
 Delay_ms(2000);
 initEncoder();
 while(getCompass()<=pt){
 rotateLeft();
 }
 stopAll();
 Delay_ms(2000);
 compTemp= TMR0_value/2;
 initEncoder();
 while(TMR0_value<compTemp){
 rotateRight();
 }
 stopAll();

 }
 stopAll();
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);
}

int convert(int x_high,int x_low){
 long number;
 if(x_high>=127){
 number=(x_high<<8)+x_low;
 number=number-1;
 number=~(number);
#line 1006 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
 number=(-1)*number;
 return number;
 }else{
 number=(x_high<<8)+x_low;
 return number;
 }

}

char x_h,x_l,z_h,z_l,y_h,y_l;
double angle=0;
long X_Value;
long Y_Value;
void Read_Compass(){
 I2C1_Start();
 I2C1_Wr(0x3C);
 I2C1_Wr(0x02);
 I2C1_Wr(0x00);
 I2C1_Stop();

 I2C1_Start();
 Delay_ms(15);
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
 z_l=I2c1_Rd(0) ;
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
 y_h=I2c1_Rd(0) ;
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
 y_l=I2c1_Rd(0) ;
 }
 I2C1_Stop();

 X_Value=convert(x_h,x_l);
 Y_Value=convert(y_h,y_l);

 if(X_Value>=0 && Y_Value>=0){

 angle=atan((((double)Y_Value/(double)X_Value)));
 angle=angle*((180)/(3.14159265));

 }else if(X_Value<0 && Y_Value>=0){


 angle=atan((((double)Y_Value/((double)(-1)*X_Value))));
 angle=angle*((180)/(3.14159265));
 angle=180-angle;



 }else if(X_Value<0 && Y_Value<0){

 angle=atan((((double)Y_Value/(double)X_Value)));
 angle=angle*((180)/(3.14159265));
 angle=angle+180;



 }else if(X_Value>=0 && Y_Value<0){

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


int stat=0,pervenc=0,direction=0,normalization=0,noDirection=0;
void avoidObstacles(){
 PWM1_Set_Duty(190);
 PWM2_Set_Duty(190);
 printClockEncoders();

 if(stat==0){
 getDis3();
 getDis2();
 if((counter2<200)||(counter3<200)||TMR0_value>50){
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


 if(direction==0){
 stat=1;
 }else{
 stat=2;
 }
 initEncoder();
 }else{
 moveF();


 }
 }else if(stat==1){
 PWM1_Set_Duty(185);
 PWM2_Set_Duty(185);

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
 PWM1_Set_Duty(185);
 PWM2_Set_Duty(185);

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
 turnToPoint(4);
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
 turnToPoint(4);
 clockEncoder=0;
 normalization=0;
 initEncoder();
 stat=0;
 }

 }
#line 1310 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
}

int fdirection;
int initialDirection=0;
cal_front(){
 Read_Compass();
 initialDirection=angle;
 fdirection = angle;
#line 1324 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
}

int newAngle;
int straight(){

 Read_Compass();
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
 int stat2 =0,mem=0;
 void avoidObstacles2(){
 if(stat2==0){
 moveF();
 getDis2();
 getDis3();
 if(counter2<250||counter3<250){
 stopAll();
 stat2=11;

 }

 }else if(stat2==11){

 straight();


 }
 else if(stat2==1){
 getDis2();
 getDis3();
 if(mem==0){

 rotateLeft();
 if(counter2>300&&counter3>300){
 stopAll();
 stat2=2;
 mem=1;
 stat2=0;
 }
 }else{
 rotateRight();
 if(counter2>350&&counter3>350){
 stopAll();
 stat2=2;
 mem=0;
 stat2=0;
 }

 }
 }
 }
#line 1483 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
void turnToMiddle(int ang){
 int dif,duty;
 Read_Compass();
 dif=angle-ang;

 while(1){
 Read_Compass();
 dif=angle-ang;
 if(dif<0){
 dif=dif*(-1);
 }
 duty=180+(dif*50)/360;
 leftHardT();
 PWM1_Set_Duty(duty);
 PWM2_Set_Duty(duty);
 if(dif>=0 && dif<=40){
 break;
 }





 }

 stopAll();
 delay_ms(1000);

}


int totCounter=0;

int afound=0;
void AF(){
 arrow_speed();

 if(afound==0){
 lineFollow();
 if(sw[1][1]==1 || sw[1][2]==1 || sw[1][3]==1){
 afound=1;
 }
 }
 if(afound==1){
 stopAll();
 delay_ms(1000);
 do{
 semSmallFollow();
 }while(sw[0][4]!=0);
 backward();
 delay_ms(600);
 afound=0;
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
 PWM1_Set_Duty(230);
 PWM2_Set_Duty(230);
 PWM1_Start();
 PWM2_Start();
 TRISA.F4=1;
 TRISC.F0=1;

 PORTD.F7=1;
 TRISD.F7 = 1;
 TRISD.F0=1;
 TRISD.F1=1;
 TRISD.F2=1;
 TRISC.F3=0;
 TRISC.F4=0;
 TRISC.F5=0;
 TRISC.F6=0;
 TRISD.F3=1;
 TRISD.F4=1;
 initEncoder();




 mediumSpeed();

 while(1){
#line 1638 "D:/Milinda/Robofest/Final_Code_3/final_code_3.c"
 straight_com();
 Delay_us(100);






 }


}
