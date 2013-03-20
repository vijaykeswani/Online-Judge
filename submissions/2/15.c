#include<stdio.h>
int main()
{
int pid=fork();
if(pid==0){return 0;}
else
 printf("1\n2\n3");
return 0;}
