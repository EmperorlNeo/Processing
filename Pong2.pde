import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x=50;
int speedx=5;
int y=50;
int speedy=5;
void setup(){
size(800,800);
x=(int)random(width);
y=(int)random(height);
minim = new Minim (this);
sound = minim.loadSample("pong.wav", 128);
backgroundImage = loadImage("images.jpg");
}
void draw(){
background(175,168,168);
image(backgroundImage, 0, 0);
image(backgroundImage, 0, 0, width, height);
ellipse(x,y,20,20);
fill(255,3,3);
stroke(49,47,47);
rect(mouseX,750,75,15);

x+=speedx;
if(x>=width){
speedx=-speedx;}
if(x<=0){
speedx-=x;}
y+=speedy;
if(intersects(x,y,mouseX,750,75)){
speedx+=3;
speedy+=3;
sound.trigger();  
speedy=-speedy;}
if(y<=0){
speedy-=y;}
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}


