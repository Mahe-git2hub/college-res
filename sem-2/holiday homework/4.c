#include<stdio.h>
#include<math.h>
#include<stdlib.h>

double power (double m,int n);	// to calculate the value of m raised to power n.
int main()
{
	float base,result;
	int power1;
	printf("this program calcultes the power of a double raised to a power of integer. \n");
	printf("enter the base (it is double)\n");
	scanf("%f",&base);
	printf("Enter the power to which you need the base to be raised ( an integer)\n");
	scanf("%d",&power1);
	printf("the entered base and power are %f and %d \n",base,power1);
	result = power(base,power1);
	printf(" A default value of 2 is taken for power1 if power1 is zero \n");
	printf("%f raised to the power %d is %f \n",base,power1,result);
	
//	printf(" verifying the correctness of the above function : \n");
//	if (power1 !=0)
//	printf("the result is %f \n",pow(base,power1));
//	else 
//	printf("the result is %f \n ",pow(base,2));		// the default case
	
	return 12;
	
}

double power(double m,int n)
{
	int i,flag = 1;
	double answer = 1;
	
	if (n==0)	// given in the question that a default value of 2 should be considered for n if n=0
	n=2;
	else if (n<0)
		{ flag = 0;
		n = abs(n);
		}
	for (i=0;i<n;i++)	// the counter loop repeats the process n times
	{
		answer *=m;	// answer = answer*m
	}
	
	if (flag == 0)
	{
		return (1/answer);
	}
	return answer;
}
