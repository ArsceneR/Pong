import sun.security.util.Length;
PImage pic; 
PImage hand;
float playerOneY=400;
float playerTwoY=400;
int stage = 0; 



Ball bob;


void setup()
{
size (1500,1000);
bob = new Ball();
pic = loadImage("picture.png");
hand = loadImage("hand.png");


}
float getPlayerOne(){
  return playerOneY;
}
float getPlayerTwo(){
  return playerTwoY;
}
void setPlayerOne(){
  playerOneY = 400;
}
void setPlayerTwo(){
  playerTwoY = 400;
}
void setStageP1(int x)
{
  stage = x ;
}
void setStageP2(int x)
{
  stage = x ;
}
  
  
  
void draw(){
  
  if(stage==0)
  {
    pic.resize(1500,1000);
    image(pic, 0, 0);
    fill(0);
    rect(1270, 408, 60,55);
    hand.resize(450,400);
    image(hand, 525, 550);
    fill(255,255,255);
    ellipse(width/2, height/2+30 , 50,50);
    //
    
    
    
  }
  if(stage ==1)
  {
  background(0);
  stroke(255);
  line(750,0,750,1000); 
  
  noStroke();
  fill(0,0,255);
  rect(25,playerOneY,35,200);
  
  fill(255,0,0);
  rect(1430,playerTwoY,35,200);
  
  fill(255);
  bob.change();
  bob.make();
  }
  
 if(stage == 5 )
  {
    background(0);
    fill(0,0,255);
    textSize(100);
    strokeWeight(100);
    text("Blue Won!!", 495 , 550);
  }
 if(stage == 10 )
  {
    background(0);
    fill(255,0,0);
    textSize(150);
    strokeWeight(100);
    text("Red Won!!", 435 , 550);
  }
}
void keyPressed()
{
  
  if(key == 'W'||key =='w')
  {
    playerOneY -=15;
    if(playerOneY < 0)
    {
      playerOneY=0;
    }
  }
  if(key=='S'||key=='s')
  {
    playerOneY +=15;
    if(playerOneY+200 >height)
    {
      playerOneY = playerOneY-(playerOneY+200-height);
    }
  }
  if(keyCode==UP)
  {
    playerTwoY -=15;
    if(playerTwoY<0)
    {
      playerTwoY = 0;
    }
  }
  if(keyCode==DOWN)
  {
    playerTwoY +=15;
    if(playerTwoY+200> height)
    {
        playerTwoY = playerTwoY-(playerTwoY+200-height);
    }
  }
  
  
}
void mousePressed()
{
  if(mouseX>=450 && mouseX <= 975 && mouseY >= 550&& mouseY <= 950&& stage == 0)
  {
    stage ++;
  }
  
}




/*
  
  xVal += xSpeed;
  if(xVal>width||xVal<0)
  {
    xSpeed = -xSpeed;
  }
  ellipse(xVal,500,50,50);
  */
