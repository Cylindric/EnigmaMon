static const int SENSOR_PIN = 3; // Pin connected to the Hall sensor

int revolutions = 0;

void setup() 
{
  Serial.begin(115200);
  Serial.println("Hello.  This is the PulseIn Fan Tacho Test");
  Serial.println("Duration, RPS, RPM ");
  delay(500);
  pinMode(SENSOR_PIN, INPUT);
}

float lastUpdate;
unsigned long duration;
unsigned long duration0;
unsigned long duration1;
unsigned long duration2;
unsigned long duration3;
unsigned long duration4;

void loop() {
 
  if (millis() > lastUpdate + 1000) {
    lastUpdate = millis();

    duration = pulseIn(SENSOR_PIN, HIGH);
    Serial.print(duration);

    Serial.print(", ");
    Serial.print((1000000/duration)*0.5);

    Serial.print(", ");
    Serial.println((1000000/duration)*0.5*60);
  }
}

