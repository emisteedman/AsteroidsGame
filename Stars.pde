class Stars //note that this class does NOT extend Floater
{
  float f = (float)(Math.random()*4);
  int starX, starY;
  
  public Stars(){
   starX = (int)(Math.random()*800);
   starY = (int)(Math.random()*800);
  }
  public void show(){
   fill(255);
   ellipse(starX, starY, f, f); 
  }
}