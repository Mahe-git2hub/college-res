#include<stdio.h>
#include<stdlib.h>
#include<string.h>

typedef struct {
	char customer_name[50];
	char street_details[25];
	char city[12];
	char state[10];
	int account_number;
	char account_type [15];
	int previous_balance;
	int current_payment;
	int new_balance;
	char payment_date [11];
}bill;

void input (bill* pr,int num);
void output (bill* pr,int num);

int main()
{
	int n;
	
	printf(" WELCOME TO THE BILLING SYSTEM \n");
	
	printf("enter the number of enteries required \n");
	scanf("%d",&n);
	
	bill arr[n];	// to have n enteries. array of structures.
	
	input (arr,n+1);
	
	output(arr,n+1);
	
	return 12;
 } 
 
 
 void input (bill* pr,int num)
 {
 	int i = 0;
 	
 	bill* pcc = pr;
 	bill* pbl;
 	 	
 	pbl = pr+ (num-1);
 	
	 for (pr = pcc;pr<pbl;pr++)		// TAKING INPUTS FOR THE DATABASE
 	{
 		printf(" Enter the name of the %dth customer\t:",i+1);
		gets(&(pr->customer_name));
		gets(&(pr->customer_name));
		printf("\n");
		printf(" Enter the Street details of  of the %dth customer\t:",i+1);
		gets(&(pr->street_details));
		printf("\n");
		printf(" Enter the city to which you belng \n");
		gets(&(pr->city));
		printf(" Enter the state to which you belng \n");
		gets(&(pr->state));
		printf("\n");
		printf(" Enter your account number \n");
		scanf("%d",&(pr->account_number));
		printf("\n");
		printf(" Enter your previous balance \n");
		scanf("%d",&(pr->previous_balance));
		printf("\n");
		printf(" Enter your current payment \n");
		scanf("%d",&(pr->current_payment));
		printf("\n");
		printf(" Enter your payment date \n");
		scanf("%s",&(pr->payment_date));
		printf("\n");	
		i++; 	
	 }
	 
	 float per;
	 
	 for (pr = pcc;pr<pbl;pr++)		// DECIDING THE ACCOUNT TYPE
	 {
	 	per = (10/100.0) * (pr->previous_balance);
		 if ((pr->current_payment > 0)&&(pr->current_payment < per))
		 {
		 	char str[] = "OVERDUE";
		 	strcpy(&(pr->account_type),str);
		 }
		 else if ((pr->previous_balance > 0)&&(pr->current_payment == 0))
		 {
		 	 char str[] = "DELINQUENT";
		 	strcpy(&(pr->account_type),str);
		 }
		 else 
		 {
		 	char str[]= "CURRENT";
		 	strcpy(&(pr->account_type),str);
		 }
		 
	 }
	 
	 for (pr = pcc;pr<pbl;pr++)		// NEW BALANCE UPDATION
	 {
	 	pr->new_balance = (pr->previous_balance - pr->current_payment);
	 }
	return; 
 }
 
 void output(bill* pr,int num )
 {
 	printf("Printing the whole Billing system data\n");
 	
	 int k = 1;
 	
 	bill* pcc = pr;
 	bill* pbl = pr + (num-1);
 	
 	for (pr = pcc;pr < pbl;pr++)
 	{
 		printf("%dth customer name is:\t  %s\n",k,pr->customer_name);
 		printf("%dth street is:\t  %s\n",k,pr->street_details);
 		printf("%dth city is:\t  %s\n",k,pr->city);
 		printf("%dth state name is:\t  %s\n",k,pr->state);
 		printf("%dth account number is:\t  %d\n",k,pr->account_number);
 		printf("%dth account type is:\t  %s\n",k,pr->account_type);
 		printf("%dth previous balance is:\t  %d\n",k,pr->previous_balance);
 		printf("%dth current payment is:\t  %d\n",k,pr->current_payment);
 		printf("%dth new balance is:\t  %d\n",k,pr->new_balance);
 		printf("%dth customer's payment date is:\t  %s\n",k,pr->payment_date);
 		k++;
 		printf("\n");
	 }
 return;
 }
