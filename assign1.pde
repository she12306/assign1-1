int x,y,w,x1,y1,x2;
PImage bg1Image;
PImage bg2Image;
PImage enemyImage;
PImage fighterImage;
PImage treasureImage;
PImage hpImage;

void setup(){
  size(640,480);
  bg1Image=loadImage("img/bg1.png");
  bg2Image=loadImage("img/bg2.png");
  enemyImage=loadImage("img/enemy.png");
  fighterImage=loadImage("img/fighter.png");
  treasureImage=loadImage("img/treasure.png");
  hpImage=loadImage("img/hp.png");
  y=floor(random(30,410));
  w=floor(random(10,193));
  x1=floor(random(10,550));
  y1=floor(random(50,410));
  x=10;
}

void draw(){
  image(bg2Image,x2,0);
  image(bg1Image,x2-640,0);
  image(bg2Image,x2-1280,0);
  image(enemyImage,x,y);
  image(treasureImage,x1,y1);
  image(fighterImage,570,240);  
  fill(#FF0000);
  stroke(#FF0000);
  rect(22,14,w,15,3);
  image(hpImage,10,10);
  x+=5;
  x%=640;
  x2++;
  x2%=1280;
 
}
