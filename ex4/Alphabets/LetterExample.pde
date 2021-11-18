import peasy.*;

PeasyCam cam;

LetterGenerator lg;
String input = "abcba";
PImage photo;

void setup() {
  size(800, 600, P3D);
  cam = new PeasyCam(this, 600);
  
  photo = loadImage("photo.jpg");

  lg = new LetterGenerator(input, 0, height/2);
  
}

void draw() {
  translate(-width/2, -height/2);

  background(255);
  lg.run(); 
}
