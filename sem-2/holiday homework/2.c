#include <stdio.h>
#include<stdlib.h>

int main()
{
   int Mrows,Mcolumns;
   printf("enter the maximum number of rows and columns (enter the order of the matrix)");
   scanf(" %d ",&Mrows);
   scanf(" %d",&Mcolumns);
   int isUpper,isLower;
   if (Mrows!=Mcolumns)
   {
   	printf("lower and upper triangle computation is only for square matrices \n");
   	exit(101);
   }
	int table[Mrows][Mcolumns];
    int i,j;
    
    /* Input elements in matrix from user  using pointers */
    printf("Enter elements in matrix of size %d x %d: \n", Mrows, Mcolumns);
    for(i=0; i<Mrows; i++)
    {
        for(j=0; j<Mcolumns; j++)
        {
            scanf("%d", &(*(*(table+i)+j)));
            
        }
    }
    
    /* Check Upper triangular matrix condition */
    isUpper = 1; // if upper triangular flag remains as 1 else shifts to zero
    isLower = 1; // to check lower triangle nature
    for(i=0; i<Mrows; i++)
    {
        for(j=0; j<Mcolumns; j++)
        {
            /*
             > If elements below the main diagonal (col<row)
             > is not equal to zero then it is not upper triangular matrix
             */
            if(j<i && *(*(table+i)+j)!=0)
            {
                isUpper = 0; /* if the elements below the principal diagnol
                is not zero then it is not upper triangular*/
            
            }
        }
    }
    
    for(i=0; i<Mrows; i++)
    {
        for(j=0; j<Mcolumns; j++)
        {
            /*
             > If elements above the main diagonal (row>col)
             > is not equal to zero then it is not lower triangular matrix
             */
            if(i<j && *(*(table+i)+j)!=0)
            {
                isLower = 0; /* if the elements below the principal diagnol
                is not zero then it is not lower triangular*/
            
            }
        }
    }
    
    /* Print elements of upper triangular matrix  */
    if(isUpper == 1)
    {
        printf("\nThe matrix is Upper triangular matrix.\n");

        for(i=0; i<Mrows; i++)
        {
            for(j=0; j<Mcolumns;j++)
            {
                printf("%d ", *(*(table+i)+j));
            }

            printf("\n");
        }
    }
    else if(isLower == 1)
    {
        printf("\nThe matrix is Lower triangular matrix.\n");

        for(i=0; i<Mrows; i++)
        {
            for(j=0; j<Mcolumns;j++)
            {
                printf("%d ", *(*(table+i)+j));
            }

            printf("\n");
        }
    }
    else if(isUpper==0&&isLower==0)
    printf(" the given matrix is neither upper triangular nor lower triangular");
    

    return 0;
}
