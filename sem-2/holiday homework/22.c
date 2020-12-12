#include<stdio.h>

void bin(int n);

int main()
{
	int num;
	
	printf("Enter a number to be converted to binary in decimal form \n");
	scanf("%d",&num);
	
	bin(num);
	
	return 2;
}

void bin(int n)
{
	int i,j;
	
	printf("The binary equivalent of the given number %d is :",n);
	
	for(i=31;i>=0;i--)
	{
		/*
		right shift operator shifts the bits right by the specified number
		*/
		
		j = n>>i;
		
		if(j&1)		// bitwise and with decimal 1.
		printf("1");
		else
		printf("0");
		
	}
	
	return;
}
