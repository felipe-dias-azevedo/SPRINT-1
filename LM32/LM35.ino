int valorLido = 0;
float temperatura = 0;

void setup() {
  Serial.begin(9600);
  Serial.print("CLEARDATA");
  Serial.println("Temperatura"); 

}

void loop() {
  valorLido = analogRead (0);
  temperatura = (valorLido * 0.00488);
  temperatura = temperatura * 100;
  Serial.print(temperatura);
  Serial.println("");
  delay(1000);
 

}
