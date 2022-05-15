
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define NUMTHRDS 4 
   pthread_t callThd[NUMTHRDS];
   pthread_mutex_t mutex;
   pthread_mutex_t rwmutex;
   int read_count;
   int datas;

void *Reader_thread(void *arg)
{
	int iteration=3;
	do {
		pthread_mutex_lock (&mutex);
		read_count++;
	if (read_count == 1)
		pthread_mutex_lock (&rwmutex);
	pthread_mutex_unlock (&mutex);
	printf("\n Pthread # %ld is reading data and data is : %d",(long)arg,datas);
	
	pthread_mutex_lock (&mutex);
		read_count--;
	if (read_count == 0)
		pthread_mutex_unlock (&rwmutex);
	pthread_mutex_unlock (&mutex);
	} while (iteration--);

}
void *Writer_thread(void *arg)
{
	int iteration =3;
	do {
		pthread_mutex_lock (&rwmutex);	
		printf("\n Pthread # %ld is writing data (incrementing by 5) %d",(long)arg,datas+=5);
		sleep(1);
		pthread_mutex_unlock (&rwmutex);

	   } while (iteration--);

	pthread_exit((void*) 0);
}


int main (int argc, char *argv[])
{
long i;
read_count = 0;
datas=0;
pthread_attr_t attr;


pthread_mutex_init(&mutex, NULL);
pthread_mutex_init(&rwmutex, NULL);
         
for(i=0;i<NUMTHRDS;i++)
{
	pthread_create(&callThd[i], NULL, *Writer_thread, (void *)i); 
	pthread_create(&callThd[i], NULL, *Reader_thread, (void *)i); 
}


pthread_mutex_destroy(&mutex);
pthread_mutex_destroy(&rwmutex);
pthread_exit(NULL);
}   


