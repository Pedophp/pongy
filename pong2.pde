float x, y, speedX, speedY, rect1y , rect2y;
float diam = 10;
float rectSize = 200;
float y1 , y2;


void setup() {
 size(500,500);
  fill(0, 255, 0);
  reset();
}

void reset() {
  x = width/2;
  
  y = height/2;
  speedX = random(3, 5);
  speedY = random(3, 5);
}

void draw(){
  

/*background(123);
textAlign(CENTER);
fill(0);
textSize(25);
text("PRESS ANY KEY TO START",width/2,height/2);*/
if (keyPressed) {
    if (key == 'w') {
      y2 -= 14;
    }
    if( key == 's'){
    y2 += 14;
    }
    y2 = constrain(y2,-20,height);
    if(key == 'o'){
    y1 -= 14;
    }
    if(key == 'k'){
    y1 += 14;
    }
    y1 = constrain(y1,-20,height);
}

background(0);
circle (x,y,diam);
rect(width-30, y1 - rectSize/2, 10, rectSize);
rect(30, y2 - rectSize/2, 10, rectSize);
check();
 x += speedX;
 y += speedY;

if ( x > width-30 && x < width -20 && y > y1-rectSize/2 && y < y1+rectSize/2 ) {
    speedX = -speedX;
  } 
  
  
if ( x < 40 && x > 20 && y > y2-rectSize/2  &&  y < y2+rectSize/2 ){//&& x > 20 && y < mouseY-rectSize/2 && y > mouseY+rectSize/2 ) {
    speedX = speedX * -1.1;
    //speedY = speedY * -1.1;
    x += speedX;
  }   
  
  
if ( y > height || y < 0 ) {
  speedY = -speedY;
 }
}





void check(){
if(x > width+10 || x < 0){
reset();
  
}

}



/*void keyPressed(){
if(key == 'w'){
y2 -= 13;
} else if(key == 's'){
y2 += 13;
}
y2 = constrain(y2,-20,height);

if(key == 'o'){
y1 -= 13;
}else if(key == 'k'){
y1 += 13;
}
y1 = constrain(y1,-20,height);


}*/
