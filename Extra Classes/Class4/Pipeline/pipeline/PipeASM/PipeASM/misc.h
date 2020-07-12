#ifndef __MISC_H__
#define __MISC_H__

#include "stdafx.h"


const int False=0;
const int True=1;

//carater codes
enum TCharCode
{
	ccLetter,
	ccDigit,
	ccSpecial,
	ccQuote,
	ccWhiteSpace,
	ccEndOfFile,
	ccError,
};

//token codes
enum TTokenCode
{
	tcDummy,
	tcLabel, tcRegister, tcNumber, tcEndOfFile, tcError, tcWord,

	tcADD, tcMUL, tcSUB, tcAND, tcOR, tcXOR, tcNOT,
	tcLOADI, tcLOAD, tcSTORE, 
	tcINPUT, tcOUTPUT,
	tcJMP, tcBRZ, tcBRNZ,
	tcNOP,

	tcComma, tcAT, tcPeriod, tcColon,										//, @ . :
};

//data type
enum TDataType
{
	tyDummy,
	
	tyCharacter,
	tyUnsignedChar,

	tyShortInteger,
	tyUnsignedShortInteger,
	tyInteger,
	tyUnsignedInteger,
	tyLongInteger,
	tyUnsignedLongInteger,
	tyLongLongInteger,

	tyReal,
	tyString,

	tyVoid,
	tyStruct,
};

//data value
union TDataValue
{
	int		integer;
	float	real;
	char	character;
	char	*pString;
};

#endif