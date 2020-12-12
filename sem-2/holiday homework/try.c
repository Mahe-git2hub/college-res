#include<stdio.h>

int main()
{
	int n,i;
	scanf("%d",&n);
	int a[n];
	for (i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
		
	}
	
	int* b = a;
	printf("%d",*b);
	int c[n];
	
//	c = a;
//	printf("%d",c);
	return 0;
}
