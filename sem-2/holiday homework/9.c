#include<stdio.h>

void fun(int* pa,int* pb,int* pc);

int main()
{
	int a,b,c;	// local declaration
	
	printf("Enter the input for a: \t");
	scanf("%d",&a);
	printf("\n");
	printf("Enter the input for b: \t");
	scanf("%d",&b);
	printf("\n");
	printf("Enter the input for c: \t");
	scanf("%d",&c);
	printf("\n");
	
	/*
	we pass the inputs to the function for cyclic swapping.
	by sending the address of the variables we call by reference.
	*/
	
	fun(&a,&b, &c);
	
	return 0;
}

void fun(int* pa,int* pb,int* pc)
{
	int temp;
	
	temp=*pc;
	*pc=*pb;
	*pb=*pa;
	*pa=temp;
	
	printf("After swapping \t:\n");
	printf("a\t=\t%d \n",*pa);
	printf("b\t=\t%d \n",*pb);
	printf("c\t=\t%d \n",*pc);
	
	return;
}
