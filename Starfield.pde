Particle[] dots = new Particle[1000];
void setup(){
  size(1000, 1000);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Particle();
  }
  dots[0] = new OddBall();
}
void draw(){
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots[i].show();
    dots[i].move();
  }
}
class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle(){
    myX = myY = 500;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){
    fill(myColor);
    noStroke();
    myX+=Math.random()*3.2313;
    myY+=Math.random()*3.2313;
    mySpeed = Math.random()*11;
    myAngle = Math.cos(3.51)*mySpeed;
  }
  void show(){
    ellipse((float)myX, (float)myY, 20, 20);
  }
}
class OddBall extends Particle{
  OddBall(){
    myX = myY = 500;
  }
  void move(){
    if(mouseX >= myX){
      myX = myX + (int)(Math.random()*7)+10;
    } else if(mouseY >= myY){
      myY = myY + (int)(Math.random()*7)+10;
    } else{
      myX = myX + (int)(Math.random()*7)-10;
      myY = myY + (int)(Math.random()*7)-10; 
    }
  }
  void show(){
    ellipse((float)myX, (float)myY, 35, 35);
  }
}
bacteria[] george;
bacteria[] craig;
bacteria[] steve;
bacteria[] bob;
int click = 0;
void setup(){
  size(1000, 1000);
  george = new bacteria[10];
  craig = new bacteria[10];
  steve = new bacteria[10];
  bob = new bacteria[10];
  for(int i = 0; i < george.length; i++){
    george[i] = new bacteria(20, 20);
    craig[i] = new bacteria(980, 980);
    steve[i] = new bacteria(20, 980);
    bob[i] = new bacteria(980, 20);
  }
}
void draw(){
  background(0, 0, 0);
  for(int i = 0; i < george.length; i++){
    george[i].show();
    george[i].move();
    craig[i].show();
    craig[i].move();
    steve[i].show();
    steve[i].move();
    bob[i].show();
    bob[i].move();
  }
}
class bacteria{
  int myX, myY;
  bacteria(int x, int y){
    myX = x;
    myY = y;
  }
  void move(){
    myX = myX + (int)(Math.random()*7)+1;
    myY = myY + (int)(Math.random()*5)+1;
    if(mouseX >= myX){
      myX = myX + (int)(Math.random()*7)+1;
    } else if(mouseY >= myY){
      myY = myY + (int)(Math.random()*5)+1;
    } else{
      myX = myX + (int)(Math.random()*7)-14;
      myY = myY + (int)(Math.random()*5)-10; 
    }
  }
  void show(){
    rect(myX, myY, 20, 20);
  }
}
void mousePressed(){
  if(click <= 10){
    fill(0, 0, 255);
  } else if(click <= 20){
    fill(255, 0, 0);
  } else{
    fill(0, 255, 0);
  }
  ellipse(mouseX, mouseY, 50, 50);
  click++;
}
