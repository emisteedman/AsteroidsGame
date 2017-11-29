class Asteroid extends Floater {
  private int rotSpeed;
  public Asteroid() {
    myCenterX = 250;
    myCenterY = 250; //holds center coordinates   
    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 0; 
    corners = 4;
    xCorners = new int[corners] ;   
    yCorners = new int[corners] ;   
    xCorners[0] = 9;
    yCorners[0] = 0;
    xCorners[1] = 9;
    yCorners[1] = -9;
    xCorners[2] = -18;
    yCorners[2] = 0;
    xCorners[3] = 0;
    yCorners[3] = 9;
    myColor = #988F8F;
    rotSpeed = (int)(Math.random()*5)-2;
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return getPointDirection();
  }
  public void move(){
    turn(rotSpeed);
    super.move();
}
}