#include<stdio.h>
#include<string.h>

void fun (char* str,int len);

int main()
{
	char s[100];
	int n;
	printf("enter the input for the string \n");
	gets (s);
	n = strlen(s);
	fun (s,n);
	return 0;
}

void fun(char* str,int len)
{
	char ch;
	ch = *(str + (len-1));
	if (len==0)
	return '\0';
	printf("%c",ch);
	fun(str,len-1);
	
}
