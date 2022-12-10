class Bullet extends Floater
{
  public Bullet(Spaceship Boo){
    myXspeed = Boo.getXS();
    myYspeed = Boo.getYS();
    myCenterX = Boo.getX();
    myCenterY = Boo.getY();
    myPointDirection = Boo.getD();
    myColor = #FFFFFF;
    accelerate(6.0);
  }
  
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  double getX(){
    return myCenterX;
  }
  
  double getY(){
    return myCenterY;
  }
}
