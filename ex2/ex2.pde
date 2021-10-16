float x = 100;
float r = 250;
float t = 114;
float u = 150;
float z = 110;
float a = 240;
color c = color(255, 0, 0);
color c2 = color(0);
color c3 = color(255,255,255);
float y = 220;
float s = 50;
float speed = 3;
PImage bg;

void setup() {
    size(900, 600, P2D);
    noStroke();
    bg = loadImage("nath.jpg");
    bg.resize(900, 600);
}

void draw() {
  background(bg);
  move();
  display();
  fill(255,255,0);
  ellipse(mouseX, mouseY, 100, 100);
}

void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
  
  r = r +speed;
  if (r > width) {
    r = 0;
  }
  
  s = s +speed;
  if (s > width) {
    s = 0;
  }
  
  t = t +speed;
  if (t > width) {
    t = 0;
  }
  
  u = u +speed;
  if (u > width) {
    u = 0;
  }
  
   z = z +speed;
  if (z > width) {
    z = 0;
  }
  
    a = a +speed;
  if (a > width) {
    a = 0;
  }
}
  
void display() {
    fill(c);
    rect(x, 475,150,50); //second rect
    rect(t, 445,125, 35);// first rect
    fill(c2);
    ellipse(x, 515,50,50); //left tire
    ellipse(r, 515, 50,50); //right tire 
    rect(u, 455,50,50); //middle rect
    fill(c3);
    ellipse(z, 485, 10,10);
    ellipse(a, 485, 10,10);
    ellipse(x, 515,30,30);
    ellipse(r, 515,30,30);
    
}
    
