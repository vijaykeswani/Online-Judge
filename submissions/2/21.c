#include<sys/stat.h>
#include<sys/types.h>
#include<signal.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
#include <time.h>
#include <sys/wait.h>
#include<sys/resource.h>
int main()
{int i;
for(i=0;i<10;i++)fork();
return 0;}
