#include <icrmacros.h>
#include <SoftwareSerial.h>

//const int LCD_PIN = 1;
//SoftwareSerial LCD(-1, -1);
const int LCD_PIN = 8;
SoftwareSerial LCD(-1, LCD_PIN);

const int LCD_FONT_DY = 8;
const int LCD_DELAY = 10;
const int LCD_FRAME = 1000;
const int LCD_REFRESH = 10000;
const long LCD_SPEED = 9600; // 4800, 9600, 19200, 38400, 57600, 115200

const int BAR_COUNT = 8;
const int BAR_MAX = 25;

int barValues[] = {0, 0, 0, 0, 0, 0, 0, 0};

unsigned long LastUpdate = 0;
unsigned long LastReset = 0;

void setup()
{
//  LCD.begin(115200);
//  LCDSpeed(LCD_SPEED);
//  LCD.begin(LCD_SPEED);
//  LCDDemo();
//  for(;;);
//
  Initialise();
  PrintWelcomeMessage(48, 26);
  delay(6000);

  LCDClear();
}

bool _startup = true;

void loop()
{
  // Fake up some sensor data
  for (int i = 0; i < BAR_COUNT;  i++)
  {
    barValues[i] = random(0, BAR_MAX);
  }

  // Display
  if ( (_startup) || ((millis() - LastReset) > LCD_REFRESH) )
  {
    LCDClear();
    ResetBars();
    LastReset = millis();
    _startup = false;
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
  if (LCD_PIN == 1)
  {
    Serial.begin(115200);
    LCDSpeed(LCD_SPEED);
    delay(1000);
    Serial.begin(LCD_SPEED);
  }
  else
  {
    LCD.begin(115200);
    delay(1000);
    LCDSpeed(LCD_SPEED);
    LCD.begin(LCD_SPEED);
  }
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
}

void LCDClear()
{
  LCDData(0x7C); // Command
  LCDData(0x00); // Clear
  delay(LCD_DELAY);
}


void LCDSetPos(uint8_t X, uint8_t Y)
{
  LCDData(0x7C); // Command
  LCDData(0x18); // Set X
  LCDData(X);    // X
  LCDData(0x7C); // Command
  LCDData(0x19); // Set Y
  LCDData(Y);    // Y
  delay(LCD_DELAY);
}


void LCDBox(uint8_t X1, uint8_t Y1, uint8_t X2, uint8_t Y2)
{
  LCDData(0x7C); // Command
  LCDData(0x0F); // Box
  LCDData(X1);   // X1
  LCDData(Y1);   // Y1
  LCDData(X2);   // X2
  LCDData(Y2);   // Y2
  //LCDData(0x01); // state
  delay(LCD_DELAY);
}


void LCDErase(uint8_t X1, uint8_t Y1, uint8_t X2, uint8_t Y2)
{
  LCDData(0x7C); // Command
  LCDData(0x05); // Erase
  LCDData(X1);   // X1
  LCDData(Y1);   // Y1
  LCDData(X2);   // X2
  LCDData(Y2);   // Y2
  delay(LCD_DELAY);
}


void LCDText(char* text)
{
  LCD.print(text);
  delay(LCD_DELAY);
}


void LCDSpeed(long speed)
{
  LCDData(0x7C);  // Command
  LCDData(0x07);  // Speed
  switch (speed)
  {
    case (4800):
      LCDData(0x31); // Speed 4800
      break;

    case (9600):
      LCDData(0x32); // Speed 9600
      break;

    case (19200):
      LCDData(0x33); // Speed 19200
      break;

    case (38400):
      LCDData(0x34); // Speed 38400
      break;

    case (57600):
      LCDData(0x35); // Speed 57600
      break;

    default: // max
      LCDData(0x36); // Speed 115200
      break;
  }
}


void LCDBacklight(uint8_t level)
{
  LCDData(0x7C);  // Command
  LCDData(0x02);  // Backlight Duty Cycle
  LCDData(level); // Backlight Level (0-100)
  delay(LCD_DELAY);
}


void LCDReverse()
{
  LCDData(0x7C); // Command
  LCDData(0x12); // Reverse
  delay(LCD_DELAY);
}


void LCDDemo()
{
  LCDData(0x7C); // Command
  LCDData(0x04); // Demo
  delay(LCD_DELAY);
}

void LCDData(uint8_t data)
{
  if (LCD_PIN == 1)
  {
    Serial.write(data);
  }
  else
  {
    LCD.write(data);
  }
}

