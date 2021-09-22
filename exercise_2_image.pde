PImage img1, img2, img3;
PVector pos1, pos2;
PShape shp;
float circleSize = 30;

void setup() {
  size(640, 480, P2D);
  
  img1 = loadImage("starfox.png");
  img2 = loadImage("aliens.jpg");
  img3 = loadImage("brush.png");
  
  pos1 = new PVector(200, 200);
  pos2 = new PVector(width, height);
  
  shp = createShape();
  shp.beginShape();
  shp.stroke(0,0,255);
  shp.fill(255,255,255);
  shp.vertex(pos1.x, pos1.y);
  shp.vertex(pos2.x, pos2.y);
  shp.vertex(0, 0);
  shp.endShape();
}

void draw() {
  //imageMode(CORNER);
  image(img1,0, 0, width, height);
   // imageMode(CENTER);
  image(img3, mouseX, mouseY, 25,25);
 
  
  
  
  strokeWeight(20);
  stroke(255,0,0);
  point(pos1.x, pos1.y);
  point(pos2.x, pos2.y);
  
  strokeWeight(10);
  stroke(0,255,0);
  line(pos1.x, pos1.y, pos2.x, pos2.y);
  
  shape(shp);
  

  if (mousePressed) {
  
  imageMode(CENTER);
  image(img2, mouseX, mouseY, 80, 80);
  
  
  }
}
