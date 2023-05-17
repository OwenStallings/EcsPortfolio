//Gavin Unguren | 17 April | Etch-A-Sketch

int x, y;
PImage pic;

void setup() {
  //size(displayWidth,displayHeight);
  size(800, 658);
  x = width/2;
  y = height/2;
  background(128);
  pic = loadImage("Etch.png");
}
void draw() {
  image(pic,0,0);
  strokeWeight(20);
  fill(int(random(50,200)));
  //background(255);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(5);
    } else if (key == 's' || key == 'S') {
      moveDown(5);
    } else if (key == 'a' || key == 'A') {
      moveLeft(5);
    } else if (key == 'd' || key == 'D') {
      moveRight(5);

    }
  }
}


void mousePressed() {
  saveFrame("line-######.png");
}



void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
 for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp(int rep) {
 for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y = y - rep;
}

void moveDown(int rep) {
 for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
