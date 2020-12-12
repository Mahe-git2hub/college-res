#include<stdio.h>
#include<string.h>
#include<ctype.h>
#include<stdlib.h>

int main()
{
	char str[100],ch;
	int Vowels =0,Consonants =0,Digits =0,Whitespaces =0,i;
	printf("enter the string \n");
	gets(str);      // we take input for string.
	
	for(i=0;i<strlen(str);i++)
	{
		ch = str[i];
		
		if ((ch>='A'&&ch<='Z')||(ch>='a'&&ch<='z'))		// making sure only albabets enter.
		 {
			if (!isalpha(ch))	// isalpha is a predefined function to check for alphabets. here we use this function to cross verify the if case'
			exit(101);
			switch (ch)		// opening switch case
			{
				/* only vowels gets filtered out in this switch case
				 since only alphabets enter if recieved alphabets are not vowels they have to be consonants
				 both lower and upper case of vowels has been taken care in switch cases
				 */
				case 'a':		
				case 'A':
				case 'e':
				case 'E':
				case 'i':
				case 'I':
				case 'o':
				case 'O':
				case 'u':
				case 'U':
				Vowels++;
				break;
			default:
					Consonants++;	
			}		//closing switch case
		}
		else if ((ch>='0'&&ch<='9')||isdigit(ch))	// isdigit checks for numbers in in the given sequence 
		{
			Digits++;
		}
		else if (isspace(ch))
			Whitespaces++;
		else
		{
				printf("you have entered a special character please verify and run the program again \n");
				exit(102);
					
		}
	}
	printf("the total number of vowels entered is :\t %d \n",Vowels);
	printf("the total number of consonants entered is :\t %d \n",Consonants);
	printf("the total number of digits entered is :\t %d \n",Digits);
	printf("the total number of whitespaces entered is :\t %d \n",Whitespaces);
	
	return 12;
	
}
