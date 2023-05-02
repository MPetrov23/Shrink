Player player; 
Obstacle obstacle;
Menu menu;

int score=0; int level=1;
float size=60; float shrink=1;

void setup() 
{
  size(1000, 700);
  menu=new Menu();
  obstacle = new Obstacle(size,shrink); 
}

void draw()
{
menu.game();
}

void keyPressed() {

  if (key == '\n' ) {
    user = typing;
    gameStage=2;
    typing = ""; } 
  else if((key >= 'A' && key <= 'z') || key >= '0' && key <= '9'){
    typing = typing + key; 
  }
  else if(key == BACKSPACE){ typing = typing.substring(0,max(0,typing.length()-1)); }
}
