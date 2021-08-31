import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup()
{
  size(300,300);
  arduino=new Arduino(this,Arduino.list()[0],57600);
}

void draw()
{
int y=arduino.analogRead(5);
System.out.println(y);
background(10-y/23,170-(17*y)/23,200-(20*y)/23);
fill(230,170,170);
arc(150, 100, 200, 200, PI, TWO_PI);
fill(255,0,0);
triangle(150,65+(25*y)/230,140,90,160,90);
fill(255,255,255);
arc(120, 30, 20,50, 0,PI);
arc(180,30,20,50,0,PI);
fill(0,0,0);
arc(120,30,10,30,0,PI);
arc(180,30,10,30,0,PI);
fill(250,100,100);
ellipse(120,65,30,10);
ellipse(180,65,30,10);
fill(230,170,170);
rect(75,100,5,y+100);
rect(100,100,5,y+100);
rect(125,100,5,y+100);
rect(150,100,5,y+100);
rect(175,100,5,y+100);
rect(200,100,5,y+100);
rect(225,100,5,y+100);
arc(65,100,25,25,0,PI);
arc(90,100,25,25,0,PI);
arc(115,100,25,25,0,PI);
arc(140,100,25,25,0,PI);
arc(165,100,25,25,0,PI);
arc(190,100,25,25,0,PI);
arc(215,100,25,25,0,PI);
arc(240,100,22.5,25,0,PI);
}
