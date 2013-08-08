#line 1 "D:/Milinda/Robofest/PID/pid.c"
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




void main(){



}
