long int comb(long int a,long int b,long int total_a,long int total_b);
int main()
{
	long int a,b,total;
	scanf("%ld %ld",&a,&b);
	total=comb(a,b,1,1);
	printf("%ld\n",total);
	return 0;
}
long int comb(long int a,long int b,long int total_a,long int total_b)
{
        if(b==0)
        {
		printf("%ld %ld\n",total_a,total_b);
	        if(total_a>total_b)
			return total_a/total_b;
		else
			return (total_a+1000000007)/total_b;
	}
        total_a=(total_a*a)%1000000007;
        a--;
        total_b=(total_b*b)%1000000007;
        b--;
        return comb(a,b,total_a,total_b);
}

