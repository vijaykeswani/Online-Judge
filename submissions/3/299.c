#include<stdio.h>
int main()
{
	int m,i,j,k,max=0,maxj=0,count=0,sum=0,value,a[26]={0};
	char ch;
	scanf("%d\n",&m);
	for(k=1;k<=m;k++)
	{
		scanf("%c",&ch);
		while(ch!='\n')
		{
			if(ch>='a'&&ch<='z')
			{
				a[ch-'a']++;
				count++;
			}
			if(ch>='A'&&ch<='Z')
			{
				a[ch-'A']++;
				count++;
			}
			scanf("%c",&ch);
		}
		value=26;
		for(i=0;i<count;i++)
		{
			for(j=0;j<26;j++)
			{
				if(max<a[j])
				{
					max=a[j];
					maxj=j;
				}
			}
			sum=sum+value*max;
			max=0;
			a[maxj]=0;
			value--;
		}
		count=0;
		printf("Case #%d: %d\n",k,sum);
		sum=0;
	}	
}
