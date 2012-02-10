static const int SENSOR_PIN = 3; // Pin connected to the Hall sensor (interrupt pin)
static const int DEBOUNCE = 20; // Debounce filter time (ms)

volatile int revolutions = 0;

void setup() 
{
  Serial.begin(115200);
  Serial.println("Hello");
  delay(500);
  attachInterrupt(1, SensorInterrupt, FALLING);
}

float lastUpdate;
int lastValue;

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

