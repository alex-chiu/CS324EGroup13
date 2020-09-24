PFont goudy;
String[] sArray;
color[] colors = new color[3];
int x;
int y;
int index = 0;
float textColor;
boolean filled = false;

void setup() {
  size(700, 600);
  
  // Set font
  goudy = createFont("Goudy Old Style Bold", 32);
  textFont(goudy);
  
  // Create colors
  color c1 = color(102.0, 102.0, 255.0);
  color c2 = color(0.0, 204.0, 153.0);
  color c3 = color(255.0, 153.0, 102.0);
  colors[0] = c1;
  colors[1] = c2;
  colors[2] = c3;
  
  // Draw words
  drawWords();
}

void draw(){}

// Function that generates a set of random words
String[] randomWords() {
  String[] lines = loadStrings("uniquewords.txt");
  String[] randomStrings = new String[lines.length];
  for (int i = 0; i < randomStrings.length; i++) {
    float rand = random(lines.length); 
    String s = lines[int(rand)] + " ";
    randomStrings[i] = s;
  }
  return randomStrings;
}

// Redraws screen when mouse is pressed
void mousePressed() {
  drawWords();  
}

// Function that draws words on screen
void drawWords() {
  // Set background
  background(255.0, 255.0, 204.0);
  
  // Reset parameters
  index = 0;
  filled = false;
  
  // Obtain array of random words
  sArray = randomWords();
  
  x = 15;
  y = 0;
  
  while(!filled) {
    textColor = random(0, 3);
    int colorIndex = int(textColor);
    fill(colors[colorIndex]);
    text(sArray[index], x, y, 700, 600);
    x += sArray[index].length() * 16;
    if ((x + sArray[index + 1].length() * 16) >= width) {
      x = 15;
      y += 40;
    }
    if (y >= height) {
      filled = true; 
    }
    index++;
  }
}
