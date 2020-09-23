float blockHeight = 0.0;
float numLines = 0.0;

void setup() {
  size(700, 600);
}

void draw() {
  String[] lines = loadStrings("wordfrequency.txt"); //gets number of lines in our text file
  numLines = lines.length;  //store number of lines as a variable
  blockHeight = 600.0 / numLines;  //set each block's height to the max height divided by how many lines we have, our case we have 117 lines
  for (int i = int(numLines) - 1; i >= 0; i--){  //we're going to work from bottom to top, number of line times, i is initially (numLines - 1) because we're starting from the top of the block. so given 117 lines, we start from 116 and add blockHeight to our height to reach 117 (the bottom of the screen), then 115-116, 114-115, until 0-1 (the top of screen)
      String numWords = lines[i].substring(lines[i].indexOf(" ")+1);  //this just takes each line from our wordfrequency.txt and leaves only the right side of the colon (the num words with frequency)
      numWords.trim();
      int num = Integer.parseInt(numWords);  //have to convert the string to int
      println(numWords + " " + num);
      //if (num == 1) //for test purposes
        rect(width / 2 - num / 4, (numLines - i - 1) * blockHeight, num / 2, blockHeight);
      //if (num == 1202) //for test purposes
        //rect(num / 4, i * blockHeight, num / 2, blockHeight); // for test purposes
  }
  //rect(0,0,10,blockHeight); // for test purposes
  //rect(0,0 + blockHeight,10,blockHeight); // for test purposes
  //rect(0,blockHeight + blockHeight,10,blockHeight); // for test purposes
  //rect(0,blockHeight + blockHeight,10,blockHeight); // for test purposes
  //print(lines.length); // for test purposes
  println(blockHeight);

  noLoop();
}
