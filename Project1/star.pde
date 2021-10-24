class Star {
  PVector pos;
  float size;
  float colour;
  int big = 50;
  int TOP_SPEED = 2;
  float speed;

  
  Star() {
    this.pos = new PVector(random(width),random(height));
    this.size = random(MAX_WEIGHT);
    this.speed = map(this.size, 0, MAX_WEIGHT, 0, this.TOP_SPEED);
    this.colour = (255 / MAX_WEIGHT) * this.size;
  }
  
  void display() {
    stroke(this.colour);
    strokeWeight(this.size);
    point(this.pos.x,this.pos.y);
  }
  
  void move(PVector direction) {
    direction.mult(this.speed);
    this.pos.add(direction);
    
    if (this.pos.x > width + this.big) {
      this.pos.x = -this.big;
    }
    else if (this.pos.x < 0 - this.big) {
      this.pos.x = width + this.big;
    }
    
        if (this.pos.y > height + this.big) {
      this.pos.y = -this.big;
    }
    else if (this.pos.y < 0 - this.big) {
      this.pos.y = height + this.big;
    }
  }
}
