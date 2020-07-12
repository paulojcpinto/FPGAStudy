#ifndef __TOKEN_H__
#define __TOKEN_H__

#include "stdafx.h"

extern TCharCode charCodeMap[];

class TToken
{
protected:
	TTokenCode code;
	TDataValue value;
	char *string;

	friend class TIcode;

public:
	TToken(void)
	{
		code=tcDummy;
		value.integer=0;
		
		string = new char[maxInputBufferSize];
		string[0]='\0';
	}

	TTokenCode	Code()		const {return code;	}
	TDataValue	Value()		const {return value;}
	char*		String()	const {return (char*)string;}

	virtual void Get(TTextInBuffer &buffer)=0;
	virtual int IsDelimiter(void) const =0;
	virtual void Print(void)const =0;
};

class TWordToken : public TToken
{
	void CheckForReservedWord(void);
	void CheckForRegister(void);
public:
	virtual void Get(TTextInBuffer &buffer);
	virtual int IsDelimiter(void)const {return 0;}
	virtual void Print(void) const;
};

class TNumberToken : public TToken
{
	char ch;
	char *ps;
	int digitCount;
	int countErrorFlag;				//se tiver digitos a mais vem a true

public:
	TNumberToken(void){code=tcNumber;}

	virtual void Get(TTextInBuffer &buffer);
	virtual int IsDelimiter(void)const {return 0;}
	virtual void Print(void)const;
};


class TSpecialToken : public TToken
{
public:
	virtual void Get(TTextInBuffer &buffer);
	virtual int IsDelimiter(void)const {return True;}
	virtual void Print(void) const;
};

class TEOFToken : public TToken
{
public:
	TEOFToken(void){code=tcEndOfFile;}

	virtual void Get(TTextInBuffer &buffer);
	virtual int IsDelimiter(void)const {return 0;}
	virtual void Print(void) const;
};

class TErrorToken : public TToken
{
public:
	TErrorToken(void){code=tcError;}

	virtual void Get(TTextInBuffer &buffer);
	virtual int IsDelimiter(void)const {return 0;}
	virtual void Print(void) const;

};


#endif