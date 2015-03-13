#line 1 "C:/Users/oakkar/Documents/GitHub/test1/test1.c"
void main() {

TRISD = 0b11110000;
PORTD = 0;

while(1){
 PORTD.RB0 = ~PORTD.RB0;
 Delay_Ms(1000);
 }
}
