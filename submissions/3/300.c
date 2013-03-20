#include<stdio.h>
int main()
{
	int t,n,k,i,j,maxi,t1,n1;
	long int a[10005]={0},max=0,sum=0;
	scanf("%d",&t);
	for(j=1;j<=t;j++)
	{
		scanf("%d %d",&n,&k);
		for(i=0;i<n;i++)
			scanf("%ld",&a[i]);
		//total = comb(n,k);
		n1=n;
		while(n1>=k-1)
		{
			for(i=0;i<n;i++)
			{
				if(a[i]>max)	
				{
					max=a[i];
					maxi=i;
				}
			}
			t1=comb(n1-1,k-1,1,1);
			n1--;
			sum =(sum +t1*max)%1000000007;
			//printf("%d %d\n",max,t1);
			a[maxi]=-1;
			max=0;
		}	
		
		printf("Case #%d: %ld\n",j,sum);
		sum=0;
	}
	return 0;
}

int comb(int a,int b,int total_a,int total_b)
{
	if(b==0)
	{
		//printf("%d %d\n",total_a,total_b);
		return total_a/total_b;
	}
	total_a=(total_a*a)%1000000007;
	a--;
	total_b=(total_b*b)%1000000007;
	b--;
	return comb(a,b,total_a,total_b);
}
