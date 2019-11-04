const int pingPin1 = 11; // Trigger Pin of Ultrasonic Sensor
const int echoPin1 = 12; // Echo Pin of Ultrasonic Sensor
const int pingPin2 = 8; // Trigger Pin of Ultrasonic Sensor
const int echoPin2 = 9; // Echo Pin of Ultrasonic Sensor
const int pingPin3 = 5; // Trigger Pin of Ultrasonic Sensor
const int echoPin3 = 6; // Echo Pin of Ultrasonic Sensor
int sensor = A0;
int ocm1=0,ocm2=0,d=0,ocm3=0,x1,x2,x3,ox5=0,x5=4,vald,val=0,cnt=0,x12=1,de=millis(),flg=0;
int t=0;
String abc;
void setup() {
  
   Serial.begin(9600); // Starting Serial Terminal
   pinMode(sensor, INPUT);
   vald=analogRead(sensor);
   Serial.print("<");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(",");
   Serial.print("0");
   Serial.print(">");
   
}
long microsecondsToCentimeters(long microseconds) {
   return microseconds / 29 / 2;
}
void loop() {
  long duration1,duration2,duration3;
   int cm1,cm2,cm3,y1=0,y2=0,y3=0;
   pinMode(pingPin1, OUTPUT);
   delayMicroseconds(5);
   digitalWrite(pingPin1, LOW);
   delayMicroseconds(5);
   digitalWrite(pingPin1, HIGH);
   delayMicroseconds(5);
   digitalWrite(pingPin1, LOW);
   pinMode(echoPin1, INPUT);
   duration1 = pulseIn(echoPin1, HIGH);
   cm1 = microsecondsToCentimeters(duration1);
   pinMode(pingPin2, OUTPUT);
   delayMicroseconds(5);
   digitalWrite(pingPin2, LOW);
   delayMicroseconds(5);
   digitalWrite(pingPin2, HIGH);
   delayMicroseconds(5);
   digitalWrite(pingPin2, LOW);
   pinMode(echoPin2, INPUT);
   duration2 = pulseIn(echoPin2, HIGH);
   cm2 = microsecondsToCentimeters(duration2);
   pinMode(pingPin3, OUTPUT);
   delayMicroseconds(5);
   digitalWrite(pingPin3, LOW);
   delayMicroseconds(5);
   digitalWrite(pingPin3, HIGH);
   delayMicroseconds(5);
   digitalWrite(pingPin3, LOW);
   pinMode(echoPin3, INPUT);
   duration3 = pulseIn(echoPin3, HIGH);
   cm3 = microsecondsToCentimeters(duration3);
   
   if(cm1>120)
    cm1=ocm1;
   if(cm2>120)
    cm2=ocm2;
   if(cm3>120)
    cm3=ocm3;
    x1=abs(cm1-ocm1);
    x2=abs(cm2-ocm2);
    x3=abs(cm3-ocm3);
    if((x1<120)&&(x1>25))
      y1=1;
    else
      y1=0;
    if((x2<120)&&(x2>25))
      y2=1;
    else
      y2=0;
    if((x3<120)&&(x3>25))
      y3=1;
    else
      y3=0;
  val = analogRead(sensor);
  //Serial.println(val);
  //de=millis();
  if((vald-val)>100&&x12==1)
  {// read sensor value
   
   //de=millis();
   x12=0;
   x5=5; 
  }
  else
  {
    x5=4;
  }
  
   if(((x1<120)&&(x1>25))||((x2<120)&&(x2>25))||((x3<120)&&(x3>25))||(x5!=ox5))
   {
   ocm1=cm1;
   ocm2=cm2;
   ocm3=cm3;
   ox5=x5;
   abc.concat("<");
   abc.concat(",");
   abc.concat(cm1);
   abc.concat(",");
   abc.concat(y1);
   abc.concat(",");
   abc.concat(cm2);
   abc.concat(",");
   abc.concat(y2);
   abc.concat(",");
   abc.concat(cm3);
   abc.concat(",");
   abc.concat(y3);
   abc.concat(",");
   abc.concat(x5);
   abc.concat(",");
   abc.concat(">");
   
   Serial.print(abc);
   Serial.println();
   abc="";
   /*
   
   Serial.print("<");
   Serial.print(",");
   Serial.print(cm1);
   Serial.print(",");
   Serial.print(y1);
   Serial.print(",");
   Serial.print(cm2);
   Serial.print(",");
   Serial.print(y2);
   Serial.print(",");
   Serial.print(cm3);
   Serial.print(",");
   Serial.print(y3);
   Serial.print(",");
   Serial.print(x5);
   Serial.print(">");*/
   }
}
