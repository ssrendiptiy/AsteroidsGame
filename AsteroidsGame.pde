Spaceship Boo;
Star[] tao = new Star[300];
ArrayList <Asteroid> hu;
public void setup(){
  size(1000, 800);
  Boo = new Spaceship();
  hu = new ArrayList <Asteroid>();
  for(int i = 0; i < tao.length; i++)
  {
    tao[i] = new Star();
  }
  for(int i = 0; i < 6; i++){
    hu.add(new Asteroid());
  }
}

public void draw(){
  background(0);
  Boo.show();
  Boo.move();
  for(int i = 0; i < tao.length; i++)
  {
    tao[i].show();
  }
  for(int i = 0; i < hu.size(); i++)
  {
    hu.get(i).show();
    hu.get(i).move();
    float d = dist((float)Boo.getX(), (float)Boo.getY(), (float)hu.get(i).getCenterX(), (float)hu.get(i).getCenterY());
    if(d < 50){
      hu.remove(i);
    }
  }
}

public void keyPressed()
{
  if( key == 'w'){
    Boo.accelerate(10.0);
  }else if(key == 'a'){
    Boo.turn(-30.0);
    Boo.accelerate(7.0);
  } else if(key == 'd'){
    Boo.turn(30.0);
    Boo.accelerate(7.0);
  } else if(key == 's'){
    Boo.deccelerate(10.0);
  } else if(key == 'e'){
    Boo.hyperspace();
  } 
}

public void keyReleased()
{
  if( key == 'w'){
    Boo.setSpdX(0.0);
    Boo.setSpdY(0.0);
  }else if(key == 'a'){
    Boo.setSpdX(0.0);
    Boo.setSpdY(0.0);
  }else if(key == 'd'){
    Boo.setSpdX(0.0);
    Boo.setSpdY(0.0);
  }else if(key == 's'){
    Boo.setSpdX(0.0);
    Boo.setSpdY(0.0);
  } 
}
