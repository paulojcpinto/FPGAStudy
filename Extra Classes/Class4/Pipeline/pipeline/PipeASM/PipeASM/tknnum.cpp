#include "stdafx.h"

void TNumberToken::Get(TTextInBuffer &buffer)
{
	ch=buffer.Char();
	ps=string;

	while (charCodeMap[ch]==ccDigit)
	{
		*ps++=ch;
		ch=buffer.GetChar();
	}
	*ps='\0';

	value.integer=atoi(ps);

	code=tcNumber;
}

void TNumberToken::Print(void)const
{
	
}





