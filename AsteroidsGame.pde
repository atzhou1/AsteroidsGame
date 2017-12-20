Spaceship ship=new Spaceship();
//Asteroid[] asteroids=new Asteroid[10];
ArrayList <Asteroid> asteroids=new ArrayList <Asteroid>();
Stars[] star=new Stars[1000];
ArrayList <Bullet> bull=new ArrayList <Bullet>();

public void setup() 
{
  size(500,500);
  for(int a=0; a<star.length; a++)
  {
    star[a]=new Stars();  
  }
  for(int b=0; b<=10; b++)
  {
    //Asteroid asteroids=new Asteroid();
    asteroids.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  
  for(int a=0; a<star.length; a++)
  {
    star[a].show();
  }
  
  for(int b=0; b<asteroids.size(); b++)
  {
    asteroids.get(b).show();
    asteroids.get(b).move();
    //asteroids[b].show();
    //asteroids[b].move();  
    if(dist((float)asteroids.get(b).getX(), (float)asteroids.get(b).getY(), (float)ship.getX(), (float)ship.getY())<25)
    {
      asteroids.remove(b);
    }
  
  for(int c=0; c<bull.size(); c++)
  {
    if(bull.get(c).getX()==500 || bull.get(c).getX()==0 || bull.get(c).getY()==500 || bull.get(c).getY()==0)
    {
        bull.remove(c);
    break;
    }
    if(dist(bull.get(c).getX(), bull.get(c).getY(), asteroids.get(b).getX(), asteroids.get(b).getY())<25)
    {
        asteroids.remove(b);
        bull.remove(c);
      break;
    }
    else
    {
      bull.get(c).move();
      bull.get(c).show();
    }
  }}
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
  if(key=='s') {bull.add(new Bullet(ship));}
}
