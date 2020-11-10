float upKey;
float downKey;
float rightKey;
float leftKey;
float playerX = 100;
float playerY = 400;
float tempPlayerX;
float tempPlayerY;
float playerVelocityX = 0;
float playerVelocityY = 0;
float playerMoveSpeed = 5;
float playerJumpSpeed = -5;
float playerSize = 50;
float gravity = 0.2;
boolean onGround;
boolean isPaused;

void setup()
{
  size(1000, 600);
  smooth();
}

void draw()
{
  background(0);
  tempPlayerX = playerX;
  tempPlayerY = playerY;
  if (playerX <= 0)
    playerX = 0;
  if (playerY >= 400){
    playerY = 400;
    onGround = true;
  }
  else{
    playerVelocityY += gravity;
    onGround = false;
  }
    playerVelocityX = (rightKey - leftKey) * playerMoveSpeed;
    playerX += playerVelocityX;
    playerY += playerVelocityY;
    rect(0, 450, 1000, 150);
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
}
 
void keyPressed()
{
  if (key == ' ' && onGround || keyCode == UP && onGround)
    playerVelocityY = playerJumpSpeed;
  if (keyCode == LEFT)
    leftKey = 1;
  if (keyCode == RIGHT)
    rightKey = 1;  
}
