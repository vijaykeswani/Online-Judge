#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define max(a,b) (a)>=(b)?(a):(b)
int ll,lr;

int comp(char* l,char* r,char* num,int i)
{
	int j;int flag=2,a1=0,a2=0,a3=0,a4=0;
	if(i==lr){
		int count[11]={0};
		for(j=0;j<i;j++)count[num[j]-'0']++;
		return count[4]*count[7];		
           }
	
	for(j=0;j<i;j++){
		if(num[j]!=l[j])break;
		}
	if(j==i)flag=-1;
	for(j=0;j<i;j++){
		if(num[j]!=r[j])break;
		}
	if(j==i)flag+=1;
	
	if(flag==2){
		
		int count[11]={0};
		for(j=0;j<i;j++)count[num[j]-'0']++;
		int free=lr-i;
		int diff=abs(count[7]-count[4]);
		j=max(count[7],count[4]);
		if(diff<=free){
			
			return (j+(free-diff)/2)*(j+free-diff-((free-diff)/2));							
		}
		else {return (j)*(j-diff+free);}
	}

	if(flag==-1){
		
		num[i]=l[i];a1=comp(l,r,num,i+1);
		if(l[i]<'7'){num[i]='7';a2=comp(l,r,num,i+1);}
		if(l[i]<'4'){num[i]='4';a3=comp(l,r,num,i+1);}
		if(l[i]!='9'){num[i]='9';a4=comp(l,r,num,i+1);	}
					
		return max(max(a1,a2),max(a3,a4));
		}
	if(flag==3){
		num[i]=r[i];a1=comp(l,r,num,i+1);
		if(r[i]>'4'){num[i]='4';a2=comp(l,r,num,i+1);}
		if(r[i]>'7'){num[i]='7';a3=comp(l,r,num,i+1);}
		if(r[i]!='0'){num[i]='0';a4=comp(l,r,num,i+1);}	
					
		return max(max(a1,a2),max(a3,a4));
		}
	if(flag==0){int a5=0;
		num[i]=r[i];a1=comp(l,r,num,i+1);
		num[i]=l[i];a2=comp(l,r,num,i+1);
		if(l[i]<'4'&&'4'<r[i]){num[i]='4';a3=comp(l,r,num,i+1);}
		if(l[i]<'7'&&'7'<r[i]){num[i]='7';a4=comp(l,r,num,i+1);}
		if(a3!=0||a4!=0)return max(max(a1,a2),max(a3,a4));
		
			
		if(r[i]-l[i]>=2){num[i]=l[i]+1;a5=comp(l,r,num,i+1);}
					
		return max(a5, max( max(a1,a2) , max(a3,a4) ) );
	}
	

		
	
}			

int main()
{	
    int t,i,ans=0,tmp;//for(i=0;i<100000000;i++);
    char l[25],r[25],temp[25],c,num[25]={'0'};
	
	
    scanf("%d",&t);
//while(1);	
    while(t--){
	
        scanf("%s %s",l,r);
	ll=strlen(l);lr=strlen(r);
	
	
        if(ll<lr){
		for(i=0;i<lr-ll;i++)temp[i]='0';
		for(i=lr-ll;i<=lr;i++)temp[i]=l[i-lr+ll];
		
		while(temp[i]==r[i])i++;
		ans=comp(temp,r,num,0);	       
	}
	else{	
		ans=comp(l,r,num,0);
	}

	printf("%d\n",ans);		
	}	
return 0;
//exit(0);
}
        
