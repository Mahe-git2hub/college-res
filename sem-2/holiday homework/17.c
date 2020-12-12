#include<stdio.h>

typedef struct drug_details
{
	int drug_code;
	char drug_name[42];
	int exp_date;
	int drug_count;
	
}drugs;

void update (drugs* drugslist,int n,int* date);

int exp_druglist (int count[],int date[],int num);

int main()
{
	int n,i;
	
	printf("Welcome to Pharmacy Database Management System \n");
	
	printf("Enter the number of entries you would like to have \n");
	scanf("%d",&n);
	
	drugs drug[n];
	
	int today_date;
	int a[n],b[n];
	
	update(drug,n,&today_date);	// getting input values for drugs structure
	
		for (i=0;i<n;i++)
	{
		a[i] = drug[i].drug_count;
		b[i] = drug[i].exp_date;
		}
	int expd;
	expd = exp_druglist(a,b,today_date);	// checking the drug for validity
	
	printf("A total of %d medicines have expired today",expd);
	for (i=0;i<n;i++)
	{
		if (drug[i].exp_date > today_date)
		{
			printf("\n Medicine with drug code %d of count %d has expired. Please remove them immediately \n ",drug[i].drug_code,drug[i].drug_count);
		}
	}
	
	return 0;
}

void update (drugs* drugslist,int n,int* date)
{
	int i=0;
	drugs* p1 ;
	drugs* p2 = drugslist+ n;
	
	/* Even for the same medicine if expiry date is different it is taken as seperate input
	hence each input corresponds to a single medicine manufactured on the same date
	*/
	
	for (p1 = drugslist;p1<p2;p1++)
	{
		printf(" Enter the %dth medicine's drug code :\t",i+1);
		scanf("%d",&(p1->drug_code));
		printf(" Enter the %dth medicine's drug name :\t",i+1);
		scanf("%s",&(p1->drug_name));
		printf(" Enter the %dth medicine's drug expiry date :\t",i+1);
		scanf("%d",&(p1->exp_date));
		printf(" Enter the %dth medicine's drug count :\t",i+1);
		scanf("%d",&(p1->drug_count));
		i++;
	}
	
	printf("Please enter today's date : ");
	scanf("%d",date);
	
	return;
}

int exp_druglist(int count[],int date[],int num)
{
	int j,ecount = 0;
	int n = (sizeof(count)/sizeof(int));
	for (j=0;j<n;j++)
	{
		if (date[j] > num)	// here num is not size of the array but represents today's date
		{
		printf("Expired Medicine!!! \n");
		ecount += count[j];	
				}
		}
		
	return ecount;	
}
