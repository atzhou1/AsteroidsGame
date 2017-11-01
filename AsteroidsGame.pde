Spaceship ship=new Spaceship();
Stars[] star=new Stars[1000];
public void setup() 
{
  size(500,500);
  for(int a=0; a<star.length; a++)
  {
    star[a]=new Stars();  
  }
}
public void draw() 
{
  background(0);
  for(int a=0; a<star.length; a++)
  {
    star[a].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed()
{
  if(key=='h')
  {
    ship.setX((int)(Math.random()*500));
    ship.setY((int)(Math.random()*500));
    ship.setPointDirection((int)(Math.random()*360));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
  if(key=='4') {ship.turn(-10);}
  if(key=='6') {ship.turn(10);}
  if(key=='8') {ship.accelerate(0.3);}
}