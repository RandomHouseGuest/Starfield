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
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
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
