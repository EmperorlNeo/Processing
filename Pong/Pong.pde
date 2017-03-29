int x=50;
int speedx=5;
void setup(){
 size(800,800);

}
void draw(){
 background(175,168,168);
 ellipse(x,50,20,20);
 fill(0,0,0);
 stroke(49,47,47);
x+=speedx;
if(x>=width){
speedx=-speedx;}

}
