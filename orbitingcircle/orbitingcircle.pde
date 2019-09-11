//This value specifies where in the ellipse orbit
//your object is, from 0 to 2*PI
float val;

//The speed your object moves at along the orbit
float speed = 0.01;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
 
  //Calculate x and y as values between -1 and 1
  //Search wikipedia for sinus and cosinus if this is unclear :)
  float x = sin(val);
  float y = cos(val);
 
  //Multiply x and y by the ellipses width (100) and height (50)
  x *= 180;
  y *= 80;
 
  //Move the centrepoint of the ellipse orbit where you want it
  x+= width/2;
  y+= height/2;
  
  float sphereWidth = 40-y*0.4;
  float sphereHeight = 40-y*0.4;
 
  //Draw your object!
  fill(y);
  ellipse(x, y, sphereWidth, sphereHeight);
 
  //Update the value
  val += speed;
}
