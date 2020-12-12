#include<stdio.h>

int main()
{
	int i,j,r,s,k;
	
	printf("Enter the size of matrix (m,n) \n");
	scanf("%d,%d",&r,&s);
	
	int a[r][s],b[s][r],c[r][r];
	
	printf("enter the elements of  matrix \n");
	for (i=0;i<r;i++)
	for (j=0;j<s;j++)
	scanf("%d",&a[i][j]);
	
	for (i=0;i<s;i++)
	for (j=0;j<r;j++)
	b[i][j] = a[j][i];
	
	printf(" printing both the matrices \n");
	
	printf("  matrix: \n");
	for (i=0;i<r;i++){
	for (j=0;j<s;j++){
		printf("%d \t",a[i][j]);
	}
	printf("\n");
		}
	
	printf("Transposed  matrix :\n");
	for (i=0;i<s;i++){
	for (j=0;j<r;j++)
	{ 
		printf("%d \t",b[i][j]);
	}
		printf("\n");
	}
	
	for (i=0;i<r;i++){
	for (j=0;j<r;j++){
		c[i][j] = 0;}}
	
	for (i=0;i<r;i++){
	for (j=0;j<r;j++){
	for (k=0;k<s;k++)
	{
		c[i][j] += (a[i][k])*(b[k][j]);
	}
	}}
	printf(" the multiplied matrix is : \n");
	for (i=0;i<r;i++){
	for (j=0;j<r;j++)
   {
			printf("%d \t",c[i][j]);}
	printf("\n");
	}
}
