#include<stdio.h>

int sum( int num);

int main()
{
	int n,rsum;
	
	printf("Please enter the number whose sum of digits is required \n");
	scanf ("%d",&n);
	
	rsum = sum(n);
	
	printf("The sum of the digits is %d",rsum);
	
	return 0;
		
}

int sum(int num)
{
	if (num < 10) {
    return num;
  }
  else {
    return num%10 + sum(num/10);
  }
	
}
