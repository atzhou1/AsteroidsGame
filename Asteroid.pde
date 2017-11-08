class Asteroid extends Floater 
{  
  private int rotSpeed; 
  public Asteroid()
  {
    rotSpeed=(int)((Math.random()*10)-5);
    corners = 6;
    int[] xC= {-15,11,17,10,-15,-9};
    int[] yC= {-12,-12,4,12,12,4};
    xCorners=xC;
    yCorners=yC;
    myColor=color(130,125,160);
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
    myDirectionX=((Math.random()*4)-2);
    myDirectionY=((Math.random()*4)-2);
    myPointDirection=0;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
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