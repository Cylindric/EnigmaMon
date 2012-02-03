#define DEBUG
//#define TESTING

#ifdef DEBUG
  #define DEBUG_PRINT(x) Serial.print(x)
  #define DEBUG_PRINTLN(x) Serial.println(x)
#else
  #define DEBUG_PRINT(x)
  #define DEBUG_PRINTLN(x)
#endif

static const int SENSOR_PIN = 3; // Pin connected to the Hall sensor (interrupt pin)
static const int FAN_PIN = 6;
static const int DEBOUNCE = 20; // Debounce filter time (ms)

volatile int revolutions = 0;

void setup() 
{
  Serial.begin(115200);
  pinMode(FAN_PIN, OUTPUT);
  DEBUG_PRINTLN("Hello");
  delay(500);
  attachInterrupt(1, SensorInterrupt, FALLING);
}

float lastUpdate;
int lastValue;

float lastFanChange;
int fanState;

void loop() {
  if (millis() > lastFanChange + 5000) {
    fanState = (fanState == 0 ? 1 : 0);
    lastFanChange = millis();
    Serial.print("Fan state now "); Serial.println(fanState);
    digitalWrite(FAN_PIN, fanState);
  }
  
  if (millis() > lastUpdate + 1000) {
    int revs = revolutions;
    lastUpdate = millis();
    
    Serial.println((revs-lastValue)*30);
    lastValue = revs;
  }
}


void SensorInterrupt() {
  revolutions++;
}

