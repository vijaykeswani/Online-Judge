#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define max(a,b) (a)>=(b)?(a):(b)

int ll,lr,flag=0;;
int comp(char l[25],char r[25],int i)
{	//printf("%d \n",lr);
	
	int count[11]={0},j,free,diff;
	for(j=0;j<i;j++)count[r[j]-'0']++;
	if(i==lr)return count[4]*count[7];
	if(l[i]==r[i])return comp(l,r,i+1);	
	int a1,a2;
	char temp[25],templ[25];
	for(j=0;j<lr;j++){temp[j]=r[j];templ[j]=l[j];}
	if(l[i]>r[i]){
		j=r[i]-'0'-1;
		int mx;
		mx=comp(l,r,i+1);
		while(1){if(j==-1)break;
			r[i]='0'+j;
			int k;
			for(k=i+1;k<lr;k++){r[k]='9';l[k]='0';}
			mx=max(mx,comp(l,r,i+1));
			
			j--;
		}
		for(j=0;j<lr;j++)r[j]=temp[j];		
		return mx;
	}
			
	if(l[i]=='4'){
		if(r[i]>'7'){
			r[i]='4';
			for(j=i+1;j<lr;j++){r[j]='9';}
			a1=comp(l,r,i+1);
			r[i]='7';
			for(j=i+1;j<lr;j++){l[j]='0';}
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
		if(r[i]=='7'){
			for(j=i+1;j<lr;j++)l[j]='0';
			a1=comp(l,r,i+1);
			for(j=i+1;j<lr;j++)l[j]=templ[j];
			r[i]='4';	
			for(j=i+1;j<lr;j++)r[j]='9';		
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
		if(r[i]<'7'){
			if(r[i]=='5'){
				for(j=i+1;j<lr;j++)l[j]='0';
				a1=comp(l,r,i+1);
				for(j=i+1;j<lr;j++)l[j]=templ[j];
				r[i]='4';for(j=i+1;j<lr;j++)r[j]='9';
				a2=comp(l,r,i+1);
				for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
				return max(a1,a2);
			}
			r[i]=r[i]-1;		
			for(j=i+1;j<lr;j++){r[j]='9';l[j]='0';}			
			a1=comp(l,r,i+1);
			r[i]='4';
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
		}
	if(l[i]=='7'){
			if(r[i]=='8'){
				for(j=i+1;j<lr;j++)l[j]='0';
				a2=comp(l,r,i+1);
				for(j=i+1;j<lr;j++)l[j]=templ[j];
				r[i]='7';for(j=i+1;j<lr;j++)r[j]='9';;
				a1= comp(l,r,i+1);
				for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
				return max(a1,a2);
				}
				
			r[i]=r[i]-1;		
			for(j=i+1;j<lr;j++){r[j]='9';l[j]='0';}			
			a1=comp(l,r,i+1);
			r[i]='7';
			for(j=i+1;j<lr;j++){l[j]=templ[j];}
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
		}
	if(r[i]=='7'){
		if(l[i]>'4'){
			for(j=i+1;j<lr;j++)l[j]='0';
			a1=comp(l,r,i+1);
			for(j=i+1;j<lr;j++)l[j]=templ[j];
			r[i]-=1;for(j=i+1;j<lr;j++)r[j]='9';
			if(r[i]!=l[i])for(j=i+1;j<lr;j++)l[j]='0';
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
		if(l[i]<'4'){
			for(j=i+1;j<lr;j++)l[j]='0';
			a1=comp(l,r,i+1);
			for(j=i+1;j<lr;j++)l[j]=templ[j];
			r[i]='4';for(j=i+1;j<lr;j++){r[j]='9';l[j]='0';}
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
		}
	if(r[i]=='4'){
		for(j=i+1;j<lr;j++)l[j]='0';
		a1=comp(l,r,i+1);
		for(j=i+1;j<lr;j++)l[j]=templ[j];
		r[i]='3';
		for(j=i+1;j<lr;j++)r[j]='9';
		if(l[i]!=r[i])for(j=i+1;j<lr;j++)l[j]='0';		
		a2=comp(l,r,i+1);
		for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
		return max(a1,a2);
		}

	
	if((l[i]>'7'||r[i]<'4')||(l[i]=='5'&&r[i]=='6')){
				
		if(r[i]-l[i]==1){
			r[i]=l[i];
			for(j=i+1;j<lr;j++)r[j]='9';
			a1=comp(l,r,i+1);
			r[j]++;
			for(j=i+1;j<lr;j++){r[j]=temp[j];l[j]='0';}
			a2=comp(l,r,i+1);
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return max(a1,a2);
			}
			
		free=lr-i-1;
		diff=abs(count[7]-count[4]);
		j=max(count[7],count[4]);
		if(diff<=free){
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}			
			return (j+(free-diff)/2)*(j+free-diff-((free-diff)/2));							
		}
		else {for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}return (j)*(j-diff+free);}
	}
	
	if(l[i]<'7'&&r[i]>'7'){
		if(l[i]<'4'){if(count[7]>=count[4])count[4]++;else count[7]++;}
		 else count[7]++;
		free=lr-i-1;
		diff=abs(count[7]-count[4]);
		j=max(count[7],count[4]);
		if(diff<=free){
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return (j+(free-diff)/2)*(j+free-diff-((free-diff)/2));							
		}
		else {for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];};return (j)*(j-diff+free);}
		}
	if(l[i]<'4'&&r[i]>'4'){
		
		count[4]++;
		free=lr-i-1;
		diff=abs(count[7]-count[4]);
		j=max(count[7],count[4]);
		if(diff<=free){
			for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];}
			return (j+(free-diff)/2)*(j+free-diff-((free-diff)/2));							
		}
		else {for(j=0;j<lr;j++){r[j]=temp[j];l[j]=templ[j];};return (j)*(j-diff+free);}
		}
}
	
		
				

int main()
{	
    int t,i,ans=0,tmp;
    char l[25],r[25],temp[25];
    scanf("%d",&t);
	for(i=0;i<1000000000;i++){tmp=i;i=i*i-i+i+2*i*i*i*i*i;i=tmp;}
    while(t--){
        scanf("%s %s",l,r);
	ll=strlen(l);lr=strlen(r);
	
	
        if(ll<lr){
		for(i=0;i<lr-ll;i++)temp[i]='0';
		for(i=lr-ll;i<=lr;i++)temp[i]=l[i-lr+ll];
		i=0;
		while(temp[i]==r[i])i++;
		ans=comp(temp,r,i);	       
	}
	else{	
		i=0;
		if(strcmp(l,r)!=0)
		{while(l[i]==r[i])i++;
		ans=comp(l,r,i);}
		else ans=comp(l,r,lr);
	}

	printf("%d\n",ans);		
	}	
return 0;
}
        
