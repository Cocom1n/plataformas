PVector posPlataforma;
float angulo1, angulo2, angulo3;
float deltaTime, seg;
void setup(){
  size(600,600);
  textSize(20);
  posPlataforma = new PVector(width/3, height/3);
  deltaTime = 1.0/round(frameRate);
}

void draw(){
  background(0);
  seg+=deltaTime;
  fill(255);
  text("Segundos:" + millis()/1000,20,580);

  //plataforma vertical
  angulo1 = PVector.angleBetween(new PVector(0,1),new PVector(width/3,posPlataforma.y));
  posPlataforma.y += sin(seg);
  fill(255,0,0);
  stroke(255,0,0);
  rect(150,posPlataforma.y,100,20);
  text("Angulo1: " + angulo1,20,560);
  line(0,0,150,posPlataforma.y);
  
  //plataforma horizontal
  angulo2 = PVector.angleBetween(new PVector(0,1),new PVector(posPlataforma.x,height/3));
  posPlataforma.x += cos(seg)*3;
  fill(127,0,255);
  stroke(127,0,255);
  rect(posPlataforma.x,150,100,20);
  text("Angulo2: " + angulo2,20,540);
  line(0,0,posPlataforma.x,150);
  
  
  
  //plataforma vertical que recore mas distancia
  float aux = posPlataforma.y *2-200;
  angulo3 = PVector.angleBetween(new PVector(0,1),new PVector(300,aux));
  fill(127);
  stroke(127);
  rect(300,aux,100,20);
  text("Angulo3: " + angulo3,20,520);
  line(0,0,300,aux);
  
}
