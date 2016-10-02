/* 
 Ambroise Dedenis's Unit Project - Multiple Activities
 
 This is a multiple Activities. Click on the images to selct an activity.
 Game = Use the arrows to move and use 1,2,3 and 4 to change shapes and press enter if u want to start again.
 Music = Click on the squares to choose a music to pause the music press P and to restart the Music press O.
 Art = Watch the circles moving.
 To go back to the main screen click R.
 */

//Cover Screen
PImage game;
int gameButtonX, gameButtonY;
PImage music;
int musicButtonX, musicButtonY;
PImage art;
int artButtonX, artButtonY;
int sectionwidth;
int sectionheight;
int textwidth;
int textheight;
int screen = 0;
//End Cover Screen

//Start Game Project 1
int x;
int y;
int xDirection =1;
int shapeMode = 1;
//Start Game Project 1

// Music Project 2
import ddf.minim.*;

AudioPlayer [] Songs = new AudioPlayer [17];
int [] SquareX = new int [17];
int [] SquareY = new int [17];
boolean [] isPlaying = new boolean [17];
int xd; 
int yd;
int i;
// End Music Project 2

// Art Project 3
int [] ellipseX = new int [500];
int [] ellipseY = new int [500];
boolean enter = false;
boolean restart = false;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer input;
// End Art Project 3

void setup()
{
  // Start Cover Screen
  background(0);
  fullScreen();
  game = loadImage("Game.jpg");
  music = loadImage("Music.jpg");
  art = loadImage("Art.jpg");
  art.resize(200, 200);
  sectionwidth = width/3;
  sectionheight = height/3;

  imageMode(CORNER);
  gameButtonX = 1 * width / 3 - 325;
  gameButtonY = height - 250;
  musicButtonX = 2 * width / 3 - 325;
  musicButtonY = height - 250;
  artButtonX = 3 * width / 3 - 325;
  artButtonY = height - 250;
  image(game, gameButtonX, gameButtonY, 200, 200);
  image(music, musicButtonX, musicButtonY, 200, 200);
  image(art, artButtonX, artButtonY, 200, 200);
  // End Cover Screen

  //Start Game Project 1
  x = width/2;
  y = height/2;

  fill(0);
  textSize(15);
  text("#1 = square", 10, 27);

  fill(0);
  textSize(15);
  text("#2 = circle", 1350, 15);

  fill(0);
  textSize(15);
  text("#3 = triangle", 1340, 890);

  fill(0);
  textSize(15);
  text("#4 = rectangle", 10, 875);

  fill(0);
  textSize(15);
  text("Up key = up", 10, 12);

  fill(0);
  textSize(15);
  text("Down key = down", 1305, 30);

  fill(0);
  textSize(15);
  text("Left key = left", 1330, 870);

  fill(0);
  textSize(15);
  text("Right key = right", 10, 890);

  fill(0);
  textSize(15);
  text("Enter = Erase", 700, 20);
  // End Game Project 1

  //Start Music Project 2
  for (int i = 0; i < 16; i++)
  {
    SquareX [i] = (int) random (0, width - 50);
    SquareY [i] = (int) random (0, height - 50);
  }
  minim = new Minim(this);
  Songs[0] = minim.loadFile("TWRK - BaDINGA!.mp3");
  Songs[1] = minim.loadFile("twenty one pilots- Heathens (from Suicide Squad- The Album) [OFFICIAL VIDEO].mp3");
  Songs[2] = minim.loadFile("The Chainsmokers - Closer (Lyric) ft. Halsey.mp3");
  Songs[3] = minim.loadFile("Martin Garrix & Bebe Rexha - In The Name Of Love (Official Video).mp3");
  Songs[4] = minim.loadFile("DJ Snake ft. Justin Bieber - Let Me Love You [Official Lyric Video].mp3");
  Songs[5] = minim.loadFile("Calvin Harris - This Is What You Came For (Official Video) ft. Rihanna.mp3");
  Songs[6] = minim.loadFile("Ariana Grande - Problem ft. Iggy Azalea (Doubleyou Trap Remix).mp3");
  Songs[7] = minim.loadFile("Delax - Drop You Like.mp3");
  Songs[8] = minim.loadFile("Effeil 65- Blue (KNY Factory Remix).mp3");
  Songs[9] = minim.loadFile("G-Eazy Me, Myself & I - Lyrics [HD].mp3");
  Songs[10] = minim.loadFile("Iggy Azalea - Black Widow (Delay Remix).mp3");
  Songs[11] = minim.loadFile("Jonas Blue - Perfect Strangers ft. JP Cooper.mp3");
  Songs[12] = minim.loadFile("Lukas Graham - 7 Years (T-Mass Remix) [feat. Toby Romeo].mp3");
  Songs[13] = minim.loadFile("Selena Gomez - Kill Em With Kindness.mp3");
  Songs[14] = minim.loadFile("Shawn Mendes - Treat You Better.mp3");
  Songs[15] = minim.loadFile("Zara Larsson - Never Forget You (Price & Takis Remix).mp3");
  Songs[16] = minim.loadFile("The Chainsmokers - Dont Let Me Down (Illenium Remix).mp3");
  // End Music Project 2

  // Start Art Project 3
  song = minim.loadFile("Sad Song Piano.mp3");
  for (int i = 0; i < 50; i++)
  {
    ellipseX [i] = (int) random (0, width - 50);
    ellipseY [i] = (int) random (0, height -50);
  }
  // End Art Project 3
}

