//your variable declarations here

Spaceship Bob = new Spaceship();
Stars[] star = new Stars[(int)(Math.random()*150)+30];
ArrayList<Asteroid> asteroidlist;
ArrayList<Bullet> bulletlist;
//Asteroid[] ast = new Asteroid[(int)(Math.random()*10)+3];

public void setup() 
{
  //your code here
  size(800, 800);
  for (int a = 0; a < star.length; a++) {
    star[a] = new Stars();
  }
  asteroidlist = new ArrayList<Asteroid>();
  for(int y = 0; y < (int)(Math.random()*10)+5; y++){
    asteroidlist.add(y, new Asteroid());
  }
  bulletlist = new ArrayList <Bullet>();
}
  //for (int o = 0; o < ast.length; o++) {
    //ast[o] = new Asteroid();
  //}
  //for(int a = 0; a < (int)((Math.random()*10)+3); a++){
  //asteroidlist.add(a, new Asteroid());

public void draw() 
{
  //your code here
  background(0);  
  Bob.show();
  Bob.move();
  for (int a = 0; a < star.length; a++) {
    star[a].show();
  }
  for(int o = 0; o < asteroidlist.size(); o++){
    asteroidlist.get(o).show();
    asteroidlist.get(o).move();
    //if((dist(Bob.getX(),Bob.getY(),asteroidlist.get(o).getX(),asteroidlist.get(o).getY()) <= 20)){
      //asteroidlist.remove(o);
    //}
  }
  //for (int o = 0; o < ast.length; o++) {
    //ast[o].show();
    //ast[o].move();
  //}


for(int q = 0; q < bulletlist.size(); q++){
  for(int w = 0; w < asteroidlist.size(); w++){
    if(dist(bulletlist.get(q).getX(), bulletlist.get(q).getY(), asteroidlist.get(w).getX(), asteroidlist.get(w).getY()) <= 24){
      bulletlist.remove(q);
      asteroidlist.remove(w);
      break;
    }
  }
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
  if (key == '6'){
    bulletlist.add(new Bullet(Bob));
  }
}