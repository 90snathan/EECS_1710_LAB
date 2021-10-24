class Ball {
  PVector Pos = new PVector(0,0);
  float Size = 35;
  float Speed = 200;
  PVector Direction = new PVector(0,0);
  color Colour = color(0,0,0);
  
  Ball(float x, float y, float size, float speed, int red, int green, int blue) {
    Pos = new PVector(x,y);
    Size = size;
    Speed = speed;
    Colour = color(red,green,blue);
    Direction = new PVector(random(-10,10), random(-10,10));
  }
  
  void render() {
    fill(Colour);
    ellipse(Pos.x, Pos.y, Size, Size);
  }
  
  void update() {
    Pos.x += Direction.normalize().x *1/frameRate * Speed;
    Pos.y += Direction.normalize().y *1/frameRate * Speed;
    
    if(Pos.x < 0) {
      Direction.x = -Direction.x;
      Pos.x = 0;
}

  if(Pos.x > width) {
    Direction.x = -Direction.x;
    Pos.x = width;
  }
  
  if(Pos.y < 0) {
      Direction.y = -Direction.y;
      Pos.y = 0;
  }
  
  if(Pos.y > height) {
    Direction.y = -Direction.y;
    Pos.y = height;
  }

}

}
