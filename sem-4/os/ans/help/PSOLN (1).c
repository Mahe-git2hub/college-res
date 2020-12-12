#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

int flag[2];
int turn;
int cmn = 0;

void lock_init(){
flag[0] = 0;
flag[1] = 0;
turn =0;
}

void lock(int self){
flag[self] = 1;
turn = 1 - self;

while(flag[1 - self] == 1 && turn == 1 - self);
}

void unlock(int self){

flag[self] = 0;
}

void* tfunc(void *s){

int self = (int*)s;

lock(self);
printf("Thread %d entered\n",self);
cmn = cmn + 1;
printf("Common variable : %d\n",cmn);
printf("Thread %d exiting\n",self);
unlock(self);

}


int main(){

pthread_t t1,t2;
lock_init();

pthread_create(&t1,NULL,&tfunc,(void*)0);
pthread_create(&t2,NULL,&tfunc,(void*)1);

pthread_join(t1,NULL);
pthread_join(t2,NULL);

return 0;
}
