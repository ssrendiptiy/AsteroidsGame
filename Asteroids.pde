class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (Math.random()*15)-7;
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
    myXspeed = (int)(Math.random()*4+1);
    myYspeed = (int)(Math.random()*4+1);
    myColor = #FFFFFF;
    myPointDirection = 360.0;
    corners = 7;
    xCorners = new int[]{-8, 0, 8, 16, 8, 0, -8, -16};
    yCorners = new int[]{-8, -10, -8, 0, 8, 10, 8, 0};
    for(int i = 0; i < corners; i++)
    {
      xCorners[i] = xCorners[i] * 4;
      yCorners[i] = yCorners[i] * 4;
    }
    
  }
  void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  
  public double getCenterY(){
    return myCenterY;
  }
  
  public void setMyX(double n){
    myCenterX = n;
  }
  
  public void setMyY(double a){
    myCenterY = a;
  }
}
