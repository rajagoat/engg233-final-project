class FileIO {
  String filePath = "CalgaryWeather.csv";
  Table dataTable;

  FileIO () {
    dataTable = loadTable (filePath, "header");
  }

  //X-AXIS
  void drawX() {
    //strokeWeight(2);
    textSize(12);
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      int x = dataTable.getInt(i, 0);
      line(100, 400, 1600, 400);
      fill(255);
      text(x, 125 + 47.5*(i/12), 420);
    }
    textSize(24);
    text("Year", 775, 460);
  }

  //RESET FUNCTION
  void reset() {
    background(150);
    drawY();
    drawX();
  }

  //BARCHART
  void drawBar() {
    background(150);
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    if (Show_Max_Temp == true && Show_Min_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true) {
      for (int i = 0; i < dataTable.getRowCount(); i++) {
        temp.maxTemp = dataTable.getFloat(i, 2);
        fill(255, 0, 0);
        rect (120 + 4*i, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
      }
      for (int i = 0; i < dataTable.getRowCount(); i++) {
        temp.minTemp = dataTable.getFloat(i, 3);
        temp.maxTemp = dataTable.getFloat(i, 2);
        fill(0, 0, 255);

        rect (120 + 4*i, 400-(10*temp.minTemp), 4, 10*temp.minTemp);

        if (temp.maxTemp < 0) {
          fill(255, 0, 0);
          rect (120 + 4*i, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
        }
      }
    } else if (Show_Max_Temp == true && Show_Min_Temp == true) {
      if (january == true) 
        filterMonthBar(0);
      if (february == true) 
        filterMonthBar(1);
      if (march == true) 
        filterMonthBar(2);    
      if (april == true) 
        filterMonthBar(3);
      if (may == true) 
        filterMonthBar(4);      
      if (june == true) 
        filterMonthBar(5);      
      if (july == true) 
        filterMonthBar(6);            
      if (august == true) 
        filterMonthBar(7);              
      if (september == true) 
        filterMonthBar(8);                
      if (october == true) 
        filterMonthBar(9);                  
      if (november == true) 
        filterMonthBar(10);                    
      if (december == true) 
        filterMonthBar(11);
    } else if (Show_Max_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true)
      maxBar();
    else if (Show_Max_Temp == true) {
      if (january == true) 
        filterMonthBarMax(0);
      if (february == true) 
        filterMonthBarMax(1);
      if (march == true) 
        filterMonthBarMax(2);    
      if (april == true) 
        filterMonthBarMax(3);
      if (may == true) 
        filterMonthBarMax(4);      
      if (june == true) 
        filterMonthBarMax(5);      
      if (july == true) 
        filterMonthBarMax(6);            
      if (august == true) 
        filterMonthBarMax(7);              
      if (september == true) 
        filterMonthBarMax(8);                
      if (october == true) 
        filterMonthBarMax(9);                  
      if (november == true) 
        filterMonthBarMax(10);                    
      if (december == true) 
        filterMonthBarMax(11);
    } else if (Show_Min_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true)
      minBar();  
    else if (Show_Min_Temp == true) {  
      if (january == true) 
        filterMonthBarMin(0);
      if (february == true) 
        filterMonthBarMin(1);
      if (march == true) 
        filterMonthBarMin(2);    
      if (april == true) 
        filterMonthBarMin(3);
      if (may == true) 
        filterMonthBarMin(4);      
      if (june == true) 
        filterMonthBarMin(5);      
      if (july == true) 
        filterMonthBarMin(6);            
      if (august == true) 
        filterMonthBarMin(7);              
      if (september == true) 
        filterMonthBarMin(8);                
      if (october == true) 
        filterMonthBarMin(9);                  
      if (november == true) 
        filterMonthBarMin(10);                    
      if (december == true) 
        filterMonthBarMin(11);
    } else
      reset();
    drawX();
  }
  //SCATTERCHART
  void drawScatter() {
    background(150);
    drawY();
    strokeWeight(1);
    if (Show_Max_Temp == true && Show_Min_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true) {
      TempData temp = new TempData();
      fill(0, 0, 255);
      for (int i = 0; i < dataTable.getRowCount(); i++) {
        temp.minTemp = dataTable.getFloat(i, 3);
        circle(122.5 + 4*i, 400-(10*temp.minTemp), 5);
      }
      fill(255, 0, 0);
      for (int i = 0; i < dataTable.getRowCount(); i++) {
        temp.maxTemp = dataTable.getFloat(i, 2);

        circle(122.5 + 4*i, 400-(10*temp.maxTemp), 5);
      }
    } else if (Show_Max_Temp == true && Show_Min_Temp == true) {
      if (january == true) 
        filterMonthScatter(0);
      if (february == true) 
        filterMonthScatter(1);
      if (march == true) 
        filterMonthScatter(2);    
      if (april == true) 
        filterMonthScatter(3);
      if (may == true) 
        filterMonthScatter(4);      
      if (june == true) 
        filterMonthScatter(5);      
      if (july == true) 
        filterMonthScatter(6);            
      if (august == true) 
        filterMonthScatter(7);              
      if (september == true) 
        filterMonthScatter(8);                
      if (october == true) 
        filterMonthScatter(9);                  
      if (november == true) 
        filterMonthScatter(10);                    
      if (december == true) 
        filterMonthScatter(11);
    } else if (Show_Max_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true)
      maxScatter();
    else if (Show_Max_Temp) {
      if (january == true) 
        filterMonthScatterMax(0);
      if (february == true) 
        filterMonthScatterMax(1);
      if (march == true) 
        filterMonthScatterMax(2);    
      if (april == true) 
        filterMonthScatterMax(3);
      if (may == true) 
        filterMonthScatterMax(4);      
      if (june == true) 
        filterMonthScatterMax(5);      
      if (july == true) 
        filterMonthScatterMax(6);            
      if (august == true) 
        filterMonthScatterMax(7);              
      if (september == true) 
        filterMonthScatterMax(8);                
      if (october == true) 
        filterMonthScatterMax(9);                  
      if (november == true) 
        filterMonthScatterMax(10);                    
      if (december == true) 
        filterMonthScatterMax(11);
    } else if (Show_Min_Temp == true && january == true && february == true && march == true && april == true && may == true && june == true && july == true && august == true && september == true && october == true && november == true && december == true)
      minScatter();
    else if (Show_Min_Temp) {
      if (january == true) 
        filterMonthScatterMin(0);
      if (february == true) 
        filterMonthScatterMin(1);
      if (march == true) 
        filterMonthScatterMin(2);    
      if (april == true) 
        filterMonthScatterMin(3);
      if (may == true) 
        filterMonthScatterMin(4);      
      if (june == true) 
        filterMonthScatterMin(5);      
      if (july == true) 
        filterMonthScatterMin(6);            
      if (august == true) 
        filterMonthScatterMin(7);              
      if (september == true) 
        filterMonthScatterMin(8);                
      if (october == true) 
        filterMonthScatterMin(9);                  
      if (november == true) 
        filterMonthScatterMin(10);                    
      if (december == true) 
        filterMonthScatterMin(11);
    } else 
    reset();
    drawX();
  }

  //SHOWMAXTEMP
  void maxBar() {    
    background(150);
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      temp.maxTemp = dataTable.getFloat(i, 2);
      fill(255, 0, 0);
      rect (120 + 4*i, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
    }
    drawX();
  }
  void maxScatter() {
    background(150);
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(255, 0, 0);
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      temp.maxTemp = dataTable.getFloat(i, 2);
      circle(122.5 + 4*i, 400-(10*temp.maxTemp), 5);
    }
    drawX();
  }
  //SHOWMINTEMP
  void minBar() {
    background(150);
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      temp.minTemp = dataTable.getFloat(i, 3);
      fill(0, 0, 255);
      rect (120 + 4*i, 400-(10*temp.minTemp), 4, 10*temp.minTemp);
    }
    drawX();
  }
  void minScatter() {
    background(150);
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(0, 0, 255);
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      temp.minTemp = dataTable.getFloat(i, 3);
      circle(122.5 + 4*i, 400-(10*temp.minTemp), 5);
    }
    drawX();
  }

  //MONTH FILTER BARCHART
  void filterMonthBar(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.maxTemp = dataTable.getFloat(j, 2);
      fill(255, 0, 0);
      rect (120 + 4*j, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
    }
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.minTemp = dataTable.getFloat(j, 3);
      temp.maxTemp = dataTable.getFloat(j, 2);
      fill(0, 0, 255);

      rect (120 + 4*j, 400-(10*temp.minTemp), 4, 10*temp.minTemp);

      if (temp.maxTemp < 0) {
        fill(255, 0, 0);
        rect (120 + 4*j, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
      }
    }
    drawX();
  }

  void filterMonthBarMax(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.maxTemp = dataTable.getFloat(j, 2);
      fill(255, 0, 0);
      rect (120 + 4*j, 400-(10*temp.maxTemp), 4, 10*temp.maxTemp);
    }
    drawX();
  }
  void filterMonthBarMin(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.minTemp = dataTable.getFloat(j, 3);
      fill(0, 0, 255);
      rect (120 + 4*j, 400-(10*temp.minTemp), 4, 10*temp.minTemp);
    }
    drawX();
  }

  //MONTH FILTER SCATTERPLOT
  void filterMonthScatter(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(0, 0, 255);
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.minTemp = dataTable.getFloat(j, 3);
      circle(122.5 + 4*j, 400-(10*temp.minTemp), 5);
    }
    fill(255, 0, 0);
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.maxTemp = dataTable.getFloat(j, 2);
      circle(122.5 + 4*j, 400-(10*temp.maxTemp), 5);
    }
    drawX();
  }

  void filterMonthScatterMax(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(255, 0, 0);
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.maxTemp = dataTable.getFloat(j, 2);
      circle(122.5 + 4*j, 400-(10*temp.maxTemp), 5);
    }
    drawX();
  }

  void filterMonthScatterMin(int i) {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(0, 0, 255);
    for (int j = i; j < dataTable.getRowCount(); j+=12) {
      temp.minTemp = dataTable.getFloat(j, 3);
      circle(122.5 + 4*j, 400-(10*temp.minTemp), 5);
    }
    drawX();
  }
  
  //SNOWFALL
  void Show_Snowfall() {
    drawY();
    strokeWeight(1);
    TempData temp = new TempData();
    fill(255);
    for (int i = 0; i < dataTable.getRowCount(); i++) {
      temp.snowFall = dataTable.getFloat(i, 4);
      circle(122.5 + 4*i, 400-(10*temp.snowFall), 5);
    }
    drawX();
  }
}
