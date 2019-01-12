void init(){
TRISA.RA1=1;TRISA.RA3=1;
TRISB=0;
}
void main() {
 init();
 portb=0;
A:if (porta.ra1==1)     //la nuit
 {
 PORTb.rb4=1;
 delay_ms(500);
 portb.rb4=0;
 delay_ms(500);
 }
  else if(porta.ra3==1)    //le joure
 {
 portb.rb0=1;delay_ms(37000);portb.RB0=0; //vert =37 s
 portb.rb4=1;delay_ms(5000);portb.RB4=0; //orange =5 s
 portb.rb7=1;delay_ms(13000);portb.rb7=0; //rouge=13 s
 }
 goto A;
 


}