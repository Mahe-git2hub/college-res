#include<stdio.h>
int main()
{
	int a=20,b=45;
	int *c,*d;
	int temp;
	c=&a;
	d=&b;
	temp=*c;
	*c=*d;
	*c=temp;
	return 12;
}
