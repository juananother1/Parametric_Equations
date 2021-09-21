float d;

int LINE_COUNT = 10;

void setup()
{
  size(800, 800);
}
void draw()
{
  background(0);
  stroke(255);
  strokeWeight(5);
  translate(width/2, height/2);

  for (int i=0; i < LINE_COUNT; i++)
  {
    line(x1(d + i), y1(d + i), x2(d + i), y2(d + i));
  }
  d+=0.5;
}

float x1(float d)
{
  return sin(d/7) * 100;
}
float y1(float d)
{
  return sin(d/15) * 100 + cos(d/7) * 350;
}
float x2(float d)
{
  return cos(d/25) * 250 + tan(d/15) * 250;
}
float y2(float d)
{
  return cos(d/7) * 250 + sin (d/7) * 100;
}
