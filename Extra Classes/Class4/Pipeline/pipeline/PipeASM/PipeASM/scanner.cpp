#include "stdafx.h"

TCharCode charCodeMap[128];		//maps a character to its code

TTextScanner::TTextScanner(TTextInBuffer *pBuffer):pTextInBuffer(pBuffer)
{
	int i;

	//atribui aos carateres o seu "grupo"
	for(i=0;i<127;i++){charCodeMap[i]=ccError;}
	for(i='a';i<='z';i++){charCodeMap[i]=ccLetter;}
	for(i='A';i<='Z';i++){charCodeMap[i]=ccLetter;}
	for(i='0';i<='9';i++){charCodeMap[i]=ccDigit;}
	charCodeMap['&']=charCodeMap['|']=ccSpecial;
	charCodeMap['+']=charCodeMap['-']=ccSpecial;
	charCodeMap['*']=charCodeMap['/']=ccSpecial;
	charCodeMap['=']=charCodeMap['^']=ccSpecial;
	charCodeMap['.']=charCodeMap[',']=ccSpecial;
	charCodeMap['<']=charCodeMap['>']=ccSpecial;
	charCodeMap['(']=charCodeMap[')']=ccSpecial;
	charCodeMap['[']=charCodeMap[']']=ccSpecial;
	charCodeMap['{']=charCodeMap['}']=ccSpecial;
	charCodeMap[':']=charCodeMap[';']=ccSpecial;
	charCodeMap['@']=ccSpecial;
	charCodeMap[' ']=charCodeMap['\t']=ccWhiteSpace;
	charCodeMap['\n']=charCodeMap['\0']=ccWhiteSpace;
	charCodeMap['\r']=ccWhiteSpace;
	charCodeMap['"']=charCodeMap['\'']=ccQuote;
	charCodeMap[eofChar]=ccEndOfFile;
}

void TTextScanner::SkipWhiteSpace(void)
{
	char ch=pTextInBuffer->Char();

	do
	{
		if(charCodeMap[ch]==ccWhiteSpace)
		{
			ch=pTextInBuffer->GetChar();
		}
		else if (ch == '/')
		{
			ch=pTextInBuffer->GetChar();
			if(ch == '/')
			{
				do
				{
					ch=pTextInBuffer->GetChar();
				}while(ch != '\0');										//aqui e '\0' em vez de '\n' pk no scanner ao preencher o buffer o \n foi substituido pelo \0
				pTextInBuffer->PutBackChar();
				ch='a';													//para forçar a sair do ciclo principal
			}
			else if(ch == '*')
			{
				int sair=1;
				do
				{
					ch=pTextInBuffer->GetChar();
					if(ch == '*')
					{
						ch=pTextInBuffer->GetChar();
						if(ch == '/')
						{
							sair=0;										//encontrou o fim do comentario
						}
					}
				}while(sair);
			}
			else
			{
				pTextInBuffer->PutBackChar();							//se nao for nenhum tipo de comentario tem de se por o char de volta para nao fazer asneiras
			}
		}

	}while((charCodeMap[ch]==ccWhiteSpace) || (ch == '/'));
}

TToken *TTextScanner::Get(void)
{
	TToken *pToken;

	SkipWhiteSpace();

	switch (charCodeMap[pTextInBuffer->Char()])
	{
		case ccLetter:		pToken=&wordToken;		break;
		case ccDigit:		pToken=&numberToken;	break;
		case ccSpecial:		pToken=&specialToken;	break;
		case ccEndOfFile:	pToken=&eofToken;		break;
		default:			pToken=&errorToken;		break;
	}
	
	pToken->Get(*pTextInBuffer);
	return pToken;
}

