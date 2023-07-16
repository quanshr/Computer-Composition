/*** 
 * @Author: ltt
 * @Date: 2022-11-06 21:10:29
 * @LastEditors: ltt
 * @LastEditTime: 2022-11-06 21:34:50
 * @FilePath: decoder.cpp
*/
#include<bits/stdc++.h>
#define LL long long
#define eps 1e-9;
#define mes(x,y) memset(x,y,sizeof(x))
using namespace std;
int read()
{
	int x=0,f=1;char ch=getchar();
	while(ch<'0'||ch>'9'){if(ch=='-') f=-1;ch=getchar();}
	while(ch>='0'&&ch<='9') x=x*10+ch-'0',ch=getchar();
	return x*f;
}
char st[21];
int id(char cc)
{
	if(cc>='0'&&cc<='9') return cc-'0';
	else if(cc>='A'&&cc<='Z') return cc-'A'+10;
	else return cc-'a'+10;
}
int Bin[63];
int main()
{
	// freopen("code.txt","r",stdin);
	freopen("decode.txt","w",stdout);
	while(gets(st+1))
	{
		LL ans=0;
		for(int i=1;i<=8;i++)
		{
			ans=(ans<<4)+id(st[i]);
		}
		for(int i=31;i>=0;i--)
		{
			Bin[i]=(ans&(1LL<<i))>>i; 
		}
		int opcode=0,funct=0,RA1=0,RA2=0,RA3=0,imm=0,index=0;
		for(int i=31;i>=26;i--) opcode=(opcode<<1)+Bin[i];
		for(int i=25;i>=21;i--) RA1=(RA1<<1)+Bin[i];
		for(int i=20;i>=16;i--) RA2=(RA2<<1)+Bin[i];
		for(int i=15;i>=11;i--) RA3=(RA3<<1)+Bin[i];
		for(int i=15;i>=0;i--) imm=(imm<<1)+Bin[i];
		for(int i=25;i>=0;i--) index=(index<<1)+Bin[i];
		for(int i=5;i>=0;i--) funct=(funct<<1)+Bin[i];
		if(opcode==0)
		{
			if(funct==32)
			{
				printf("add $%d,$%d,$%d\n",RA3,RA1,RA2);
			}
			if(funct==34)
			{
				printf("sub $%d,$%d,$%d\n",RA3,RA1,RA2);
			}
			if(funct==8)
			{
				printf("jr $%d\n",RA1);
			}
		}
		if(opcode==13)
		{
			printf("ori $%d,$%d,%d\n",RA2,RA1,imm);
		}
		if(opcode==35)
		{
			printf("lw $%d,%d($%d)\n",RA2,imm,RA1);
		}
		if(opcode==43)
		{
			printf("sw $%d,%d($%d)\n",RA2,imm,RA1);
		}
		if(opcode==4)
		{
			printf("beq $%d,$%d,%d\n",RA1,RA2,imm);
		}
		if(opcode==15)
		{
			printf("lui $%d,%d\n",RA2,imm);
		}
		if(opcode==0&&funct==0)
		{
			printf("nop\n");
		}
		if(opcode==3)
		{
			printf("jal %d\n",index);
		}
	}
	return 0;
}

