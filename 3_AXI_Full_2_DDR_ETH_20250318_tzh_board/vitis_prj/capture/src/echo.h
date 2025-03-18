#ifndef __ECHO_H_
#define __ECHO_H_

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
void send_hardware_data(struct tcp_pcb *tpcb);

#endif
