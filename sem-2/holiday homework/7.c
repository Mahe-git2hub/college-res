#include<stdio.h>

void insertelement(int arr[],int n,int a,int pos);
/*
	Here arr is the name of the array
	n is the size or length of the array 
	a is the new element to be inserted
	and pos is the position of the new element
	*/
	
int main()
{
	int a,n,pos,i;
	printf("hello welcome to the program \n");
	printf("enter the number of elements you want in the array \n");
	scanf("%d",&n);
	int arr[n+1];
	
	printf("please be ready to give inputs for the array \n");
	for(i=0;i<n;i++)
	{
		printf("enter the input for %dth element \n",i);
		scanf("%d",&arr[i]);
		
	}
	
	printf("These are the elements you have entered \n");
	
	for (i=0;i<n;i++)
	{
		printf("%d \n",arr[i]);
		
	}
	
	printf("enter the position of the element you want to insert \n");
    scanf("%d",&pos);
    
    printf("enter the element you want to be inserted at required position \n");
    scanf("%d",&a);
    
    insertelement(arr,n,a,pos);
    
    return 2;
 } 
 
 void insertelement (int arr[],int n,int a,int pos)
 {
 	int j;
 	
 	for (j=n;j>pos;j--)
 	{
 		arr[j]=arr[j-1];
 		
	 }
	
	arr[pos] = a;
	
	printf("The new array is : \n");
	for (j=0;j<n+1;j++)
	{
		printf("%d \n",arr[j]);
		
	 } 
 
 return;
 }
