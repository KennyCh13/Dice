void setup()
{
  size(700, 700);
  noLoop();
}
void draw()
{
  //your code here
  int numTotal = 0;
  background(0);
  for (int y = 0; y < 600; y+=60)
  {
    for (int x = 25; x < 650; x+=60)
    {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      numTotal += bob.dots;
    }
  }
  println(numTotal);
    noLoop();
    fill(255);
    text("YOU SCORED:  " + numTotal , 250, 650);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY, dots;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    dots = 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    dots = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (dots == 1)
      ellipse(myX + 25, myY + 25, 5, 5);
    if (dots == 2) {
      ellipse(myX + 37.5, myY + 37.5, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
    }
    if (dots == 3) {
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 37.5, myY + 37.5, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
    }
    if (dots == 4) {
      ellipse(myX + 12.5, myY + 37.5, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
      ellipse(myX + 37.5, myY + 37.5, 5, 5);
      ellipse(myX + 37.5, myY + 12.5, 5, 5);
    }
    if (dots == 5) {
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 12.5, myY + 37.5, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
      ellipse(myX + 37.5, myY + 37.5, 5, 5);
      ellipse(myX + 37.5, myY + 12.5, 5, 5);
    }
    if (dots == 6) {
      ellipse(myX + 12.5, myY + 37.5, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
      ellipse(myX + 37.5, myY + 37.5, 5, 5);
      ellipse(myX + 37.5, myY + 12.5, 5, 5);
      ellipse(myX + 12.5, myY + 25, 5, 5);
      ellipse(myX + 37.5, myY + 25, 5, 5);
    }
  }
}
