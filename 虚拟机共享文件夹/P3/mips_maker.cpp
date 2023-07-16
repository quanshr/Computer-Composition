#include <bits/stdc++.h>
using namespace std;

//add, sub, ori, lw, sw, beq, lui, nop
int n,op,rd,rs,rt,imm;
int label[100],t;
int mx=26;
int reg()
{
	int x=rand()%mx;
	while(x==1) x=rand()%mx;
	return x;
}

int newimm()
{
	return rand()%(1<<16);
}

int main()
{
	freopen("mips.txt","w",stdout);
	srand(time(0));
	n=rand()%32;
	for(int i=0;i<n;i++)
	{
		op=rand()%8;
		if(op==0)  //add rd rs rt
		{
			rd=reg(); rs=reg(); rt=reg();
			printf("add $%d $%d $%d\n",rd,rs,rt);
		}
		else if(op==1)  //sub rd rs rt
		{
			rd=reg(); rs=reg(); rt=reg();
			printf("sub $%d $%d $%d\n",rd,rs,rt);
		}
		else if(op==2)  //ori rt rs imm
		{
			rt=reg(); rs=reg(); imm=newimm();
			printf("ori $%d $%d %d\n",rt,rs,imm);
		}
		else if(op==3)  //lw rt imm(rs)
		{
			rt=reg(); rs=0; imm=rand()%32*4;
			printf("lw $%d %d($%d)\n",rt,imm,rs);
		}
		else if(op==4)  //sw rt imm(rs)
		{
			rt=reg(); rs=0; imm=reg()*4;
			printf("sw $%d %d($%d)\n",rt,imm,rs);
		}
		else if(op==5)  //beq rs rt imm
		{
			rs=reg(); rt=reg(); label[++t]=1;
			printf("beq $%d $%d label_%d\n",rs,rt,t);
		}
		else if(op==6)  //lui rt imm
		{
			rt=reg(); imm=newimm();
			printf("lui $%d %d\n",rt,imm);
		}
		else if(op==7)  //nop
			printf("nop\n");
		for(int i=1;i<=t;i++)
			if(label[i]==1&&rand()%8>5)
			{
				label[i]=0;
				printf("label_%d:\n",i);
			}
	}
	return 0;
}
