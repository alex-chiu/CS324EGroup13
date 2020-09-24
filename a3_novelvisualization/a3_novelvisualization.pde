PFont courier;
//PFont sylfaen;
//PFont chiller;
String s = "";
String[] sArray = null;
float rand = 0.0;
int rgb = 0;
int count = 0;
int x1 = 10;
int x2 = 10;
int y1 = 10;
int y2 = 10;
int color1 = 0;
int color2 = 0;
int color3 = 0;

void setup() {
  size(700, 600);
  courier = createFont("Courier", 32);
  sylfaen = createFont("Sylfaen", 32);
  chiller = createFont("Chiller", 32);
}

void draw() {
  String[] lines = loadStrings("uniquewords.txt");
   for (int i = 0; i < 50; i++)
   {
    rand = random(lines.length);  //set rand to be a random num between 0 and our last line in file
    s = lines[int(rand)] + " ";  //set s to be a string of the word in the line plus a space
    color1 = 0;  //initialize the three colors we'll be using
    color2 = 0;
    color3 = 0;
    rgb = int(random(100) % 3);  //rgb will give us a random number between 1-3
    if (rgb == 1){
       color1 = 255;  //our first color
    }
    else if(rgb == 2) {
      color2 = 255;  //second color
    }
    else {
       color3 = 255;  //third color
    }
    //print("rgb: " + rgb + ' ');  //for test purposes
    //print("color1: " + color1 + ' ');  //for test purposes
    //print("color2: " + color2 + ' ');  //for test purposes
    //print("color3: " + color3 + ' ');  //for test purposes
    fill(color1, color2, color3);  //uses the three colors to fill the text
    textFont(courier);
    //print(s + '\n');  //for test purposes
    //print(x1 + " " + y1 + " " +  x2 + " " + y2 + '\n');  //for test purposes
    if (x1 + int(textWidth(s)) > width){  //checks to see if word will run off screen
      y1 += 50;  //sets y-coord to the next line 
      x1 = 10;  //resets x-coord to beginning of the line
    }
    text(s, x1, y1, 700, 600); 
    x1 += s.length() * 18;  //the line spacing, can modify
   }
  noLoop();
}
