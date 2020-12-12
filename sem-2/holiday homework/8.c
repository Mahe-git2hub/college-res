#include<stdio.h>

typedef struct box_details
{
	int length;
	int breadth;
	int height;
	int volume;
}box; 		// structure name

void input(box* pc,int n);

void update (box* pc,int n);

void sort(box* pc,int n);

int main()
{
	int num;
	
	printf(" This program calculates the volume for the user given inputs of dimensions \n");
	
	printf(" Enter the number of boxes whose volume is to be calculated \n");
	scanf("%d",&num);
	
	box cuboid[num+1];		// structure variable 
	
 	input( cuboid, num+1);		// to get the dimensions of the num number of blocks
	
	 update (cuboid,num+1); 	// to update the values of volume from the user provided dimensions of cuboid
	
 	sort(cuboid,num+1);
	
	return 0;
}

void input(box* pc,int n)
{
	int i = 0;
	
	box* pl = pc + (n-1);
	box* pcc = pc;
	for (pc = pcc;pc < pl;pc++)
	{
		printf("Enter the length of %dth block \n",i+1);
		scanf("%d",&(pc->length));
		printf("Enter the breadth of %dth block \n",i+1);
		scanf("%d",&(pc->breadth));
		printf("Enter the height of %dth block \n",i+1);
		scanf("%d",&(pc->height));
		i++;
	}

return;	
}

void update (box* pc,int n)
{
	int j = 1;
	
	box* pcc = pc;
	box* pl = pc + (n-1);
	
	for (pc = pcc;pc < pl;pc++)
	{
		pc->volume = (pc->length) * (pc->breadth) * (pc->height);
		// volume = length * breadth * height
	} 
	
	for (pc = pcc;pc < pl;pc++)
	{
		printf("The volume of the %dth box of length %d,breadth %d,height %d is %d \n",j,pc->length,pc->breadth,pc->height,pc->volume);
		j++;
	}
}

void sort (box* pc,int n)
{
	int k = 0;
	
	box* pcc1 = pc;
	box* pcc = pc;
	box* pl = pc + (n-1);
	int tl,tb,th,tv;
	
	for (pc=pcc;pc< pl;pc++)
	{
		for (pcc1 = pcc;pcc1<pl;pcc1++)
		{
			if (pcc1->volume < pc->volume)
			{
			tv = pcc1->volume ;
			pcc1->volume = pc->volume;
			pc->volume = tv;
			tl = pcc1->length ;
			pcc1->length = pc->length;
			pc->length = tl;
			tb = pcc1->breadth ;
			pcc1->breadth = pc->breadth;
			pc->breadth = tb;
			th = pcc1->height ;
			pcc1->height = pc->height;
			pc->height = th; 
			}
		}
	}
	
	for (pc=pcc;pc < pl;pc++)
	{
		printf("length = %d\t",pc->length);
		printf("breadth = %d\t",pc->breadth);
		printf("height = %d\t",pc->height);
		printf("volume = %d\t",pc->volume);
		printf("\n");
	}
	return;
}
