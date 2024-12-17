#include "LowPower.h"
#include <avr/power.h>

const uint8_t msg1[12] = { 72, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33 };  // Mesage to send: Hello world!
const uint8_t msg2[12] = { 66, 121, 101, 44, 32, 97, 108, 105, 101, 110, 115, 33 };    // Mesage to send: Bye, aliens!
/*
The code uses a frequency resolution of one third of the fastest frequency f4
f1, f2=2xf1, f3=3xf1, and f4=4xf1
t1, t2=t1/2, t3=t1/3, and t4=t1/4
if t1 = 12xT
t2=6xT, t2=4xT and t4=3xT
fb = 1/T = f1*12
*/

/*Half of base frequency in Hz. Because is half of the frequency, one period (2 bits) is equal to 24 timer interrupts
and one byte is equal to 96 */
const uint32_t fb = 2 * 200 * 12;
const uint8_t t_bit = 24;
const uint8_t t_byte = 96;
/*Counts required for each frequency to change the state of the output.*/
const uint8_t t_counts[4] = { 12, 6, 4, 3 };

/*
Message format: SYN - STX - MSG - ETX - ETB
SYN = 00010101 = 21
STX = 00000100 = 4
ETX = 00000101 = 5
ETB = 00001111 = 15
*/
const uint8_t SYN = 21;
const uint8_t STX = 4;
const uint8_t ETX = 5;
const uint8_t ETB = 15;

volatile boolean ledon;
volatile boolean pwm1;
volatile boolean pwm2;
volatile uint8_t t_counter;
volatile uint8_t bits1;
volatile uint8_t bits2;

// Function to configure timer
/*void confTimer(Tc *tc, uint32_t channel, IRQn_Type irq, uint32_t frequency) {
  pmc_set_writeprotect(false);
  pmc_enable_periph_clk((uint32_t)irq);
  TC_Configure(tc, channel, TC_CMR_WAVE | TC_CMR_WAVSEL_UP_RC | TC_CMR_TCCLKS_TIMER_CLOCK4);  // = Slow Clock = 32768 Hz)
  uint32_t rc = VARIANT_MCK / 128 / frequency;                                                //128 because we selected TIMER_CLOCK4 above//32768/frequency;//
  TC_SetRC(tc, channel, rc);
  TC_Start(tc, channel);
  tc->TC_CHANNEL[channel].TC_IER = TC_IER_CPCS;
  tc->TC_CHANNEL[channel].TC_IDR = ~TC_IER_CPCS;
  NVIC_EnableIRQ(irq);  //NVIC_DisableIRQ(irq)
}

void TC6_Handler() {
  TC_GetStatus(TC2, 0);  // Read status register to clear it in order to
                         // repeat the call to Hand0ler
  t_counter += 1;        //Increment timer.
  if (t_counter % t_counts[bits1] == 0) {
    digitalWrite(25, pwm1 = !pwm1);
  }
  if (t_counter % t_counts[bits2] == 0) {
    digitalWrite(24, pwm2 = !pwm2);
  }
}*/

void confTimer(){
  // TIMER 2 for interrupt frequency 4807.692307692308 Hz:
  cli(); // stop interrupts
  TCCR2A = 0; // set entire TCCR2A register to 0
  TCCR2B = 0; // same for TCCR2B
  TCNT2  = 0; // initialize counter value to 0
  // set compare match register for 4807.692307692308 Hz increments
  OCR2A = 103; // = 16000000 / (32 * 4807.692307692308) - 1 (must be <256)
  // turn on CTC mode
  TCCR2B |= (1 << WGM21);
  // Set CS22, CS21 and CS20 bits for 32 prescaler
  TCCR2B |= (0 << CS22) | (1 << CS21) | (1 << CS20);
  // enable timer compare interrupt
  TIMSK2 |= (1 << OCIE2A);
  sei(); // allow interrupts
}

ISR(TIMER2_COMPA_vect){
   //interrupt commands for TIMER 2 here
  t_counter += 1;        //Increment timer.
  if (t_counter % t_counts[bits1] == 0) {
    digitalWrite(2, pwm1 = !pwm1);
  }
  if (t_counter % t_counts[bits2] == 0) {
    digitalWrite(3, pwm2 = !pwm2);
  }
}

void setup() {
  // put your setup code here, to run once:
  t_counter = 0;
  pwm1 = LOW;
  pwm2 = LOW;
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  digitalWrite(2, pwm1);
  digitalWrite(3, pwm2);
  //confTimer(TC2, 0, TC6_IRQn, fb);

  //Test low power by disabling all modules, except Timer 2
  delay(6000); //Delay to see normal power level first
  ADCSRA = 0;  // disable ADC by setting ADCSRA register to 0
  power_adc_disable(); //disable the clock to the ADC module
  delay(4000); //delay to see just ADC off power level
  SPCR = 0; //disable SPI by setting SPCR register to 0
  power_spi_disable(); //disable the clock to the SPI module
  delay(4000); //delay to see just ADC and SPI off power level
  power_all_disable();
  power_timer2_enable();

  //Serial.begin(9600); // open the serial port at 9600 bps:
  confTimer();
  //LowPower.powerSave(SLEEP_FOREVER, ADC_OFF, BOD_OFF, TIMER2_ON);//Initial setup for low power
}

void sendBytes(uint8_t b1, uint8_t b2) {
  //while (t_counter < t_byte){
  for (uint8_t i = 0; i < 4; i++) {
    bits1 = (b1 & 0b11000000) >> 6;  //2 MSB
    bits2 = (b2 & 0b11000000) >> 6;  //2 MSB
    while (t_counter < t_bit) {
      delayMicroseconds(100);
      //LowPower.powerSave(SLEEP_FOREVER, ADC_OFF, BOD_OFF, TIMER2_ON);
    }
    t_counter = 0;
    b1 = b1 << 2;
    b2 = b2 << 2;
  }
}

void sendMsgs() {
  //Send the msg1.
  sendBytes(STX, STX);
  for (uint8_t i = 0; i < 12; i++) {
    sendBytes(msg1[i], msg2[i]);
  }
  sendBytes(ETX, ETX);
  sendBytes(ETB, ETB);
}

void loop() {
  // put your main code here, to run repeatedly:
  /*sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);//added for 300Hz
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);//400*/
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendMsgs();
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  //sendBytes(SYN, SYN);//400Hz
  /*sendBytes(SYN, SYN);//500Hz
  sendBytes(SYN, SYN);
  /*sendBytes(SYN, SYN);//added for 300Hz
  sendBytes(SYN, SYN);
  sendBytes(SYN, SYN);
  /*TC_Stop(TC2, 0);
  digitalWrite(25, LOW);
  while(1);*/
}
