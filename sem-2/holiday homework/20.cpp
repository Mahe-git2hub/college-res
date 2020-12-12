#include<stdio.h>

int main()

{
char a[100];

 int i,k,count=0,count_word=0,count_array[100],max; 
 printf("enter the input string");

 gets(a);

 for(i=0;a[i]!='\0';i++)
 {
 ++count;
 }

 printf("The number of characters in the string is %d\n",count);
 printf("The characters in the string is\n");

 for(i=0;a[i]!='\0';i++)
 {
 printf("%c\n",a[i]);
 }

 printf("the number of words in the string is ");

 for(i=0;a[i]!='\0';i++)
 {
 if(a[i]==' ')                                 
  count_word++;
 }

 printf("%d\n",count_word+1);

 for(i=0;i<100;i++)
 {
 count_array[i]=0;
 }

 i=0;

 while(a[i]!='\0')
 {
 k=(int)a[i];
  count_array[k]+=1;
  i++;
 }

 max=0;

 for(i=0;i<100;i++)
 {
 if(count_array[i]>count_array[max])
   {max=i;
   }
 }

 printf("the character with maximum count is '%c' and it is %d times",max,count_array[max]);

 return 0;
}
