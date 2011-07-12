/*
 * Test and demo of the failing LCD backpack commands
 */
 
void setup()
{
  delay(5000);
  Serial.begin(9600);
  Serial.print(0x7C, BYTE); // Command
  Serial.print(0x00, BYTE); // Clear
  delay(5000);
}

int frame = 0;
int MAX_BOXES = 6;

void loop()
{
  int X1;
  int Y1;
  int X2;
  int Y2;
  int boxSize = 10;
  int spacing = 10;

  if (frame >= MAX_BOXES)
  {
    frame = 0;
  }

  X1 = (frame*spacing);
  Y1 = (frame*spacing);
  X2 = X1 + boxSize;
  Y2 = Y1 + boxSize;
  Serial.print(0x7C, BYTE); // Command
  Serial.print(0x0F, BYTE); // Box
  Serial.print(X1, BYTE);   // X1
  Serial.print(Y1, BYTE);   // Y1
  Serial.print(X2, BYTE);   // X2
  Serial.print(Y2, BYTE);   // Y2
//  Serial.print(1, BYTE); // State - this breaks

  frame++; 
  delay(200);
}
