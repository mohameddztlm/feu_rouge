#line 1 "C:/Users/mohamed/Desktop/af/mikroc/feu_rouge.c"
void init(){
TRISA.RA1=1;TRISA.RA3=1;
TRISB=0;
}
void main() {
 init();
 portb=0;
A:if (porta.ra1==1)
 {
 PORTb.rb4=1;
 delay_ms(500);
 portb.rb4=0;
 delay_ms(500);
 }
 else if(porta.ra3==1)
 {
 portb.rb0=1;delay_ms(37000);portb.RB0=0;
 portb.rb4=1;delay_ms(5000);portb.RB4=0;
 portb.rb7=1;delay_ms(13000);portb.rb7=0;
 }
 goto A;



}
