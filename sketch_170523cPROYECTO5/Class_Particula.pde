class particula
{
  float x,y, v,t;
  color c;
  
  particula(float x_, float y_, color c_ ,float t_, float v_) 
  {
    x = x_;
    y = y_;
    c = c_;
    t = t_;
    v = v_;
  }
  
  particula()
  {
    x = random(780); //POSICIÓN EN X
    y = random(650); //POSICIÓN EN Y
    t = random(0,20); //TAMAÑO
    c = color(random(150), random(350), random(550)); //COLOR
     v = random(50); //VELOCIDAD
  }
  
  particula(float x_, float y_)
  {
    x = x_;
    y = y_;
    c = color(random(500));
    v = random(400);
  }
  
  void display()
  {
    pushMatrix();
    translate(x,y);
    fill(c);
    ellipse (-100,-100,-1,5); 
    noStroke();
    popMatrix();
  }
  
  void movimiento()
  {
    x += random(-c,v);
    y -= random (-c,v);
  }
}