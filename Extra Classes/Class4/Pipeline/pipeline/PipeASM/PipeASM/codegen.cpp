#include "stdafx.h"

const int codeMemSize=1024;

int codeMem[codeMemSize];
int PC=0;



//*************************************************************************
//			EMIT ALU INSTRUCTIONS

void TCodeGenerator::EmitADD(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(ADD,Ra,Ra,Rb);
}

void TCodeGenerator::EmitMUL(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(MUL,Ra,Ra,Rb);
}

void TCodeGenerator::EmitSUB(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(SUB,Ra,Ra,Rb);
}

void TCodeGenerator::EmitAND(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(AND,Ra,Ra,Rb);
}

void TCodeGenerator::EmitOR(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(OR,Ra,Ra,Rb);
}

void TCodeGenerator::EmitXOR(int Ra, int Rb)
{	
	codeMem[PC++]=ALUTYPE(XOR,Ra,Ra,Rb);
}

void TCodeGenerator::EmitNOT(int Ra)
{	
	codeMem[PC++]=ALUTYPE(NOT,Ra,Ra,0);
}

//********************************************************************
//		EMIT LOAD STORE

void TCodeGenerator::EmitLOADI(int Rd,int value)
{
	codeMem[PC++]=LOADITYPE(LOADI,Rd,value);
}

void TCodeGenerator::EmitLOAD1(int Rd,int Rb)
{
	codeMem[PC++]=LOADTYPE1(LOAD,Rd,Rb);
}

void TCodeGenerator::EmitLOAD2(int Rd,int imm)
{
	codeMem[PC++]=LOADTYPE2(LOAD,Rd,imm);
}


void TCodeGenerator::EmitSTORE1(int Ra,int Rb)
{
	codeMem[PC++]=STORETYPE1(STORE,Ra,Rb);
}

void TCodeGenerator::EmitSTORE2(int Ra,int imm)
{
	int IMM_HIGH=(imm & 0x07)>>9;
	int IMM_LOW=(imm & 0x1F);
	codeMem[PC++]=STORETYPE2(STORE,IMM_HIGH,Ra,IMM_LOW);
}

//*************************************************************************
//		EMIT SALTOS

void TCodeGenerator::EmitJMP(int Ra)
{
	codeMem[PC++]=JMPTYPE(JMP,Ra,0);
}

void TCodeGenerator::EmitBRZ(int Ra,int Rb)
{
	codeMem[PC++]=JMPTYPE(BRZ,Ra,Rb);
}

void TCodeGenerator::EmitBRNZ(int Ra,int Rb)
{
	codeMem[PC++]=JMPTYPE(BRNZ,Ra,Rb);
}


//*************************************************************************
//		NOP

void TCodeGenerator::EmitNOP(void)
{
	codeMem[PC++]=JMPTYPE(NOP,0,0);
}




//*************************************************************************
//			PRINT CODE
void TCodeGenerator::PrintCode(void)
{
	char buffer[20];
	
	outBuffer->PutLine("memory_initialization_radix=16;");
	outBuffer->PutLine("memory_initialization_vector=");

	for(int i=0;i<PC;i++)
	{
		sprintf(buffer,"%.4x,",codeMem[i]);
		outBuffer->PutLine(buffer);
	}
	outBuffer->PutLine("0;");
}


























//*********************************************************************************************
//		TLabelList implementation

/*void TLabelList::InsertLabel(char *str)
{
	TLabel *newLabel=new TLabel();
	newLabel->setAddr(PC);
	newLabel->setStr(str);
	newLabel->next=first;
	first=newLabel;
}


TLabel* TLabelList::GetLabel(char *str)
{
	TLabel *aux=first;
	while (aux)
	{
		if(strcmp(aux->getStr(),str) == 0)
		{
			return aux;
		}
		aux=aux->next;
	}
	return NULL;
}*/