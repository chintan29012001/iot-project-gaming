import processing.sound.*;
SoundFile file;


import processing.serial.*;
Serial myPort;


String y1="";
int[] x1= new int[10];
int[] x0= new int[10];


int go=0; //go= game over
int score=0;
int xPos=14001;
int ml=10;
int ll=10;
int rl=10;
int m=0;
int l=0;
int r=0;
int sc=0;//sc=speedcounter
//543
//612
int mo=1;
//m=mode nummber
float angY =0;
int x=0;
float angX =0;
int y=0;
int n=0;
int p=0;

public void settings() {
  size(1000, 1000, "processing.opengl.PGraphics3D");
}

void setup()
{
  smooth();
  background(0);
  noStroke();
  fill(0,255,0);
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  file=new SoundFile(this, "GameOver.mp3");
  frameRate(300 + n*100);
  for(int i=0;i<8;i++)
  {
    x0[i]=0;
    x1[i]=0;
  }
}
int a=0;
 

void draw()
{// if(xPos>sc+200 || ((sc>=800)&&(xPos+1000>sc+200)) )
   //{fr();
   //sc=0;}
if (p==1)
{
xPos=xPos-1;}
  
  background(0,0,0);
  
  if(xPos>1000)
 { //ML= MID LENGTH    LL= LEFT LENGTH     RL=RIGHT LENGTH     M=MID    L=LEFT    R=RIGHT
  ml = int(random(300,500)); 
   ll = int(random(300,500));
   rl = int(random(300,500));
   m=int(random(2.2));
   l=int(random(2.2));
   r=int(random(2.2));
   
  xPos=0;} 
  
if (mo==3||mo==4||mo==5)
{
  if(mo==3)
  { if ((xPos - int(rl/2))<150||xPos +int(rl/2) >1200)
  {angX=angX - PI/16;  y=y-250;
   if(mo==3){mo=2;}
     if(mo==4){mo=1;}
       if(mo==5){mo=6;}
  }
    
  }
  if(mo==4)
  {if ((xPos - int(ml/2))<150||xPos +int(ml/2) >1200)
  {angX=angX - PI/16;  y=y-250;
   if(mo==3){mo=2;}
     if(mo==4){mo=1;}
       if(mo==5){mo=6;}
  }
    
  }
  if(mo==5)
  {if ((xPos - int(ll/2))<150||xPos +int(ll/2) >1200)
  {angX=angX - PI/16;  y=y-250;
   if(mo==3){mo=2;}
     if(mo==4){mo=1;}
       if(mo==5){mo=6;}
  }
    
  }
  
  
  
  
}
/*
l=1;
m=0;
r=1;
rl=800;
ll=800;
*/


  background(0);
  
  if(go==1)
  { if(mo==1 || mo==2||mo==6){
    noLoop();
    background(150);
    file=new SoundFile(this, "GameOver.mp3");
    file.play();
    print(score);
  print("game over");
    textSize(40);
  fill(139, 69, 19);
  text("GAME OVER", 400, 400); 
  fill(45,34,145);
  text("Score:",400,500);
    fill(45,34,145);
  text(score,600,500);
  
  delay(5000); 
  }  
}
 
 if(go==0)
 {
 translate(250 + x, 500+y, xPos); //Translating to the centre of the sketch
//fill(0,0,200);
 //box(70,10,1000); 
rotateX(0); //rotate so that...
rotateY(-PI/16 + angY);//... it will be easy to see the boxstroke(0, 100, 255); //change the edges' colour
rotateX(0+ angX);
fill(0, 0, 255); //fill the `box` in a blue colour
if(l>0) {
box(70,70,ll); //draw a cube  
}

 translate(125,100,0);
  rotateY(PI/32);
  rotateX(-PI/16);
  
  
  fill(162,82,45);  //sienna
  box(20,5,1000);
  fill(139,69,19);  // saddlebrown
  box(30,7,55);
  translate(0,0,-200);
  fill(139,69,19);
  box(30,7,55);
  translate(0,0,-200);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
  translate(0,0,600);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
    translate(0,0,200);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
    translate(0,0,-400);

   translate(-125,-100,0);
  rotateY(-PI/32);
  rotateX(PI/16);

  

translate(250, 0  , 0); //Translating to the centre of the sketch
rotateX(0); //rotate so that...
rotateY(PI/16); //... it will be easy to see the boxstroke(0, 100, 255); //change the edges' colour
fill(255, 0, 0); //fill the `box` in a blue colour
if(m>0) {
box(70,70,ml); //draw a cube 
}


 translate(125,100,-50);
  rotateY(PI/32);
  rotateX(-PI/16);
  
  
  fill(162,82,45);  //sienna
  box(20,5,1000);
  fill(139,69,19);  // saddlebrown
  box(30,7,55);
  translate(0,0,-200);
  fill(139,69,19);
  box(30,7,55);
  translate(0,0,-200);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
  translate(0,0,600);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
    translate(0,0,200);
  fill(139,69,19);  //saddlebrown
  box(30,7,55);
    translate(0,0,-400);

   translate(-125,-100,0);
  rotateY(-PI/32);
  rotateX(PI/16);


  
  
  
 translate(250, 0 , 0); //Translating to the centre of the sketch
rotateX(0); //rotate so that...
rotateY(PI/16); //... it will be easy to see the boxstroke(0, 100, 255); //change the edges' colour
fill(0, 0, 255); //fill the `box` in a blue colour
if(r>0) {
box(70,70,rl); //draw a cube


if(mo==6)
{
  if ((xPos - int(ll/2))>350   && ! (xPos + int(ll/2)>1200) && (l>0))
  { go=1;
  print(score);
  score=score-1;
  xPos=xPos-1;
  
  
 
}
}
if(mo==1)
{ 
  if ((xPos - int(ml/2))>350   && ! (xPos + int(ml/2)>1200) && (m>0))
  { go=1;
  print(score);
  score=score-1;
  xPos=xPos-1;

}
}
if(mo==2)
{
  if ((xPos - int(rl/2))>350 && ! (xPos + int(rl/2)>1200) && (r>0))
  { go=1;
  print(score);
  score=score-1;
  xPos=xPos-1;
   
  }
}
}
score=score+1;
  xPos=xPos+1;
 }

}


 
 
 
 
 
 
 void keyPressed() { if(go==0){
  if (key == CODED) { 
    if (keyCode == RIGHT) {
  if(mo!=2 && mo!=3){
if(mo==1 && !((xPos - int(rl/2))>400 || (xPos + int(rl/2)<1200)) || mo==1 && r==0){mo=2;angY=angY -PI/16;  x=x-250;}
else if(mo==4){mo=3;angY=angY -PI/16;  x=x-250;}
else if(mo==5){mo=4;angY=angY -PI/16;  x=x-250;}
else if(mo==6 && !((xPos - int(ml/2))>400 || (xPos + int(ml/2)<1200)) || mo==6 && m==0){mo=1;angY=angY -PI/16;  x=x-250;}
}}
    if (keyCode == LEFT){
      if(mo!=5 && mo!=6)
  {
if(mo==1 && ! ((xPos - int(ll/2))>400 ||(xPos + int(ll/2)<1200)) || mo==1 && l==0){mo=6;angY=angY + PI/16;  x=x+250;}
else if(mo==2 && !((xPos - int(ml/2))>400 || (xPos + int(ml/2)<1200)) || mo==2  && m==0){mo=1;angY=angY + PI/16;  x=x+250;}
else if(mo==3){mo=4;angY=angY + PI/16;  x=x+250;}
else if(mo==4){mo=5;angY=angY + PI/16;  x=x+250;}
}}
    if (keyCode == UP) {
      if(mo==1 || mo==2 || mo==6)
  {
  if(mo==1 && m>0  && !((xPos - int(ml/2))>400 && ! (xPos + int(ml/2)>1200))){mo=4;angX=angX + PI/16;  y=y+250;}
   else  if(mo==2 && r>0  && !((xPos - int(rl/2))>400 && ! (xPos + int(rl/2)>1200))){mo=3;angX=angX + PI/16;  y=y+250;}
   else    if(mo==6 && l>0  && !((xPos - int(ll/2))>400 && ! (xPos + int(ll/2)>1200))){mo=5;angX=angX + PI/16;  y=y+250;}
}}
    
  }

// get the value of the key pressed
  n = int(key);  // int('0') = 48
  n = n - 48;
  if(n >= 0 && n <= 7){
    sc=xPos;
    println("Valid digit: " + n);
   if(n>4){ frameRate(175);}
   if(n<=4){ frameRate(300);}
  }
  if (n==8)
  {
    p=1;
  }
 if (n==9)
 {p=0;
 }
 }
  



}


