#include <icrmacros.h>
#include <SoftwareSerial.h>

const int LCD_PIN = 8;
const int LCD_FONT_DY = 8;
const int LCD_DELAY = 5;
const int LCD_FRAME = 1000;
const int LCD_REFRESH = 10000;

const int BAR_COUNT = 4;
const int BAR_MAX = 25;

int barValues[] = {0, 0, 0, 0};

unsigned long LastUpdate = 0;
unsigned long LastReset = 0;

SoftwareSerial LCD(-1, LCD_PIN);

void setup()
{
  //LCD.begin(115200); LCDSpeed();
  //for(;;);
  
  Initialise();
  PrintWelcomeMessage(48, 26);
  delay(5000);

  LCDClear();
}


void loop()
{
  // Fake up some sensor data
  for (int i = 0; i < BAR_COUNT;  i++)
  {
    barValues[i] = random(0, BAR_MAX);
  }
  
  // Display
  if ((millis() - LastReset) > LCD_REFRESH)
  {
    LCDClear();
    ResetBars();
    LastReset = millis();    
  }
  if ((millis() - LastUpdate) > LCD_FRAME)
  {
    UpdateBars();
    LastUpdate = millis();    
  }
}


void ResetBars()
{
  for (int i = 0; i < BAR_COUNT;  i++)
  {
    BarInitialise(10 + (12*i), 10);
  }
}

void UpdateBars()
{
  // Sensor input
  for (int i = 0; i < BAR_COUNT;  i++)
  {
    BarSet(10 + (12*i), 10, barValues[i]);    
  }
}


void PrintWelcomeMessage(uint8_t x, uint8_t y)
{
  LCDClear();
  LCDBox(x, y, x + 32, y + LCD_FONT_DY + 2);
  LCDSetPos(x + 2, y + LCD_FONT_DY);
  LCDText("Hello");
}


void Initialise()
{
  LCD.begin(19200);
//  LCD.begin(115200);
  LCDBacklight(20);
}


void BarInitialise(uint8_t x, uint8_t y)
{
  uint8_t barX1 = x;
  uint8_t barY1 = y;
  uint8_t barX2 = x + 5;
  uint8_t barY2 = y + BAR_MAX;
  
  LCDErase(barX1, barY1, barX2, barY2);
  LCDBox(barX1, barY1, barX2, barY2);
  delay(LCD_DELAY);
}

void BarSet(uint8_t x, uint8_t y, uint8_t n)
{
  uint8_t barX1 = x;
  uint8_t barY1 = y;
  uint8_t barX2 = x + 5;
  uint8_t barY2 = y + BAR_MAX;
  
  LCDErase(barX1+1, barY1+1, barX2-1, barY2-1);
  LCDBox(barX1+1, barY1+1, barX2-1, barY1+n);
  LCDBox(barX1+2, barY1+2, barX2-2, barY1+n);
  delay(LCD_DELAY);
}

void LCDClear()
{
  LCD.write(0x7C); // Command
  LCD.write(0x00); // Clear
}


void LCDSetPos(uint8_t X, uint8_t Y)
{
  LCD.write(0x7C); // Command
  LCD.write(0x18); // Set X
  LCD.write(X);    // X
  LCD.write(0x7C); // Command
  LCD.write(0x19); // Set Y
  LCD.write(Y);    // Y
}


void LCDBox(uint8_t X1, uint8_t Y1, uint8_t X2, uint8_t Y2)
{
  LCD.write(0x7C); // Command
  LCD.write(0x0F); // Box
  LCD.write(X1);   // X1
  LCD.write(Y1);   // Y1
  LCD.write(X2);   // X2
  LCD.write(Y2);   // Y2
  //LCD.write(0x01); // state
}


void LCDErase(uint8_t X1, uint8_t Y1, uint8_t X2, uint8_t Y2)
{
  LCD.write(0x7C); // Command
  LCD.write(0x05); // Erase
  LCD.write(X1);   // X1
  LCD.write(Y1);   // Y1
  LCD.write(X2);   // X2
  LCD.write(Y2);   // Y2
}


void LCDText(char* text)
{
  LCD.print(text);
}


void LCDSpeed()
{
  LCD.write(0x7C);  // Command
  LCD.write(0x07);  // Speed
  LCD.write(0x33);   // Speed (33=19200)
}


void LCDBacklight(uint8_t level)
{
  LCD.write(0x7C);  // Command
  LCD.write(0x02);  // Backlight Duty Cycle
  LCD.write(level); // Backlight Level (0-100)
}


void LCDReverse()
{
  LCD.write(0x7C); // Command
  LCD.write(0x12); // Reverse
}


void LCDDemo()
{
  LCD.write(0x7C); // Command
  LCD.write(0x04); // Demo
}

