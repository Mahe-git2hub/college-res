#include<stdio.h>

int main()
{
	int x,y;
	printf("Welcome \n");
	printf("Enter the X coordinate or abscissa of the point \n");
	scanf("%d",&x);
	printf("enter the y coordinate or Ordinate of the point \n");
	scanf("%d",&y);
	
	if (x==0)
	printf("the given point (%d,%d) lies on  Y-axis. \n",x,y);
	else if (y==0)
	printf("the given point (%d,%d) lies on X-axis \n",x,y);
	else if (x>0&&y>0)
	printf("the given point (%d,%d) lies on I quardrent \n",x,y);
	else if (x>0&&y<0)
	printf("the given point (%d,%d) lies on IV quardrent \n",x,y);
	else if (x<0&&y<0)
	printf("the given point (%d,%d) lies on III quardrent \n",x,y);
	else if (x<0&&y>0)
	printf("the given point (%d,%d) lies on II quardrent \n",x,y);
	
	return 0;
}
