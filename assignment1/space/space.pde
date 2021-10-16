//this takes about 70 seconds to run on my system so i don't know if it'll be the same for yours.

int MAX_WEIGHT = 10;
ArrayList<Star> stars = new ArrayList<Star>();

PVector position, target;
boolean isRunning = false;
PImage spaceshipCurrent, spaceship, spaceship2;


void setup() {
  size(800, 600, P2D);
  surface.setLocation(740,-100);
  
  for (int i = 0; i<1000; i++) {
    Star star = new Star();
    stars.add(star);
    
    position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  spaceship = loadImage("spaceship.PNG");
  spaceship.resize(spaceship.width/3, spaceship.height/3);
  spaceship2 = loadImage("spaceship2.PNG");
  spaceship2.resize(spaceship.width, spaceship.height); 
  spaceshipCurrent = spaceship;
  imageMode(CENTER);  
  }
}

void draw() { 
  background(0);
  
    for (Star s : stars) {
      s.display();
      PVector d = new PVector (2, -1);
      s.move(d);
    }
    
    PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 100;
  if (isRunning) {
    spaceshipCurrent = spaceship2;
    position = position.lerp(target, 0.04);
  if (position.dist(target) < 3) {
    target = new PVector(random(width), random(height));
}
  }
  else {
    spaceshipCurrent = spaceship;
}

image(spaceshipCurrent, position.x, position.y);
}
