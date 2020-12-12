#include<stdio.h>

int main()
{
	int i,n,range;
	
	printf("Enter the number of inputs required for the array \n");
	scanf("%d",&n);
printf("Enter the range_max of the inputs (numbers below which input will be given) \n");
	scanf("%d",&range);
	
	int arr[n];
	int freq[range +1];
	
	for (i=0;i<range+1;i++)
	{
		freq[i] = 0;
	}

	for (i=0;i<n;i++)
	{
		printf(" enter the %dth element \n",i);
		scanf("%d",&arr[i]);
	}
	
	for (i=0;i<n;i++)
	{
		freq[arr[i]]++;
	}
	

            
	printf("Printing the frequency of each element\t: \n");
	for (i=0;i<range+1;i++)
	{
		printf(" the frequency of %d is\t:\t%d \n",i,freq[i]);
	}
	
	for (i=0;i<range+1;i++)
	{
		if (freq[i]>1)
		{
			printf(" %d has duplicate elements of frequency\t:%d \n",i,freq[i]);
			
		}
		else 
		{
			printf("%d has no duplicate elements \n",i);
			
		}
		
	}
	
	printf("Printing duplicate elements alone \n");
	
	for (i=0;i<range+1;i++)
	{
		if (freq[i]>1)
		{
			printf(" %d has duplicate elements of frequency\t:%d \n",i,freq[i]);
			
		}
	
	}
	
return 12;	
}
