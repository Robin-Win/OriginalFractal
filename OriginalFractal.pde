  public void setup(){
  size(400, 400);
  fill(255, 0, 0);
  }
  public void draw(){
  myFractal(200, 200, 400, 255);
  }
  public void myFractal(int x, int y, int s, int color) {
  if(s < 20) {
    ellipse(x, y, s, s);
  } else {
    fill(color, 0, 0);
    ellipse(x-(s/4), y, s/2, s/2);
    ellipse(x, y-(s/4), s/2, s/2);
    ellipse(x+(s/4), y, s/2, s/2);
    ellipse(x, y+(s/4), s/2, s/2);
    ellipse(x-(s/6), y-(s/6), s/2, s/2);
    ellipse(x+(s/6), y+(s/6), s/2, s/2);
    ellipse(x+(s/6), y-(s/6), s/2, s/2);
    ellipse(x-(s/6), y+(s/6), s/2, s/2);
    myFractal(x, y, (int)(s/1.5), (int)(color/1.1));
    }
  }
