import controlP5.*;

ControlP5 bar;
ControlP5 scatter;
ControlP5 showmaxtemp;
ControlP5 showmintemp;
ControlP5 showsnowfall;
ControlP5 jan, feb, mar, apr, ma, jun, jul, aug, sep, oct, nov, dec;


Button BarChart;
Button ScatterPlot;
Toggle maxtemp;
Toggle mintemp;
Toggle snowfall;
Toggle Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec;

boolean drawBar, drawScatter;
boolean Show_Max_Temp, Show_Min_Temp, Show_Snowfall;
boolean january, february, march, april, may, june; 
boolean july, august, september, october, november, december;

void buttons() { 
  bar = new ControlP5(this);
  BarChart = bar.addButton("drawBar").setValue(0).setPosition(150, 30).setSize(100, 60);
  BarChart.setCaptionLabel("Bar Chart");
  BarChart.setSwitch(true);

  scatter = new ControlP5(this);
  ScatterPlot = scatter.addButton("drawScatter").setValue(0).setPosition(275, 30).setSize(100, 60);
  ScatterPlot.setCaptionLabel("Scatter Plot");
  ScatterPlot.setSwitch(true);

  showmaxtemp = new ControlP5(this);
  maxtemp = showmaxtemp.addToggle("Show_Max_Temp").setValue(1).setPosition(400, 40).setSize(50, 30);
  maxtemp.setCaptionLabel("Show Max Temp");

  showmintemp = new ControlP5(this);
  mintemp = showmintemp.addToggle("Show_Min_Temp").setValue(1).setPosition(475, 40).setSize(50, 30);
  mintemp.setCaptionLabel("Show Min Temp");
  
  showsnowfall = new ControlP5(this);
  snowfall = showsnowfall.addToggle("Show_Snowfall").setValue(0).setPosition(1000, 30).setSize(100,60);
  snowfall.setCaptionLabel("Show Snowfall");

  jan = new ControlP5(this);
  Jan = jan.addToggle("january").setValue(1).setPosition(600, 30).setSize(50, 30);

  feb = new ControlP5(this);
  Feb = feb.addToggle("february").setValue(1).setPosition(660, 30).setSize(50, 30);

  mar = new ControlP5(this);
  Mar = mar.addToggle("march").setValue(1).setPosition(720, 30).setSize(50, 30);

  apr = new ControlP5(this);
  Apr = apr.addToggle("april").setValue(1).setPosition(780, 30).setSize(50, 30);

  ma = new ControlP5(this);
  May = ma.addToggle("may").setValue(1).setPosition(840, 30).setSize(50, 30);

  jun = new ControlP5(this);
  Jun = jun.addToggle("june").setValue(1).setPosition(900, 30).setSize(50, 30);

  jul = new ControlP5(this);
  Jul = jul.addToggle("july").setValue(1).setPosition(600, 80).setSize(50, 30);

  aug = new ControlP5(this);
  Aug = aug.addToggle("august").setValue(1).setPosition(660, 80).setSize(50, 30);

  sep = new ControlP5(this);
  Sep = sep.addToggle("september").setValue(1).setPosition(720, 80).setSize(50, 30);

  oct = new ControlP5(this);
  Oct = oct.addToggle("october").setValue(1).setPosition(780, 80).setSize(50, 30);

  nov = new ControlP5(this);
  Nov = nov.addToggle("november").setValue(1).setPosition(840, 80).setSize(50, 30);

  dec = new ControlP5(this);
  Dec = dec.addToggle("december").setValue(1).setPosition(900, 80).setSize(50, 30);
}
