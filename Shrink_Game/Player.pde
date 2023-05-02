class Player
{
  float x,y;
  float size=50;

Player(float x,float y)
  {
 this.x=x;
 this.y=y;
  }

void display()
  {
   stroke(0);
    fill( #1aff1a);
    ellipse(x,y, size, size);
  }
}  
