void highScores(String user,int score){
         
     if(loadStrings("HighScore.txt")==null){
      saveHighScore(score,user);
     }
     
     else
     {
       
      String[] highScores = loadStrings("HighScore.txt");
      
      if(highScores.length ==0){
          saveHighScore(score,user);
      }
      else{
      int highScore=Integer.valueOf(highScores[0]);
       
        if(score>highScore){
          saveHighScore(score,user);
        }
        
    }
     }
}


String getHighScore(){
  String highScore;
   
     String[] highScores = loadStrings("HighScore.txt");
     highScore=highScores[0];
     
  return highScore;
     }

String getHighScorer(){
  String highScorer;
   
    String[] highScores = loadStrings("HighScore.txt");
     highScorer=highScores[1];
     
  return highScorer;
     }


void saveHighScore(int score,String user){

    String[] highScore = new String[2];
     highScore[0]=str(score);
     highScore[1]=user;
     saveStrings("HighScore.txt", highScore);
   
}
