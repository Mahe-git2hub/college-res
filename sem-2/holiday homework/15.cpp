#include<stdio.h>
#include<string.h>
struct mnth
{
	char month[10];
};


struct year
{
	int yr;
};

struct book
{
	int accno;
	char title[50];
	int price;
	mnth m1;
	year y1;
}b1[100];

void input(int i)
{
	int temp;
	char a[20];
	printf("\naccount no:");
	scanf("%d",&temp);
	b1[i].accno=temp;
	
	printf("\n title:");
	scanf("%s",a);
	strcpy(b1[i].title,a);
	
	printf("\nprice:");
	scanf("%d",&temp);
	b1[i].price=temp;
	
	printf("\n month of publication:");
	scanf("%s",a);
	strcpy(b1[i].m1.month,a);
	
	printf("\n year of publication");
	scanf("%d",&temp);
	b1[i].y1.yr=temp;
	
}

int search(int srch,int n)
{
	for(int i=0;i<n;i++)
	{
		if(b1[i].accno==srch)
		return i;
	}
	return -1;
} 

int main()
{
	int n,srch;
	printf("enter total books:");
	scanf("%d",&n);
	for(int i=0;i<n;i++)
	{
	input(i);
	printf("\nbook-%d",i+1);
	printf("\n\nenter accno to search:");
	scanf("%d",&srch);
	srch=search(srch,n);
	if(srch==-1)
	printf("\n book is not found!!!");
	else
	{
		printf("\nDETAILS\n");
		printf("\naccnt no:%d",b1[srch].accno);
		printf("\ntitle:%s",b1[srch].title);
		printf("\n price:%d",b1[srch].price);
		printf("\n month of publication:%s",b1[srch].m1.month);
		printf("\n year of publication:%d",b1[srch].y1.yr);
	}
}
}
