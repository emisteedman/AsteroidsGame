class Bullet extends Floater{

  public Bullet(Spaceship theShip){
	myCenterX = theShip.getX();
  myCenterY = theShip.getY();
  double dRadians = theShip.getPointDirection()*(Math.PI/180);
  myDirectionX = 1.6 * Math.cos(dRadians) + theShip.getDirectionX();
  myDirectionY = 1.6 * Math.cos(dRadians) + theShip.getDirectionY();
  myPointDirection = theShip.getPointDirection();
  myColor = #FFFAFA;
}
  public void setX(int x){
    myCenterX = x;
  }
  public int getX(){
    return (int)myCenterX;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public int getY(){
    return (int)myCenterY;
  }
  public void setDirectionX(double x){
    myDirectionX = x;
  }
  public double getDirectionX(){
    return myDirectionX;
  }
  public void setDirectionY(double y){
    myDirectionY = y;
  }
  public double getDirectionY(){
    return myDirectionX;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public void show(){
  fill(myColor);
  ellipse((float)myCenterX, (float)myCenterY, 10,10);
  }
}