#include<stdio.h>

void perfect (int n);

int main()
{
	int num;
	
	printf("Enter the range below which you want the numbers to be generated \n");
	scanf("%d",&num);
		
	perfect(num);

return 189;
}


void perfect (int n)
{
	int i,sum,j;
	
	printf("perfect numbers in the series are : \n");
	
	for(i=1;i<=n;i++)
	{
		sum =0;
		
		for (j=1;j<i;j++)
		{
			if (i%j==0)
			sum += j;
		}
		
		if (sum==i)
		printf("%d \n",i);
	}
	
	return;
}
