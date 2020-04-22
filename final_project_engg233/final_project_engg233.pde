//ENGG 233 Final Term Project - Athul + Khanh //<>//

void setup() {
  FileIO data = new FileIO();
  size(1600, 600);
  background(150);
  buttons();
  data.drawX();
  drawY();
}

void draw() {
  FileIO data = new FileIO();
  if (drawBar != true && drawScatter != true)
    data.reset();
  else if (drawBar == true && drawScatter != true && Show_Snowfall == true) {
    data.drawBar();
    data.Show_Snowfall();
  } else if (drawBar != true && drawScatter == true && Show_Snowfall == true) {
    data.drawScatter();
    data.Show_Snowfall();
  } else if (drawBar == true && drawScatter != true)
    data.drawBar();
  else if (drawBar != true && drawScatter == true)
    data.drawScatter();
  else {
    BarChart.setOff();
    ScatterPlot.setOff();
  }
}

//Y-AXIS
void drawY() {
  strokeWeight(2);
  textSize(12);
  for (int i = 25, j = 150; i  >= -15; i-=5, j += 51) {
    text(i, 75, j);
    line(100, 0, 100, 600);
  }
  pushMatrix();
  translate(45, 450);
  rotate(3*PI/2);
  textSize(24);
  text("Temperature (°C)", 0, 0);
  popMatrix();
}
