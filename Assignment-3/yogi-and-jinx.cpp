#include<bits/stdc++.h>
using namespace std;
int main()
{
	int t;
    scanf("%d",&t);
    while(t--)
    {
    	int n;
    	scanf("%d",&n);
    	long long int temp=n;
    	long long int ans=166666668;
    	int i;
    	long long int x=7;

    	// Added part for algorithm to work in O(logN)

    	long long int y=2;
	    while(n>0)
	    {
	        if(n & 1){
	            x=(x*y)%1000000007;
	        }

	        n=n>>1;
	        y=(y*y)%1000000007;
	    }

	    // End of algorithm working in O(logN)

    	/*
		Start of Algorithm working in O(N)

    	for(i=0;i<n;i++)
    	{
        	x=(x*2)%1000000007;
    	}

		End of Algorithm working in O(N)
		*/

    	if(temp%2==0){
        	x=(x+8)%1000000007;
    	}
   		else
        	x=(x-8)%1000000007;
    
		printf("%lld\n",(ans*x)%1000000007);
    }
    return 0;
}
