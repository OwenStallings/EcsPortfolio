// Nicholas Simos and Owen Stallings | April 26th | duck hunt
boolean play;
Crosshair greg;
duck gene;
int score;
float duckDist;
Timer t1;


void setup() {
  size(1000, 1000);
  greg = new Crosshair();
  gene = new duck();
  score = 0;
  t1=new Timer(10000);
  t1.start();
}

void draw() {
  println(duckDist);
  if (!play) {
    startScreen();
  } else {
    duckDist = dist(gene.x, gene.y, greg.x, greg.y);
    background(128);
    drawBackground();
    infoPanel();
    greg.display();
    greg.move(mouseX, mouseY);
    gene.display();
    gene.move();

    if (gene.y < 0) {
      gameOver();
    }
  }
}
void mousePressed () {
  if (duckDist<35) {
    //gene.x = greg.x;
    score = score + 1;
    //gene.x = width;
    if (random(2)==0) {
      gene.right = true;
      gene.x = int(random(500, 1000));
      gene.y = int(random(500, 700));
      gene.speed = int(random(1, 8));
    } else {
      gene.right = false;
      gene.x = int(random(500, 1000));
      gene.y = int(random(500, 700));
      gene.speed = int(random(1, 8));
    }
  }
}
void keyPressed() {
  if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  fill(0, 216, 350);
  rect(0, 0, width, height);
  fill(0, 200, 0);
  rect(0, 800, width, 200);
}

void startScreen() {
  background (0);
  textAlign(CENTER);
  fill(255);
  text("Welcome to DuckHunt", width/2, 400);
  text("Press Spacebar to start", width/2, 420);
}

void gameOver() {
  background (0);
  textAlign(CENTER);
  fill(255);
  text("Game Over", width/2, 400);
  text("Score:  " + score, width/2, 420);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 80);
  fill(score);
  text("Score: " + score, 20, 70);
}
