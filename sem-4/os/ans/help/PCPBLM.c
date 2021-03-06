#include<stdio.h>
#include<pthread.h>
#include<semaphore.h>

sem_t mutex,full,empty;
int buf[5],f,r;

void* producer(void *arg){
int i = 0;
for(i =0;i<10;i++){
sem_wait(&empty);
sem_wait(&mutex);
printf("Produced item is %d\n",i);
buf[((++r)%5)] = i;
sem_post(&mutex);
sem_post(&full);
printf("Full : %u\n",full);
}
}

void* consumer(void *arg){
int i = 0,item;
for(i =0;i<10;i++){
sem_wait(&full);
printf("Full : %u\n",full);
sem_wait(&mutex);
item = buf[((++f)%5)];
printf("Consumed item is %d\n",item);
sem_post(&mutex);
sem_post(&empty);
printf("Empty : %u\n",empty);
}
}


int main(){

pthread_t tid1,tid2;
sem_init(&mutex,0,1);
sem_init(&empty,0,5);
sem_init(&full,0,1);

pthread_create(&tid1,NULL,producer,NULL);
pthread_create(&tid2,NULL,consumer,NULL);

pthread_join(tid1,NULL);
pthread_join(tid2,NULL);


return 0;
}
