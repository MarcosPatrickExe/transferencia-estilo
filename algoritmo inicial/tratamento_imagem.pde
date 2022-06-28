PImage img;
PImage img2 = createImage(800, 450, RGB);
int somaT;
void setup() {
  size(800, 450);
  noStroke();
  fill(0);
  background(255);
  rectMode(CENTER);
  img = loadImage("mary.jpg");
  for (int y = 0; y < height; y++) {
    for (int x = 1; x < width; x++) {
      float r = red(img.get(x, y));
      float g = green(img.get(x, y));
      float b = blue(img.get(x, y));
      float grey = (r+g+b)/3;
      img2.set(x, y, color(grey, grey, grey));
      somaT += grey;
    }
  }
  int g = 3;
  for (int y = g/2; y < height; y+=g)
    for (int x = g/2; x < width; x+=g){
      float media = mediaVizinha(img, x, y, g);
      //img2 = pintaVizinhos(img, x, y, g, media);
      float l = (255 - media)/255;
      circle(x,y,l*9);
      //quadC(x,y,l*9);
      rect(x,y,l*9,l*9);
    }
}

void draw() {
  //image(img2, 0, 0);
}

float mediaVizinha(PImage img, int x, int y, int grupo) {
  int soma=0;
  int d = grupo/2;
  for (int i = x-d; i<=x+d; i++)
    for (int j = y-d; j<=y+d; j++)
      if (i>0 && i<width && j>0 && j<height) 
        soma += red(img.get(i, j));
  return soma/sq(grupo);
}
PImage pintaVizinhos(PImage img, int x, int y, int grupo, float media) {
  int d = grupo/2;
  for (int i = x-d; i<=x+d; i++)
    for (int j = y-d; j<=y+d; j++)
      if (i>0 && i<width && j>0 && j<height)
        img.set(i, j, color(media, media, media));
  return img;
}

void quadC(int x, int y,float l){
  quad(x,y-l/2,x+l/2,y,x,y+l/2,x-l/2,y);
}
