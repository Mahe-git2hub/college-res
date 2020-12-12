#include<stdio.h>

typedef struct structure_of_array
{
	int vector [2];
}vectors;

int main()
{
	/* Intially assumed there are 2 vectors per structures
	 i.e there is i^th component and j^th component*/
	
	int i,j,n,a,b;
	char flag = 'y';
	
	printf("How many array of structures do you need ( how many vectors do you need) \t\n");
	scanf("%d",&n);
	
	vectors array[n];
	
	for (i=0;i<n;i++)
	{
		for (j=1;j<=2;j++)
		{
			printf("Enter an input for %d vector %d component \n",i+1,j);
			scanf("%d",&(array[i].vector[j-1]));
		}
	}
	
	// here 'a' represents the vector belonging to the 'a'th row
	// here 'b' represents the 'b'th component of vector
	
	do{
		flag = 'y';
		printf("Enter the row number whose values you want to modify (0 - %d)\n",(n-1));
		scanf("%d",&a);
		printf("Enter the column number whose values you want to modify (0|1) \n ");
		scanf("%d",&b);
		if ((a<0||a>n-1)||(b<0||b>1))
		{
			printf("Invalid inputs \n");
			flag = 'n';
		}
}while(flag == 'n');

int new_ans;

printf("Enter the value to which the array needs to be updated \n");
scanf("%d",&new_ans);

for (i =0;i<n;i++)
{
	for (j=0;j<2;j++)
	{
		if (i == a &&j == b)
		{
			array[i].vector[j] = new_ans;
		}
	}
}

printf("After updating printing the vectors again \n");
for (i=0;i<n;i++)
	{
		for (j=1;j<=2;j++)
		{
			printf("the element at  %d row of vector %d component  is %d\n",i+1,j,array[i].vector[j-1]);
		
		}
	}
	
	flag = 'y';
	do{
		flag = 'y';
		printf("Enter the row number whose values you want to multiply (0 - %d)\n",(n-1));
		scanf("%d",&a);
		printf("Enter the column number whose values you want to multiply (0|1) \n ");
		scanf("%d",&b);
		if ((a<0||a>n-1)||(b<0||b>1))
		{
			printf("Invalid inputs \n");
			flag = 'n';
		}
}while(flag == 'n');

printf("Enter the value for multiplication \n");
scanf("%d",&new_ans);

 array[a].vector[b] *= new_ans;
 
 printf("After updating printing the vectors  \n");
 for (i=0;i<n;i++)
	{
		for (j=1;j<=2;j++)
		{
			printf("the element at  %d row of vector %d component  is %d\n",i+1,j,array[i].vector[j-1]);
		
		}
	}
	
	return 0;
}

