#ifndef __SCANNER_H__
#define __SCANNER_H__

#include "stdafx.h"



//TScanner abstract class
class TScanner
{
protected:
	TWordToken wordToken;
	TNumberToken numberToken;
	TSpecialToken specialToken;
	TEOFToken eofToken;
	TErrorToken errorToken;

public:
	virtual ~TScanner(void){}

	virtual TToken *Get(void)=0;
};

class TTextScanner : public TScanner
{
	TTextInBuffer *const pTextInBuffer;

	void SkipWhiteSpace(void);

public:
	TTextScanner(TTextInBuffer *pBuffer);
	virtual ~TTextScanner(void){delete pTextInBuffer;}

	virtual TToken *Get(void);
};

#endif