void draw()
{
  textAlign(CENTER);
  if (screen == 0)
  {
    fill(0, 255, 0);
    textSize(100);
    text("Made By The Legend", 700, 1 * sectionheight - sectionheight / 2);

    fill(255, 119, 0);
    textSize(45);
    text("Game!", 1 * sectionwidth - sectionwidth / 2, 440);

    fill(255);
    textSize(45);
    text("Music!", 2 * sectionwidth - sectionwidth / 2, 440);

    fill(255, 0, 0);
    textSize(45);
    text("Art!", 3 * sectionwidth - sectionwidth / 2, 440);

    fill(255, 119, 0);
    textSize(100);
    text("Made By The Legend", 700, 1 * sectionheight - sectionheight / 2);

    fill(0, 0, 255);
    textSize(45);
    text("Game!", 1 * sectionwidth - sectionwidth / 2, 440);

    fill(255);
    textSize(45);
    text("Music!", 2 * sectionwidth - sectionwidth / 2, 440);

    fill(255, 0, 0);
    textSize(45);
    text("Art!", 3 * sectionwidth - sectionwidth / 2, 440);


    if (mousePressed)
    {
      if (mouseX >= gameButtonX && mouseX <= gameButtonX+200 && mouseY >= gameButtonY && mouseY <= gameButtonY+200)
      {

        screen = 1;
        background(255);
      }
      if (mouseX >= musicButtonX && mouseX <= musicButtonX+200 && mouseY >= musicButtonY && mouseY <= musicButtonY+200)
      {
        screen = 2;
        background(255);
      }
      if (mouseX >= artButtonX && mouseX <= artButtonX+200 && mouseY >= artButtonY && mouseY <= artButtonY+200)
      {
        screen = 3;
        background(0);
      }
    }
  }

  if (screen == 1)
  { 
    fill(0);
    textSize(15);
    text("#1 = square", 10, 27);

    fill(0);
    textSize(15);
    text("#2 = circle", 1350, 15);

    fill(0);
    textSize(15);
    text("#3 = triangle", 1340, 890);

    fill(0);
    textSize(15);
    text("#4 = rectangle", 10, 875);

    fill(0);
    textSize(15);
    text("Up key = up", 10, 12);

    fill(0);
    textSize(15);
    text("Down key = down", 1305, 30);

    fill(0);
    textSize(15);
    text("Left key = left", 1330, 870);

    fill(0);
    textSize(15);
    text("Right key = right", 10, 890);

    fill(0);
    textSize(15);
    text("Enter = Erase", 700, 20);

    if (shapeMode ==1)
    {
      rect(x, y, 10, 10);
    }
    if (shapeMode ==2)
    {
      ellipse (x, y, 10, 10);
    }
    if (shapeMode ==3)
    {
      triangle (x, y, x-8, y+8, x+8, y+8);
    }
    if (shapeMode ==4)
    {
      rect(x, y, 10, 17.5);
    }
    if (x<1)
    {
      x=-3;
    }
    if (x>width-3)
    {
      x=width-3;
    }
    if (y< 1)
    {
      y=-3;
    }
    if (y>height-1)
    {
      y=height-3;
    }

    if (screen == 2)
    {
      playSongs();
      if (mousePressed)
      {
        xd = mouseX;
        yd = mouseY;
      }
    }

    if (screen == 3)
    {
      for (int i = 0; i < 500; i++)
      {
        fill(random(255), 255, 255);
        ellipse(ellipseX[i], ellipseY[i], 1, 1);
        ellipseX[i] = ellipseX[i] + (int) random(-3, 3);
        ellipseY[i] = ellipseY[i] + (int) random(-3, 3);
        noStroke();
        colorMode(HSB);
      }
    }
  }
}


//Start Game Project 1
void keyPressed()
{
  if ( key == CODED)
  {
    if (keyCode == LEFT)
    {
      x = x - 5;
      fill(random(255), random(255), random(255));
    }
    if (keyCode == RIGHT)
    {
      x = x + 5;
      fill(random(255), random(255), random(255));
    }
    if (keyCode == UP)
    {
      y = y - 5;
      fill(random(255), random(255), random(255));
    }
    if (keyCode == DOWN)
    {
      y = y +5;
      fill(random(255), random(255), random(255));
    }
  }
  if (key == ENTER)
  {
    fill(0);
    textSize(15);
    text("#1 = square", 10, 27);

    fill(0);
    textSize(15);
    text("#2 = circle", 1350, 15);

    fill(0);
    textSize(15);
    text("#3 = triangle", 1340, 890);

    fill(0);
    textSize(15);
    text("#4 = rectangle", 10, 875);

    fill(0);
    textSize(15);
    text("Up key = up", 10, 12);

    fill(0);
    textSize(15);
    text("Down key = down", 1305, 30);

    fill(0);
    textSize(15);
    text("Left key = left", 1330, 870);

    fill(0);
    textSize(15);
    text("Right key = right", 10, 890);

    fill(0);
    textSize(15);
    text("Enter = Erase", 700, 20);

    x = width/2;
    y = height/2;
  }

  {
    if (key == '1')
    {
      shapeMode = 1;
    }
    if (key == '2')
    {
      shapeMode =2;
    }
    if (key == '3')
    {
      shapeMode =3;
    }
    if (key == '4')
    {
      shapeMode=4;
    }
  }
}
//End Game Project 1

// Start Music Project 2
void playSongs()
{
  for (int i = 0; i < 17; i++)
  {
    fill(0);
    rect (SquareX [i], SquareY [i], 50, 50);

    if (xd > SquareX [i] && xd < SquareX [i]+50 && yd > SquareY [i] && yd < SquareY [i]+ 50)
    {
      println(Songs[i]);
      Songs[i].play();
    } else
    {
      Songs[i].pause();
    }
  }
}
// End Music Project 2