// Global varibles
  Ball b1;
  Ball b2;
  Ball b3;

// Setuo method
public void setup()
{
  size(800,800);
  background(190);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
}

// Draw method
public void draw()
{
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  
  b3.update();
  b3.drawBall();
  b3.checkEdges();
}

public class Ball
{
  // instance varibles 
  private int x;
  private int y;

  private int yD;
  private int xD;

  private int diameter; 
  
  // Assume size (800, 800)
  // constructors
  public Ball()
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
    xD = 5;
    yD = 5;
    diameter = (int)(Math.random()*50 + 10);
  }

  // methods
  public void update()
  {
    x += xD;
    y += yD;
  }
  
  public void drawBall()
  {
    ellipse(x,y,diameter,diameter);
    
  }
  
  public void checkEdges()
  {
    if(x > width || x < 0)
      xD *= -1;
      
    if(y > width || y < 0)
      yD *= -1;
  }
}
