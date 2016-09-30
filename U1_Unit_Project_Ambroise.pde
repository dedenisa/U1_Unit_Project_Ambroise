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

void setup()
{
  fullScreen();
  background(0);
  game = loadImage("Game.jpg");
  music = loadImage("Music.jpg");
  art = loadImage("Art.jpg");
  art.resize(200, 200);
  sectionwidth = width/3;
  sectionheight = height/3;

  imageMode(CENTER);

  gameButtonX = 1 * sectionwidth - sectionwidth / 2;
  image(game, gameButtonX, 600, 200, 200);

  image(music, 2 * sectionwidth - sectionwidth / 2, 600, 200, 200);
  image(art, 3 * sectionwidth - sectionwidth / 2, 600);
}

void draw()
{
  textAlign(CENTER);
  fill(0, 255, 0);
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
    if (mousePressed & mouseX >=  80 & mouseX <= 1350 & mouseY >= 80 & mouseY <= 800)
      if (mousePressed & mouseX >= 80 & mouseX <= 1350 & mouseY >= 80 & mouseY <= 800)
        if (mousePressed & mouseX >= 80 & mouseX <= 1350 & mouseY >= 80 & mouseY <= 800)


          fill(0, 255, 0);
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
  }
  if (screen == 1)
  {
  }

  if (screen == 2)
  {
  }

  if (screen == 3)
  {
  }
}