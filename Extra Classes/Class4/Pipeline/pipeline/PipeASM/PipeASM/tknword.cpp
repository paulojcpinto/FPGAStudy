#include "stdafx.h"

const int minResWordLen = 2;
const int maxResWordLen = 7;

struct TResWord
{
	char *pString;
	TTokenCode code;
};


//tabela com as palavras reservadas ordenadas por numero de letras e depois por ordem alfabetica

static TResWord rw2[] =
{
	{"OR",tcOR},{NULL},
};

static TResWord rw3[] =
{
	{"ADD",tcADD},{"AND",tcAND},{"BRZ",tcBRZ},{"JMP",tcJMP},
	{"MUL",tcMUL},{"NOP",tcNOP},{"NOT",tcNOT}, {"SUB",tcSUB},{"XOR",tcXOR},  
	
	{NULL},
};

static TResWord rw4[] =
{
	{"BRNZ",tcBRNZ},{"LOAD",tcLOAD}, {NULL},
};

static TResWord rw5[] =
{
	{"INPUT",tcINPUT},{"LOADI",tcLOADI},{"STORE",tcSTORE},{NULL},
};

static TResWord rw6[] =
{
	{"OUTPUT",tcOUTPUT},{NULL},
};



static TResWord *rwTable[]=
{
	NULL,NULL,rw2,rw3,rw4,rw5,rw6,
};

//***********************************************************************************************************************************

void TWordToken::Get(TTextInBuffer &buffer)
{
	extern TCharCode charCodeMap[];

	char ch=buffer.Char();
	char *ps=string;

	do
	{
		*ps++=ch;
		ch=buffer.GetChar();
	}while((charCodeMap[ch] == ccLetter) || (charCodeMap[ch]==ccDigit) || (ch == '_'));

	*ps='\0';

	CheckForReservedWord();
	CheckForRegister();
}

void TWordToken::CheckForReservedWord(void)
{
	int len=strlen(string);
	TResWord *prw;

	code = tcWord;										// a partida assumimos que e um identificador

	if((len >= minResWordLen) && (len <= maxResWordLen))
	{
		for(prw=rwTable[len];prw->pString;prw++)
		{
			if(strcmp(string,prw->pString) == 0)
			{
				code=prw->code;
				break;
			}
		}
	}
}


void TWordToken::CheckForRegister(void)
{
	char *ps=string; int index;
	if(*ps == 'r')
	{
		index=atoi(ps+1);
		if(index >= 0 && index < 8)
		{
			value.integer=index;
			code=tcRegister;
		}
	}
}



void TWordToken::Print(void)const
{
	/*if(code == tcIdentifier)
	{
		sprintf(list.text,"\t%-18s %-s",">> identifier",string);
	}
	else
	{
		sprintf(list.text,"\t%-18s %-s",">> reserved word",string);
	}*/

	list.PutLine();
}
