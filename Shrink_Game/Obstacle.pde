class Obstacle
{
  
float size,shrink;
float x=(random(size*2,width-size*2));
float y=(random((size*2+50),height-size*2));

Obstacle(float size,float shrink)
  {
  this.size=size;
  this.shrink=shrink;
  }

void display(float size,float shrink)
  {

 stroke(0);
    fill( #ff1a1a);
    ellipse(x, y, size-shrink, size-shrink);
  }

boolean score(Player player){
    if ( dist(player.x,player.y,this.x,this.y) < (player.size+this.size)/2)
    {
      return true;
    }
      else
      {
      return false;
      }

  }
}
