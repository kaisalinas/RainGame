int score = 0;
int randomNumber = (int) random(width);
int raindropy = 10;
boolean gameOver = false;
void setup(){

size(1000, 1000);

}
void draw() {
background(255, 0, 0);
fill(0, 0, 255);
stroke(0, 0, 255);
ellipse(randomNumber, raindropy, 50, 50);
if(gameOver == false){
raindropy+=15;
}
else{
  raindropy = 1;
text("Game Over", 500, 500);
}
checkCatch(randomNumber);

if(raindropy> 950){
 gameOver = true;
}

rect(mouseX, 900, 75, 75);



     fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
}

void checkCatch(int x){
     if (x > mouseX && x < mouseX+100 && raindropy>900 ){
          score++;
            raindropy+=10;
raindropy = 1;
randomNumber = (int) random(width);
     }

}