import processing.sound.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
SoundFile file;

Minim minim;
AudioPlayer song;

float specLow = 100; 
float specMid = 100;  
float specHi = 100;


float scoreLow = 0;
float scoreMid = 0;
float scoreHi = 0;

float oldScoreLow = scoreLow;
float oldScoreMid = scoreMid;
float oldScoreHi = scoreHi;
float scoreDecreaseRate = 100;

ArrayList <particula> particulas;
float num = -8000000;

void setup()
{
  file = new SoundFile (this, "JuliaDream.mp3");
  file.play ();
  file.jump(4.5);
  fullScreen(P3D);
  background(50,200);
  noStroke();

  particulas = new ArrayList <particula>(); 
  
    for(int i = 0; i<300; i++)
  {
    particulas.add(new particula());
  }
  
}

void draw()
{
   oldScoreLow = scoreLow;
   oldScoreMid = scoreMid;
   oldScoreHi =  scoreHi;
  
   scoreLow = 0;
   scoreMid = 0;
   scoreHi = 0;
  
  translate (width/2, height/2); //Mi posición respecto al centro
  rotate(radians(num));
  for (int i= -90; i<-1; i+=10) //Incremento de mis particulas
  {
    for(particula p: particulas)
  {
    p.display();
   
  }
    
  }
  
  if (num <0) num += -113; //Determina si mi patrón gira a la izquierda o derecha y el patrón que forma en general
}