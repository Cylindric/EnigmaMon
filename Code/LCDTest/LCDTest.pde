#include <SoftwareSerial.h>

#define txPin 8
#define ledPin 13

SoftwareSerial serial = SoftwareSerial(-1, txPin);

void setup()
{
  delay(5000);
  pinMode(txPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
  
  serial.begin(115200);
  
  serial.print(0x7C, BYTE); // Command
  serial.print(0x00, BYTE); // Clear
  serial.print(0x7C, BYTE); // Command
  serial.print(0x04, BYTE); // Demo
}

void loop()
{
}
