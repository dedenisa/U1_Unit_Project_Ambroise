int x;
int y;
int xDirection =1;
int shapeMode = 1;

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

void setup()
{
  // Start Cover Screen
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
  minim = new Minim(this);
  song = minim.loadFile("Sad Song Piano.mp3");
  song.loop();
  for (int i = 0; i < 50; i++)
  {
    ellipseX [i] = (int) random (0, width - 50);
    ellipseY [i] = (int) random (0, height -50);
  }
  colorMode(HSB);
  // End Art Project 3

  //Start Game Project 1
  fullScreen();
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
}

void draw()
{
  textAlign(CENTER);
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

  if (screen == 0)
  {
    if (mousePressed)
    {
      if (mouseX >= gameButtonX && mouseX <= gameButtonX+200 && mouseY >= gameButtonY && mouseY <= gameButtonY+200)
      {
        screen = 1;
      }
      if (mouseX >= musicButtonX && mouseX <= musicButtonX+200 && mouseY >= musicButtonY && mouseY <= musicButtonY+200)
      {
        screen = 2;
      }
      if (mouseX >= artButtonX && mouseX <= artButtonX+200 && mouseY >= artButtonY && mouseY <= artButtonY+200)
      {
        screen = 3;
      }
    }
  }
  if (screen == 1)
  {
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
  }

  if (screen == 2)
  {
    fill(0);
    playSongs();
    if (mousePressed)
    {
      x = mouseX;
      y = mouseY;
    }
  }

  if (screen == 3)
  {
    keyPressed();
    float x = random(width);
    float y = random(height);
    if (enter == false)
      if (restart == false)
      {
        for (int i = 0; i < 500; i++)
        {
          fill(random(255), 255, 255, 255 );
          ellipse(ellipseX[i], ellipseY[i], 1, 1);
          ellipseX[i] = ellipseX[i] + (int) random(-3, 3);
          ellipseY[i] = ellipseY[i] + (int) random(-3, 3);
          noStroke();
        }
      }
  }
}
void playSongs()
{
  for (int i = 0; i < 17; i++)
  {
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

void keyPressed()
{ 
  if (key == DOWN)
  {
  } else if (key == DOWN && restart == true)
  {
    restart = false;
  }
  if (key == ENTER)
  {
  } else if (key == ENTER && enter == true)
  {
    enter = false;
  }
}