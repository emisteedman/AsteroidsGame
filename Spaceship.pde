class Spaceship extends Floater  
{   
  public Spaceship(){  
  myCenterX = 200;
  myCenterY = 200; //holds center coordinates   
  myDirectionX = 3;
  myDirectionY = 3; //holds x and y coordinates of the vector for direction of travel   
  myPointDirection = 3; 
  corners = 6;
  xCorners = new int[corners] ;   
  yCorners = new int[corners] ;   
  xCorners[0] = -9;
  yCorners[0] = 6;
  xCorners[1] = 9;
  yCorners[1] = 0;
  xCorners[2] = -9;
  yCorners[2] = -6;
  xCorners[3] = -9;
  yCorners[3] = -2;
  xCorners[4] = 2;
  yCorners[4] = 0;
  xCorners[5] = -9;
  yCorners[5] = 2;
  myColor = 255;
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
    return myDirectionY;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return getPointDirection();
  }
}
  