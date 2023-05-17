class duck {
  int x, y, speed;
  PImage d1;
  boolean right;

  duck() {
    x = int(random(100, 500));
    y = height-100;
    speed = int(random(1, 8));
    if (int(random(2))==0) {
      right = true;
    } else {
      right = false;
    }
    d1 = loadImage("duck.gif");
  }

  void display() {
    imageMode(CENTER);
    d1.resize(100, 100);
    image(d1, x, y);
  }

  void move() {
    if (x<0) {
      x = width;
    }
    if (right) {
      x = x + speed;
    } else {

      x = x - speed;
    }
    y = y - speed;
  }
}
