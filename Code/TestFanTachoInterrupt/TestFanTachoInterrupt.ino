static const int SENSOR_PIN = 3; // Pin connected to the Hall sensor (interrupt pin)

volatile int revolutions = 0;

void setup() 
{
  Serial.begin(115200);
  Serial.println("Hello.  This is the Interrupt-Based Fan Tacho Test");
  delay(500);
  attachInterrupt(1, SensorInterrupt, FALLING);
}

float lastUpdate;
int lastValue;

float lastFanChange;
int fanState;

void loop() {
  if (millis() > lastUpdate + 1000) {
    int revs = revolutions;
    lastUpdate = millis();

    Serial.print("Revs: ");
    Serial.print(revs);
    Serial.print(" RPM: ");
    Serial.println((revs-lastValue)*30);
    lastValue = revs;
  }
}


void SensorInterrupt() {
  revolutions++;
}

