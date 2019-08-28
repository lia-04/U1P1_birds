PImage birdImage;
//Bird thisIsOneBird;

Bird allTheBirds[];

void setup()
{
  size(800, 800);
  birdImage = loadImage("bird1.png");
  birdImage.resize(100, 100);
  allTheBirds = new Bird [20];
  //thisIsOneBird = new Bird(birdImage, random(800), random(800));

  for (int i=0; i<20; i++)
  {
    allTheBirds[i] = new Bird(birdImage, random(800), random(800));
  }
}

void draw()
{
  //thisIsOneBird.Draw();

  for (int i=0; i<20; i++)
  {
    allTheBirds[i].Draw();
    if ( mouseX > allTheBirds[i]._x)
    {
      if ( mouseX < allTheBirds[i]._x + 100)
      {
        if ( mouseY > allTheBirds[i]._y)
        {
          if ( mouseY < allTheBirds[i]._y+100)
          {
            background(255, 0, 0);
          }
        }
      }
    }/*
    if ( mouseX < allTheBirds[i]._x)
    {
      if ( mouseX > allTheBirds[i]._x + 100)
      {
        if ( mouseY < allTheBirds[i]._y)
        {
          if ( mouseY > allTheBirds[i]._y+100)
          {
            background(0);
          }
        }
      }
    }*/
  }
}
