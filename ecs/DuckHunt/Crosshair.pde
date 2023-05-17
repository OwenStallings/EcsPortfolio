class Crosshair {
  int x, y;
  PImage c1;

  Crosshair() {
    x = width/2;
    y = height-100;
    c1 = loadImage("New Piskel (3).gif");
  }

  void display() {
    imageMode(CENTER);
    c1.resize(100,100);
    image(c1, x, y);
  }

  void move(int tempX, int tempY) {
  x = tempX;
  y = tempY;
  }

}