void serialEvent (Serial myPort) {
  // get te byte:
  String a;
  a =myPort.readStringUntil('\n');

  if(a!=null)
  {
    print(a);
    for(int i=0;i<8;i++)
     {
     x0[i]=x1[i];
     }
     x1=int(split(a,","));
     printArray(x1);    
          motion();
          y1="";
   
  }  
 }
   
   



void motion()
{
  if ((x0[2]==1&&x1[4]==1)||(x0[4]==1&&x1[6]==1)) 
   {
   if(mo!=2 && mo!=3){
if(mo==1 && !((xPos - int(rl/2))>400 || (xPos + int(rl/2)<1200)) || mo==1 && r==0){mo=2;angY=angY -PI/16;  x=x-250;}
else if(mo==4){mo=3;angY=angY -PI/16;  x=x-250;}
else if(mo==5){mo=4;angY=angY -PI/16;  x=x-250;}
else if(mo==6 && !((xPos - int(ml/2))>400 || (xPos + int(ml/2)<1200)) || mo==6 && m==0){mo=1;angY=angY -PI/16;  x=x-250;}
}
   }
  if ((x0[4]==1&&x1[2]==1)||(x0[6]==1&&x1[4]==1)){
  if(mo!=5 && mo!=6)
  {
if(mo==1 && ! ((xPos - int(ll/2))>400 ||(xPos + int(ll/2)<1200)) || mo==1 && l==0){mo=6;angY=angY + PI/16;  x=x+250;}
else if(mo==2 && !((xPos - int(ml/2))>400 || (xPos + int(ml/2)<1200)) || mo==2  && m==0){mo=1;angY=angY + PI/16;  x=x+250;}
else if(mo==3){mo=4;angY=angY + PI/16;  x=x+250;}
else if(mo==4){mo=5;angY=angY + PI/16;  x=x+250;}
}  
  }
if (((x0[2]==1)&&(x1[1]-x0[1]>0)&&(x1[2]==1))||((x0[4]==1)&&((x1[3]-x0[3]>0))&&(x1[4]==1))||((x0[6]==1)&&((x1[5]-x0[5]>0))&&(x1[6]==1))) 
{
if(mo==1 || mo==2 || mo==6)
  {
  if(mo==1 && m>0  && !((xPos - int(ml/2))>400 && ! (xPos + int(ml/2)>1200))){mo=4;angX=angX + PI/16;  y=y+250;}
   else  if(mo==2 && r>0  && !((xPos - int(rl/2))>400 && ! (xPos + int(rl/2)>1200))){mo=3;angX=angX + PI/16;  y=y+250;}
   else    if(mo==6 && l>0  && !((xPos - int(ll/2))>400 && ! (xPos + int(ll/2)>1200))){mo=5;angX=angX + PI/16;  y=y+250;}
}
  
}
 if(x1[7]>4){print(score); score=score*2; print(score);} 
 //frameRate(175);}
   //if(x1[7]<=4)
     //print(x1[7]);//frameRate(300);}
  
 


     
}
