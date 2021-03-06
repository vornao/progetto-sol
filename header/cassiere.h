#ifndef CASSIERE_H
#define CASSIERE_H
#include "supermercato.h"
#include "cliente.h"


//function to start thread.
void *cassiere_start_thread(void* args);
/* estrae un cliente dalla coda e "elabora" la sua spesa. poi lo rimuove dalla coda */
int servi_cliente();              
void client_signal(client_t *c, int v);
void *informa_direttore(void* args);
void get_out(people_t *p);

#endif
