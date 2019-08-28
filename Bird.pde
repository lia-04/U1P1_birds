class Bird 
{
  PImage _image;
  float _x;
  float _y;

  //constructor (Overloaded to take a PImage)
  Bird(PImage bird)
  {
    _image = bird;
  }

  Bird(PImage bird, float x, float y)
  {
    _image = bird;
    _x = x;
    _y = y;
  }

  void Draw()
  {
    image(_image, _x, _y);
  }
}
