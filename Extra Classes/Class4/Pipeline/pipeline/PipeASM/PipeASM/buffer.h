#ifndef __BUFFER_H__
#define __BUFFER_H__

#include "stdafx.h"


//INPUT

using namespace std;

extern char eofChar;
extern int inputPosition;
extern int listFlag;

const int maxInputBufferSize=256;				//para usar no tamanho do buffer de entrada

class TTextInBuffer				//class abstracta para o ficheiro de input
{
protected:
	fstream file;								//input file
	char *pfileName;							//apontador que guardo o nome do ficheiro
	char text[maxInputBufferSize];				//buffer de entrada
	char *pChar;								//apontador para o carater atual no buffer de texto

	virtual char GetLine(void)=0;

public:
	TTextInBuffer(const char *pInputFileName);

	virtual ~TTextInBuffer(void)
	{
		file.close();
		delete pfileName;
	}

	char Char(void) const {return *pChar;}
	char GetChar(void);
	char PutBackChar(void);
};


class TSourceBuffer : public TTextInBuffer			//class para lidar com o input
{
	virtual char GetLine(void);

public:
	TSourceBuffer(const char *pSourceFileName);
};



//OUTPUT

class TTextOutBuffer
{
public:
	char text[maxInputBufferSize+16];		//output text buffer

	virtual void PutLine(void)=0;

	void PutLine(const char *pText)
	{
		strcpy_s(text,maxInputBufferSize,pText);
		PutLine();
	}
};

class TListBuffer : public TTextOutBuffer
{
	char *pSourceFileName;				//ptr to source file name
	char date[26];						//para se quiser por a data no output
	int pageNumber;						//numero da pagina atual
	int lineCount;						//numero da linha da pagina atual

	void PrintPageHeader(void);

public:
	virtual ~TListBuffer(void)
	{
		delete pSourceFileName;
	}

	void Initialize(const char *fileName);
	virtual void PutLine(void);

	void PutLine(const char *pText)
	{
		TTextOutBuffer::PutLine(pText);
	}

	void PutLine(const char *pText,int lineNumber)
	{
		sprintf_s(text,"%4d %s",lineNumber,pText);
		PutLine();
	}
};

extern TListBuffer list;

#endif