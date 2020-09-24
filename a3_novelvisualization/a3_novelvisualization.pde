PFont courier;
PFont sylfaen;
PFont chiller;
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
    rand = random(lines.length);
    s = lines[int(rand)] + " ";
    color1 = 0;
    color2 = 0;
    color3 = 0;
    rgb = int(random(100) % 3);
    if (rgb == 1){
       color1 = 255;
    }
    else if(rgb == 2) {
      color2 = 255;
    }
    else {
       color3 = 255;
    }
    print("rgb: " + rgb + ' ');
    print("color1: " + color1 + ' ');
    print("color2: " + color2 + ' ');
    print("color3: " + color3 + ' ');
    fill(color1, color2, color3);
    textFont(courier);
    print(s + '\n');
    print(x1 + " " + y1 + " " +  x2 + " " + y2 + '\n');
    if (x1 > 500){
      y1 += 50;
      x1 = 10;
    }
    text(s, x1, y1, 700, 600);
    x1 += s.length() * 18;
   }
  noLoop();
}
