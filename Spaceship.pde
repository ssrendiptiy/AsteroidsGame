class Spaceship extends Floater
{
  public Spaceship(){
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0.0;
    myYspeed = 0.0;
    myColor = #FFFFFF;
    myPointDirection = 360.0;
    corners = 50; 
    xCorners = new int[]{-7, -7, -8, -8, -7, -7, -6, -6, -5, -5, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 5, 5, 7, 7, 8, 8, 8, 8, 7, 7, 5, 5, 1, 1, 0, 0, -1, -1, -2, -2, -3, -3, -5, -5, -6, -6, -7, -7, -8, -8, -7, -7};
    yCorners = new int[]{0, 1, 1, 3, 3, 4, 4, 7, 7, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, -1, -1, -2, -2, -3, -3, -4, -4, -5, -5, -6, -6, -7, -7, -8, -8, -7, -7, -4, -4, -3, -3, -1, -1, 0};
    for(int i = 0; i < corners; i++)
    {
      xCorners[i] = xCorners[i] * 2;
      yCorners[i] = yCorners[i] * 2;
    }
  }
  
  public void deccelerate(double vAmount)
  {
    double vRadians = myPointDirection*(Math.PI/180);
    myXspeed = myXspeed - ((vAmount) * Math.cos(vRadians));
    myYspeed = myYspeed - ((vAmount) * Math.sin(vRadians));
  }
  
  public void setSpdX(double brr){
    myXspeed = brr;
  }
  
  public void setSpdY(double vre){
    myYspeed = vre;
  }

  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (double)(Math.random()*360.0);
    myCenterX = (double)(Math.random()*(width));
    myCenterY = (double)(Math.random()*(height));
  }
  
  double getX(){
    return myCenterX;
  }
  
  double getY(){
    return myCenterY;
  }
}
