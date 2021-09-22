float x = 0;

void setup() {
size(800, 600);
ellipseMode(CENTER);
rectMode(CENTER);
}

void draw() {
  background(3, 255, 8);
  stroke(255, 127, 0);
  strokeWeight(10);
  fill(100, 186, 255);
  ellipse(x++, height/2, 20, 20);
  stroke(255, 9, 0);
  strokeWeight(20);
  fill(255, 230, 0);
  ellipse(width/2, height/2, 10, 10);
  rect(100, 300, 200, 200);
}
