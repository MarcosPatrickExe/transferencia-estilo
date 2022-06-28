PImage img;
PImage img2;
int somaT;

void setup() {
  size(800, 450);
  fill(0); //fill(255, 10, 80);
  background(255);
  rectMode(CENTER);
  img = loadImage("mary.jpg");
  img2 = createImage(img.width, img.height, RGB);
  
  for (int y = 0; y < height; y++) {
    for (int x = 1; x < width; x++) {
      float r = red(img.get(x, y));
      float g = green(img.get(x, y));
      float b = blue(img.get(x, y));
      float grey = (r+g+b)/3;
      img2.set(x, y, color(grey, grey, grey));
      somaT += grey; //soma das medias
    }
  }
  
   drawForms();
}


void coress(float l){
        colorMode(RGB, 255, 255, 255);
          
        

        final float gray  = 127.5;
  
        if( l>0.5 ){
            fill(gray -100);
            
        }else if( l>0.4 && l<=0.5 ){
            fill(gray - 50);
            
        }else if( l<=0.4 && l>=0.2 ){
            fill(gray);
            
        }else if( l<0.2 && l>=0.1 ){
            fill( gray +70 );
        }
        
        else if( l<0.1 ){
            fill( 255 ); // CINZA fill( gray +127.5 );
            // fill(0, 220, 251); // COR NORMAL
        }
 
  
  
  /*
        colorMode(HSB, 360, 100, 100);
  
        if( l>0.5 ){
            fill(262, 91, 11);
            
        }else if( l>0.4 && l<=0.5 ){
         //   colorMode(RGB, 255, 255, 255);
            fill(276, 100, 94);
            
        }else if( l<=0.4 && l>=0.2 ){
            fill(290, 100, 86);
            
        }else if( l<0.2 && l>=0.1 ){
            fill(248, 50, 100);//amalero
        }
        
        else if( l<0.1 ){
            fill(308, 100, 70);//amalero
        }
    */      
          
          
          
      noStroke();
 //     strokeWeight(0.1);
}

void drawForms(){
  int g = 3;//distancia dos quadradinhos
  
  for (int y = g/2; y < height; y+=g)
    for (int x = g/2; x < width; x+=g){
        float media = mediaVizinha(img, x, y, g);
        img2 = pintaVizinhos(img, x, y, g, media);
       
        float l = (255 - media)/255;// quanto mais escuro, maior o quadrado
        // circle(x,y, l*9);
        
        // cores de "Obama hope": (113, 150, 159) azul claro, (215, 26, 33) vermelho, 
        //                         (252, 228, 168) pele,      (4, 52, 75) azul escuro
        
        coress(l);

        l=g;// antes era 1

       // quadC(x,y,l*3); //funcao
        
          rect(x,y, l*9, l*9);// quadrados escuros serao desenhados caso a media for 0
        // caso a media seja 255, nada sera desenhado
    }
}


void draw() {
  // image(img2, 0, 0);
}





void quadC(int x, int y,float l){
     quad(x,y-l/2,x+l/2,y,x,y+l/2,x-l/2,y);
}



float mediaVizinha(PImage img, int x, int y, int grupo) {
  int soma=0;
  int d = grupo/2;
  
  for (int i = x-d; i<=x+d; i++)
    for (int j = y-d; j<=y+d; j++)
    
      if ( (i>0 && i<width) && (j>0 && j<height)) 
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
