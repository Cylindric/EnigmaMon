void setup()
{
  delay(5000);
  Serial.begin(115200);
  Serial.print(0x7C, BYTE); // Command
  Serial.print(0x00, BYTE); // Clear
  Serial.print(0x7C, BYTE); // Command
  Serial.print(0x04, BYTE); // Demo
}

void loop()
{
}
