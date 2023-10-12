import ddf.minim.*;
Minim minim;
AudioPlayer sound;

ArrayList<Circle> myCircle;          //I create an empty Arraylist for the circle objects.

void setup()
{
  size(1000, 1000);
  smooth();
  noFill();
  minim = new Minim(this);                              //initializer variable our audiolibary. 
  AudioPlayer circleSound = minim.loadFile("C:/Users/eljey/Documents/Processing/Semester 1/Egne projekter/Sp1 opgave/Sp1_Final/Bloop.mp3"); //maybe you need to change this line if the filepage change when you have downloaded it!

myCircle = new ArrayList<Circle>();                                                //a empty Arraylist is called with the fuctions to optain the circle objects.


  for ( int i=0; i<200; i++)                                                     //here we have a for loop where 200 circles will be created.
  {
    float circleX=random(width);                                               //the circles is giving a random heigt and width for where the is created on the canvans.
    float circleY=random(height);
    float xspeed=random(1, 3);
    float diameter=int(random(20, 50));                                        //all circle been giving a random diameter from 20pixel-50pixels.
    color c=color(random(255), random(255), random(255));                     //all circle been giving a random color.
    float gravity=random(0.05, 0.2);                                           //I created a random gravity so the circles fall in with diffrent speed.

    Circle circle = new Circle(circleX, circleY, diameter, c, xspeed, gravity, circleSound);    //creating an object for the circle
    myCircle.add(circle);                                                                 //the object Circle is added to the Arraylist myCircle.
  }
}

void draw()
{
  background(255);
  for (Circle myC : myCircle)                              //a for each loop for myCircle is created to go throw the Arraylist "myCircle"
  {
    myC.display();                                        // I create a methodcall, and call the method for Circles display, and create the circle on the screen (how the circle is look like)
    myC.move();         // I create a methodcall, and call the method for move Creating in the Circle class (it tells how the circle shall act when I press play.)
  }
}
void dispose() {       //stop the sound library, and closeing the audio player when we close the program. 
  sound.close();
  minim.stop();
  super.dispose();
}

/*conclusion: The code is working but when you stop running the program I get a NULL point exception which I coundn't find/see what cause that problem. 
Another thing is, I managed to set sound on my balls when they hit the bottom, 
which was a goal in itself, but the code would have been even more successful if I had managed to get the sound to time all the balls so it didn't just sound like a continuous loop running.*/  
