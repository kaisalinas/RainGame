int score = 0;
int randomNumber = (int) random(width);
int raindropy = 10;
void setup(){

size(1000, 1000);

}
void draw() {
background(255, 0, 0);
fill(0, 0, 255);
stroke(0, 0, 255);
ellipse(randomNumber, raindropy, 50, 50);
raindropy+=10;
if(raindropy> 1000){
raindropy = 1;
randomNumber = (int) random(width);
}

rect(mouseX, 900, 75, 75);
checkCatch(mouseX);



}

void checkCatch(int x){
     if (x > mouseX && x < mouseX+100)
          score++;
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); }
