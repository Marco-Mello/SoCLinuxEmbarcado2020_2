#include <stdio.h>
#include "system.h"
#include <alt_types.h>
#include <io.h> /* Leiutura e escrita no Avalon */
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include <unistd.h>
#include <math.h>


volatile int edge_capture;
unsigned int led = 0;
unsigned int passo = 0;
unsigned int leChaves = 0;
unsigned int vel = 100000;
unsigned int proxVel = 100000;
unsigned int anteriorVel = 100000;
unsigned int dir = 0;
unsigned int en = 1;



int delay(int n){
      unsigned int delay = 0 ;
      while(delay < n){
          delay++;
      }
}

int n = 0;
/* A variable to hold the value of the button pio edge capture register. */


void init_pio();
void giraMotor();

int main(void){
  
  n = 0;
  init_pio();
  printf("AgoraVai++ \n");
  //delay(5000);
  
  while(1){
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, n);
   
    if(anteriorVel < proxVel)
      {
        for(unsigned int i=anteriorVel ; i<proxVel ;i=i+1000)
        	{
            
        		vel = i;
        		usleep(i);
        		giraMotor();
        		/* printf("vel: %d\n  --  proxVel: %d\n",vel,proxVel); */
        	}
        anteriorVel = vel; proxVel = vel;
      }
    
    else if(anteriorVel > proxVel)
      {
        for(unsigned int i=anteriorVel ; i>proxVel ;i=i-1000)
          {
            
            vel = i;
            usleep(i);
            giraMotor();
            /* printf("vel: %d\n  --  proxVel: %d\n",vel,proxVel); */
          }
        anteriorVel = vel; proxVel = vel;
      }
    
    else {  anteriorVel = vel; proxVel = vel; usleep(vel); giraMotor();}
  };
  
  return 0;
}


void giraMotor()
{
	if(en == 1){
    if(dir == 1){
      
      IOWR_32DIRECT(PIO_1_BASE, 0, 0x01 << passo);
      if(passo <= 2 ) passo++;
      /* printf("horario vel: %d\n",vel); */
      else passo = 0;
      
    }
    else{
      IOWR_32DIRECT(PIO_1_BASE, 0, 0x01 << passo);
      if(passo >= 1) passo--;
      /* printf("anti horario vel: %d\n",vel); */
      else passo = 3;
    }
	}
}

/*******************************************************************
 * static void handle_button_interrupts( void* context, alt_u32 id)*
 *                                                                 *
 * Handle interrupts from the buttons.                             *
 * This interrupt event is triggered by a button/switch press.     *
 * This handler sets *context to the value read from the button    *
 * edge capture register.  The button edge capture register        *
 * is then cleared and normal program execution resumes.           *
 * The value stored in *context is used to control program flow    *
 * in the rest of this program's routines.                         *
 ******************************************************************/

 void handle_button_interrupts(void* context, alt_u32 id)
 {
	 unsigned int leChaves;
	 leChaves = IORD_32DIRECT(PIO_0_BASE, 0);
   
	 if(leChaves & (1 << 0)) en = 1; //enable
   else en = 0;
   if(leChaves & (1 << 1)) dir = 1; //direcao
   else dir = 0;
   
   anteriorVel = vel;
   if(leChaves & (1 << 2) && leChaves & (1 << 3) ) proxVel = 2500;
   else if(leChaves & (1 << 3)) proxVel = 25000;
   else if(leChaves & (1 << 2)) proxVel = 50000;
   else proxVel = 100000;
   
   /* Cast context to edge_capture's type. It is important that this be
    * declared volatile to avoid unwanted compiler optimization.
    */
   volatile int* edge_capture_ptr = (volatile int*) context;
   /* Store the value in the Button's edge capture register in *context. */
   *edge_capture_ptr = IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_0_BASE);
   n++;
   /* Reset the Button's edge capture register. */
   IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_0_BASE, 0);
 }

/* Initialize the pio. */

void init_pio()
{
  /* Recast the edge_capture pointer to match the alt_irq_register() function
   * prototype. */
  void* edge_capture_ptr = (void*) &edge_capture;
  /* Enable first four interrupts. */
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_0_BASE, 0xf);
  /* Reset the edge capture register. */
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_0_BASE, 0x0);
  /* Register the interrupt handler. */
  alt_irq_register( PIO_0_IRQ, edge_capture_ptr, handle_button_interrupts );
 }

#if defined(MAIN1)
int main()
{
  volatile int in,  out;
  while (1)
    {
      in = IORD_ALTERA_AVALON_PIO_DATA(PIO_0_BASE);
      out = in;
      IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, out);
    }
}
#endif
