#include<stdio.h>
main()
{
	int i,n,j;
	printf("enter the no of elements\n");
	scanf("%d",&n);
	for (i=0;i<n;i++)
	{
		for (j=0;j<=i;j++)
		{
			printf("#");
		}
		printf("\n");
		
	}
		for (i=0;i<n;i++)
	{
		for (j=n-1;j>=i;j--)
		{
			printf("*");
		}
		printf("\n");
		
	}

return 23;
	
}
