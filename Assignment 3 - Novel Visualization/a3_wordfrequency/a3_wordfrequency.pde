float blockHeight = 0.0;
float numLines = 0.0;

void setup() {
  size(700, 600);
}

void draw() {
  String[] lines = loadStrings("wordfrequency.txt");
  numLines = lines.length;
  blockHeight = 600.0 / numLines;
  for (int i = int(numLines) - 1; i >= 0; i--){
      String numWords = lines[i].substring(lines[i].indexOf(" ")+1);
      numWords.trim();
      int num = Integer.parseInt(numWords);
      println(numWords + " " + num);
      //if (num == 1)
        rect(width / 2 - num / 4, (numLines - i - 1) * blockHeight, num / 2, blockHeight);
      //if (num == 1202)
        //rect(num / 4, i * blockHeight, num / 2, blockHeight);
  }
  //rect(0,0,10,blockHeight);
  //rect(0,0 + blockHeight,10,blockHeight);
  //rect(0,blockHeight + blockHeight,10,blockHeight);
  //rect(0,blockHeight + blockHeight,10,blockHeight);
  //print(lines.length);
  println(blockHeight);

  noLoop();
}
