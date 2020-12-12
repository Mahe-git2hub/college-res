#include<stdio.h>

void lcm_gcd (int a,int b,int* gcd,int* lcm);

int main()
{
	int x,y,hcf,lcm;
	
	printf("Welcome to the program.Here we calculate the hcf and lcm for the given two nos  \n");
	
	printf("enter the first number \n ");
	scanf("%d",&x);
	printf("enter the second number \n");
	scanf("%d",&y);
	
	lcm_gcd(x,y,&hcf,&lcm);
	
	printf(" The highest common factor for given numbers %d and %d is : %d \n",x,y,hcf);
	printf(" The least common multiple for given numbers %d and %d is : %d \n",x,y,lcm);
	
	return 1;
}

void lcm_gcd(int a,int b,int* gcd,int* lcm)
{
	int x,y;
	x=a;
	y=b;
	while(b!=0)
	{
		if (a>b)
		a -=b;
		else 
		b -=a;
		
	}

	*gcd = a;
	*lcm = (x*y) /  *gcd;
}
