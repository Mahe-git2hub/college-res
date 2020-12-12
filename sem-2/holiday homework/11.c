#include<stdio.h>

int main()
{
	int n,sum=0,i;
	
	printf("Enter the number of inputs required for the array or size of the array \n");
	scanf("%d",&n);
	
	int a[n];
	
	for (i=0;i<n;i++)
	{
		printf(" enter the %dth element of the array \n",i+1);
		scanf("%d",&a[i]);
		
	}
	
	// to compute sum of elements.
	// the name of the array is a pointer to the array pointing to the address of 0^th element.
	
	for (i=0;i<n;i++)
	{
		sum += *(a+i);
	}
	
	printf("the sum of the elements of the given array is %d \n",sum);
	
	return 2;
	
}
