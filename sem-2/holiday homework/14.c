#include<stdio.h>

int main()
{
	int row,col,i,j;
		
	printf("enter the number of rows in the matrix \n");
	scanf("%d",&row);
	printf("enter the number of columns in the given matrix \n");
	scanf("%d",&col);
	
	int matrix[row][col];
	
	for (i=0;i<row;i++)
	{
		for (j=0;j<col;j++)
		{
			printf(" Enter the (%d,%d)th element of the matrix \n \t",i,j);
			scanf("%d",&matrix[i][j]);
			
		}	// for alternating columns
		
	}		// for alternating rows

	int rowsum[row] ;
	
	for (j=0;j<row;j++)
	rowsum[j] = 0;
	
	for (i=0;i<row;i++)
	{
		for (j=0;j<col;j++)
		{
			*(rowsum+i) += *(*(matrix + i)+j);	// using array to pointers notation for 2D array 
		}
	}	// outer for loop
	
	for (i=0;i<row;i++)
	printf(" The %dth row sum is %d \n",i+1,*(rowsum+i));
	
	return 12;
}
