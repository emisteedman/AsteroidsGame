//your variable declarations here

Spaceship Bob = new Spaceship();
Stars[] star = new Stars[(int)(Math.random()*150)+30];
Asteroid[] ast = new Asteroid[(int)(Math.random()*10)+3];
public void setup() 
{
  //your code here
  size(500, 500);
  for (int a = 0; a < star.length; a++) {
    star[a] = new Stars();
  }
  for (int o = 0; o < ast.length; o++) {
    ast[o] = new Asteroid();
  }
}
public void draw() 
{
  //your code here
  background(0);  
  Bob.show();
  Bob.move();
  for (int a = 0; a < star.length; a++) {
    star[a].show();
  }
  for (int o = 0; o < ast.length; o++) {
    ast[o].show();
    ast[o].move();
  }
}

public void keyPressed()
{
  if (key == '1') {
    Bob.accelerate(0.5);
  }
  if (key == '2') {
    Bob.accelerate(-0.8);
  }
  if (key == '3') {
    Bob.turn((int)PI*3);
    Bob.accelerate(0.1);
  }
  if (key == '4') {
    Bob.turn((int)PI/3);
    Bob.accelerate(-0.1);
  }
  if (key == '5') {
    Bob.setX((int)(Math.random()*400));
    Bob.setY((int)(Math.random()*400)); 
    Bob.setDirectionX(0);
    Bob.setDirectionY(0);
  }
}