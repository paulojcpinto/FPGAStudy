#include "stdafx.h"

void TSpecialToken::Get(TTextInBuffer &buffer)
{
	char ch=buffer.Char();
	char *ps=string;

	switch(ch)
	{
	case ',':
			*ps++=ch;
			code=tcComma;
			buffer.GetChar();
		break;

	case '@':
			*ps++=ch;
			code=tcAT;
			buffer.GetChar();
		break;

	case '.':
			*ps++=ch;
			code=tcPeriod;
			buffer.GetChar();
		break;

	case ':':
			*ps++=ch;
			code=tcColon;
			buffer.GetChar();
		break;

	}
	*ps='\0';
}

void TSpecialToken::Print(void)const
{
	
}



//error token
void TErrorToken::Get(TTextInBuffer &buffer)
{
	string[0]=buffer.Char();
	string[1]='\0';
	buffer.GetChar();
	//cout<<"entrou com >> "<<string<<endl;
}

void TErrorToken::Print(void)const
{

}



void TEOFToken::Get(TTextInBuffer &buffer)
{
	char *ps=string;
	*ps='\0';
	strcat(ps,"End of File");
}

void TEOFToken::Print(void)const
{
	
}