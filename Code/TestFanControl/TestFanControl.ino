static const int SENSOR_PIN = 3; // Pin connected to the Hall sensor
static const int FAN_POWER = 5;
int revolutions = 0;
float lastUpdate;
unsigned long duration;
unsigned long duration0;
unsigned long duration1;
unsigned long duration2;
unsigned long duration3;
unsigned long duration4;
int power = 255;

void setup() 
{
  Serial.begin(115200);
  Serial.println("Hello.  This is the PulseIn Fan Tacho Test");
  Serial.println("Power, Duration, RPS, RPM ");
  delay(500);
  pinMode(SENSOR_PIN, INPUT);
  pinMode(FAN_POWER, OUTPUT);
}

void loop() {
 
  if (millis() > lastUpdate + 5000) {
    lastUpdate = millis();

    Serial.print(power);
    Serial.print(", ");


    duration = pulseIn(SENSOR_PIN, HIGH);
    Serial.print(duration);
    Serial.print(", ");

    Serial.print((1000000/duration)*0.5);
    Serial.print(", ");

    Serial.println((1000000/duration)*0.5*60);

    power = power - 50;    
    if (power < 0) {
      power = 255;
    }
    analogWrite(FAN_POWER, power);
  }
}

