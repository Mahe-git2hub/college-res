#include<stdio.h>

void factors ( int n);
void print (int* pa,int num);

int main()
{
	int i,n;
	
	printf("enter the  number whose factors is required \n");
	scanf("%d",&n);
	

	
	factors(n);
	
	return 12;
	}
	
void factors (int n)
{
	int j,i;
	
		
	
	int arr[50];
	i=0;
	
	for (j=1;j<=n;j++)
	{
		if (n%j==0)
		{
		arr[i]=j;
		i++;
		}
	}
	
	print(arr,i-1);
	
	return;
	}	
	
void print (int* pa,int num)	// call by reference
{
	int i;
	
	printf(" The factors are : \n");	
	for(i=0;i<num+1;i++)
	printf("%d \n",*(pa+i));	
	
	return;
	}	
