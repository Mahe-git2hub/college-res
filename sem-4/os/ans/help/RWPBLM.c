#include<stdio.h>
#include<pthread.h>
#include<semaphore.h>

sem_t mutex,rwt;
int readcount=0,data=0;;

void* writer(void *arg){
int id = ((int) arg);
sem_wait(&rwt);
data = data + 1;
printf("Data written by writer %d : %d\n",id,data);
sem_post(&rwt);
}


void* reader(void *arg){
int id = ((int) arg);
sem_wait(&mutex);
readcount = readcount + 1;
if (readcount == 1){
sem_wait(&rwt);
}
sem_post(&mutex);
printf("Data read by reader %d: %d \n",id,data);
sem_wait(&mutex);
readcount = readcount - 1;
if (readcount == 0){
sem_post(&rwt);
}
sem_post(&mutex);
}


int main(){

pthread_t wtid[5],rtid[5];
sem_init(&mutex,0,1);
sem_init(&rwt,0,1);

int i = 0;
for(i = 0;i<5;i++){
pthread_create(&wtid[i],NULL,writer,(void *)i);
pthread_create(&rtid[i],NULL,reader,(void *)i);
}

for(i=0;i<5;i++){
pthread_join(wtid[i],NULL);
pthread_join(rtid[i],NULL);

}

return 0;
}

