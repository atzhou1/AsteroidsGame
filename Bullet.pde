class Bullet extends Floater
{
  public Bullet(Spaceship ship)
  {
    myCenterX=ship.getX();
    myCenterY=ship.getY();
    myPointDirection=ship.getPointDirection();
    double dRadians=myPointDirection*(Math.PI/180);
    myDirectionX=5*Math.cos(dRadians);
    myDirectionY=5*Math.sin(dRadians);
  }
  public void show()
  {
    fill(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
    //ellipse(getX(),getY(),10,10);
  }
  public void setX(int x) {myCenterX=x;};  
  public int getX() {return (int)myCenterX;};   
  public void setY(int y) {myCenterY=y;};   
  public int getY() {return (int)myCenterY;};   
  public void setDirectionX(double x) {myDirectionX=x;};   
  public double getDirectionX() {return myDirectionX;};   
  public void setDirectionY(double y) {myDirectionY=y;};   
  public double getDirectionY() {return myDirectionY;};   
  public void setPointDirection(int degrees) {myPointDirection=degrees;};   
  public double getPointDirection() {return myPointDirection;}; 
}

