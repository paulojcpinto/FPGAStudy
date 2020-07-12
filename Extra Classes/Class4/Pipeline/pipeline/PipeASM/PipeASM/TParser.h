#ifndef __PARSER_H__
#define __PARSER_H__

#include "stdafx.h"

class TParser
{
	TTextScanner *const pScanner;				//apontador para o scanner
	TToken *pToken;								//apontador para o token atual
	TTokenCode token;
	TCodeGenerator *cgen;

public:
	void GetToken(void)
	{
		pToken=pScanner->Get();
		token =pToken->Code();
	}

	TParser(TTextInBuffer *pBuffer) : pScanner(new TTextScanner(pBuffer))/*,pCompact(new TCompactListBuffer)*/
	{
		cgen=new TCodeGenerator("out.coe");
    }
	~TParser(void)
	{
		delete cgen;
		delete pScanner;
	}

	void Parse(void);


};

#endif