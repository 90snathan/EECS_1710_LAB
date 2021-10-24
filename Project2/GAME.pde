int menu = 0;
Button StartButton;
Button ResetButton;
int playerSize = 100;
Timer gameTime = new Timer(0);
ArrayList<Ball> DodgeBalls = new ArrayList<Ball>();
boolean GameOver = false;

void setup() {
  
  size(600,600, P2D);
  StartButton = new Button(250,350,100,50,"START",0,200,200);
  ResetButton = new Button(250,450,100,50,"RESET",0,200,200);
}

void draw() {
  background(250,242,5);
  switch(menu) {
    case 0:
    {
      fill(0);
      textSize(30);
      textAlign(CENTER,CENTER);
      text("Dodgeball", width/2,100);
      StartButton.update();
      StartButton.render();
      
      if(StartButton.isClicked()) {
       menu = 1; 
       DodgeBalls = new ArrayList<Ball>();
       DodgeBalls.add(new Ball(random(0,width),10,20,900,255,0,0));
       gameTime.setTime(0);
       GameOver = false;
      }
    }break;
    
    case 1:
    {
      if(GameOver == true){
       menu = 2; 
      }
      gameTime.countUp();
      fill(0);
      text("Game Timer: " + int(gameTime.Time),width/2,20);
      fill(0,200,0);
      ellipse(mouseX,mouseY,playerSize, playerSize);
      
      for(Ball temp: DodgeBalls) {
        temp.update();
        temp.render();
        
        if(temp.Pos.dist(new PVector(mouseX,mouseY))<=(temp.Size/2+playerSize/2)) {
          GameOver = true;
        }
      }
    }break;
    
    case 2:
    {
     text("Game Over: " + int(gameTime.Time),width/2,100); 
     text("BETTER LUCK NEXT TIME",width/2,120);
     ResetButton.update();
     ResetButton.render();
     
     if(ResetButton.isClicked()) {
       menu = 0;
     }
    }
  }
  
}
