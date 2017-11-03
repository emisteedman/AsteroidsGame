class Stars //note that this class does NOT extend Floater
{
  float f = (float)(Math.random()*4);
  int starX, starY;
  
  public Stars(){
   starX = (int)(Math.random()*500);
   starY = (int)(Math.random()*500);
  }
  public void show(){
   ellipse(starX, starY, f, f); 
  }
}