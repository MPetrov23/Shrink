int gameStage=1;
String user="";
String typing="";

class Menu{

void game(){
     if(gameStage!=4){
    
  if(gameStage==1){ 
  gameStart(); 
  }
  if(gameStage==2){
  gamePlay();
  }
  if(gameStage==3){
  gameOver();
  }
 }
    

}

void gameStart(){
  smooth();
  background(#00FF00);
  textAlign(CENTER, CENTER);
 
  noStroke();
  fill(#000000);
  textSize(175);
  text("Shrink Game", width/2,height/6);
  
  filter( BLUR, 6 );
  stroke(255);
  fill(#002600);
   textSize(170);
  text("Shrink Game", width/2,height/6);
  
   noStroke();
  textSize(50);
  text("Enter username and press Enter to start! ", width/2, height/2);
  text("Username:"+typing, width/2, height/1.7);
  text("Catch as many red circles as you can!", width/2,height/1.1);
  
  

}

  
void scoreboard(int score,int level){
  fill (#d6d6c2);
  stroke(#d7d7c1);
  rect(0,0,width,50);

 
  textSize(50);
  fill (0);
  textAlign(LEFT);
  text("Your score is: "+(score),10,40);
  textAlign(CENTER);
  text(user,width/2,40);
  textAlign(RIGHT);
  text("Level "+level,width-10,40);
}
  
void gamePlay(){
background( #e1e1d0);
scoreboard(score,level);
size-=shrink;

player = new Player(mouseX,mouseY); 
player.display();
obstacle.display(size,shrink);
   
  if (obstacle.score(player)==true){
    score++;
    size=60;
    obstacle = new Obstacle(size,shrink); 
    if((score)%10==0){
    level++;
    shrink+=0.1;
    }
  }else {
   obstacle.display(size,shrink);
   }

  if(size<=0){
    gameStage=3;

  }
}
   
void gameOver(){
  gameStage=3;
  size=60; shrink=1;
  highScores(user,score);
  rectMode(RADIUS);
  background(#FF0000);
  fill (0);
  textAlign(CENTER, CENTER);
  textSize(175);
  text("Game Over", width/2,height/4);
  textSize(50);
  text("High Score : "+getHighScorer()+" scored "+getHighScore()+" points", width/2,height/2);
  text("Press Enter to restart", width/2,height/1.5);
  text("Press R to play as new Player", width/2,height/1.3);
  text("Press Esc to exit", width/2,height/1.15);
  
  if(keyPressed==true){
   
     if(key=='\n'){
      
        gameStage=2;
        score=0; level=1;
    }
     else if(key=='r'||key=='R'){
        gameStage=1;
        score=0; level=1;
    }
    else if(key==ESC){
      exit(); 
    }
  }
 
}
  
}
