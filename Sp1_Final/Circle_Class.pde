//import ddf.minim;
//import ddf.minim.spi.AudioRecordingStream;


class Circle
{
  float circleX;
  float circleY;
  float xspeed;                        //The speed describe which direction the circles move.
  float diameter;
  color c;
  float gravity;
  AudioPlayer circleSound;             //declar a new varaible called CircleSound (So the objects I create Will have a sound.)


  Circle(float circleX, float circleY, float diameter, color c, float xspeed, float gravity, AudioPlayer sound){         //create an Constructor with seven vaiables.{

    this.circleX=circleX;
    this.circleY=circleY;
    this.diameter=diameter;
    this.c=c;
    this.xspeed=xspeed;
    this.gravity=gravity;
    this.circleSound=sound;
  }

   void setSound() {
  circleSound = sound;
}





void display() {                       //this is the method for how my circle should looks like.{
  stroke(0);
  fill(c);
  ellipse(circleX, circleY, diameter, diameter);
}

void move() {                          //the method for gravity, so the circles fall to the ground.
  circleY=circleY+xspeed;
  xspeed=xspeed+gravity;

  if (circleY>height) {
    xspeed=xspeed*-0.95;
    circleY=height;
    if (circleSound != null && !circleSound.isPlaying()) {
      circleSound.rewind();
      circleSound.play();
    }
  }
}
void addCircle(Circle circle) 
{
  myCircle.add(circle);
}
}
