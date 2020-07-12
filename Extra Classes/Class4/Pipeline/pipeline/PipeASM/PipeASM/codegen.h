#ifndef __CODEGEN_H__
#define __CODEGEN_H__

#include "stdafx.h"

//**********************************************************
//		INSTRUCOES
const short NOP = 0;
const short ADD = 12;
const short MUL = 15;
const short SUB = 1;
const short AND = 2;
const short OR  = 3;
const short XOR = 4;
const short NOT = 5;

const short LOADI = 6;
const short LOAD  = 7;
const short STORE = 8;

const short IO = 13;

const short JMP = 9;
const short BRZ = 10;
const short BRNZ= 11;
//**********************************************************
//		TIPOS DE INSTRUCOES

#define OPCODE_SHIFT	12
#define OPCODE_MASK		0x0F

#define RD_SHIFT	9
#define RD_MASK		0x07

#define RA_SHIFT	6
#define RA_MASK		0x07

#define RB_SHIFT	3
#define RB_MASK		0x07

#define IMM_SHIFT	0
#define IMM_MASK	0xFF

#define IMM_LOAD_SHIFT 1

#define IMM_HIGH_MASK 0x07
#define IMM_HIGH_SHIFT 9

#define IMM_LOW_MASK 0x1F
#define IMM_LOW_SHIFT 1



#define ALUTYPE(opcode,rd,ra,rb) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((rd & RD_MASK)<<RD_SHIFT) | ((ra & RA_MASK)<<RA_SHIFT) | ((rb & RB_MASK)<<RB_SHIFT))

#define LOADITYPE(opcode,rd,imm) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((rd & RD_MASK)<<RD_SHIFT) | ((imm & IMM_MASK)<<IMM_SHIFT))

#define LOADTYPE1(opcode,rd,rb) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((rd & RD_MASK)<<RD_SHIFT) | ((rb & RB_MASK)<<RB_SHIFT))
#define LOADTYPE2(opcode,rd,imm) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((rd & RD_MASK)<<RD_SHIFT) | ((imm & IMM_MASK)<<IMM_LOAD_SHIFT) | 1)

#define STORETYPE1(opcode,ra,rb) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((ra & RA_MASK)<<RA_SHIFT) | ((rb & RB_MASK)<<RB_SHIFT))
#define STORETYPE2(opcode,imm2,rb,imm) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((imm2 & IMM_HIGH_MASK)<<IMM_HIGH_SHIFT) | ((rb & RB_MASK)<<RB_SHIFT) | ((rb & IMM_LOW_MASK)<<IMM_LOW_SHIFT) | 1)

#define JMPTYPE(opcode,ra,rb) (0 | ((opcode & OPCODE_MASK)<<OPCODE_SHIFT) | ((ra & RA_MASK)<<RA_SHIFT) | ((rb & RB_MASK)<<RB_SHIFT))
//**********************************************************


class TCodePrinter
{
	fstream outFile;

public:
	TCodePrinter(char *pFileName)
	{
		outFile.open(pFileName,ios::out);
	}

	~TCodePrinter()
	{
		outFile.flush();
		outFile.close();
	}

	void PutLine(char *text)
	{
		outFile<<text<<endl;
	}

};


class TCodeGenerator
{
	TCodePrinter *outBuffer;

public: 

	TCodeGenerator(){}

	TCodeGenerator(char *pFileName) 
    {
		outBuffer=new TCodePrinter(pFileName);
    }

	~TCodeGenerator()
	{
		delete outBuffer;
	}

	void EmitADD(int Ra,int Rb);
	void EmitMUL(int Ra,int Rb);
	void EmitSUB(int Ra,int Rb);
	void EmitAND(int Ra,int Rb);
	void EmitOR (int Ra,int Rb);
	void EmitXOR(int Ra,int Rb);
	void EmitNOT(int Ra);

	void EmitLOADI(int Rd,int value);
	void EmitLOAD1(int Rd,int Rb);
	void EmitLOAD2(int Rd,int imm);
	void EmitSTORE1(int Ra,int Rb);
	void EmitSTORE2(int Ra,int imm);

	void EmitJMP(int Ra);
	void EmitBRZ(int Ra,int Rb);
	void EmitBRNZ(int Ra,int Rb);

	void EmitNOP(void);


	void EmitLabel(char* labelStr);


	void PrintCode(void);
};



//********************************************************************
//		class label para ajudar a resolver os saltos

/*class TLabelList;

class TLabel
{
	char labelStr[20];
	int  labelAddr;
	TLabel *next;

	friend class TLabelList; 

public:

	TLabel(void) {labelStr[0]='\0'; labelAddr=0; next=NULL;}

	void setStr(char *str){strcpy(labelStr,str);}
	void setAddr(int addr){labelAddr=addr;}

	char* getStr (void){return labelStr;}
	int   getAddr(void){return labelAddr;}

};


class TLabelList
{
	TLabel *first;

public:
	TLabelList(void){first=NULL;}
	void InsertLabel(char *str);
	TLabel* GetLabel(char *str);


};*/


#endif