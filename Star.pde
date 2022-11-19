class Star
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*800);
  }
  public void show()
  {
    fill(#FFFFFF);
    ellipse(myX, myY, (float)(Math.random()*4), ((float)Math.random()*4));
  }
}
