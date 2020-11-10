float upKey;
float downKey;
float rightKey;
float leftKey;
float playerX = 100;
float playerY = 400;
float playerVelocityX = 0;
float playerVelocityY = 0;
float playerMoveSpeed = 5;
float playerSize = 50;
boolean isPaused;

void setup()
{
  size(1000, 600);
  smooth();
}

void draw()
{
  background(0);
  if(isPaused){
    playerVelocityX = 0;
    playerVelocityY = 0;
  }
  else{
    playerVelocityX = (rightKey - leftKey) * playerMoveSpeed;
    playerVelocityY = (downKey - upKey) * playerMoveSpeed;
    playerX += playerVelocityX;
    playerY += playerVelocityY;
  }
    rect(playerX, playerY, playerSize, playerSize);
}

void keyReleased()
{
  if (keyCode == LEFT)
    leftKey = 0;
  if (keyCode == RIGHT)
    rightKey = 0;
  if (keyCode == UP)
    upKey = 0;
  if (keyCode == DOWN)
    downKey = 0;
}
 
void keyPressed()
{
  if (keyCode == LEFT)
    leftKey = 1;
  if (keyCode == RIGHT)
    rightKey = 1;
  if (keyCode == UP)
    upKey = 1;
  if (keyCode == DOWN)
    downKey = 1;
}
