class Ball{
  
float xVal = width/2;
float yVal = height/2;
//horizontal component
float xSpeed = random(-5,5);
//vertical component 
float ySpeed =  5;

//keeps track of the scores 
int scoreOne;
int scoreTwo;

void change(){
 
    xVal += xSpeed;
    yVal += ySpeed;
    
    textSize(50);
    text("Score " +scoreOne, 500, 50);
    text("Score " +scoreTwo, 815, 50);

    //wall physics
    
 if(xVal<0)
    {
      scorePlayerTwo();
    }
    if(xVal>width)
    {
      scorePlayerOne();
    }
    if(yVal>height||yVal<0)
    {
            ySpeed = -ySpeed;

      }
    //paddle/rect motion// left rect 
    if((xVal-(50/2)<=(25+35))&&(xVal-(50/2)>=(25)  && (yVal+25>=getPlayerOne()&& yVal-25<=getPlayerOne()+200)))
    {
      if(xSpeed<0)
      xSpeed = -xSpeed+0.5;
      if(ySpeed>0)
      ySpeed = -ySpeed-0.5;
       if(ySpeed<0)
      ySpeed = -ySpeed+0.5;
      
    }
    //right rect 
     if((xVal+(50/2)>=1430)&&((xVal+(50/2)<=1430+35))   && (yVal+25>=getPlayerTwo()&& yVal-25<=getPlayerTwo()+200))
    {
      if(xSpeed>0)
      xSpeed = -xSpeed-0.5;
      if(ySpeed>0)
      ySpeed = -ySpeed-0.5;
      if(ySpeed<0)
      ySpeed = -ySpeed+0.5;
    }


    
  }
  
void make(){
    ellipse(xVal, yVal, 50,50);
    
  }
void scorePlayerOne()
{
 //reseting rect
  setPlayerOne();
  setPlayerTwo();
  
  text("",0,0);
  
  // resetting ball 
   xVal = width/2;
   yVal = height/2;
 
 // who gets the ball 
   xSpeed = 5;
   ySpeed =  random(5,12);


 scoreOne++;
 
 if(scoreOne>2 && scoreOne>scoreTwo)
 {
   setStageP1(5);
 }
}
void scorePlayerTwo()
{
  //reseting rect
  setPlayerOne();
  setPlayerTwo();
  
  
  //resetting ball
  xVal = width/2;
  yVal = height/2;

  //whose ball is it 
  xSpeed =  -5;
  //y-speed
  ySpeed =  random(5,12);

  //increment score 
  scoreTwo++;
  
  
  if(scoreTwo>2 && scoreTwo>scoreOne)
 {
   setStageP2(10);
 }
}


}
