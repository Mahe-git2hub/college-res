#include<stdio.h>

int fact(int n);

int main()
{
	int num,result =0,i,temp;
	
	printf("Enter the number for which you want the series to be solved for :\t");
	scanf("%d",&num);
	printf("\n");
	
	for (i=1;i<=num;i++)
	{
		temp = fact(i);
		result += temp/i;
	}
	
	printf(" The result is %d",result);
	
	return 12;
}

int fact (int n)
{
	int j,res;
	res=1;
	
	for(j=1;j<=n;j++)
	{
		res *= j;
	}
	
	return res;
}
