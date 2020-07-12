#include "stdafx.h"

using namespace std;

char eofChar=0x7F;			//carater especial de fim de ficheiro
int inputPosition;			//posicao "virtual" do carater actual
int listFlag = 1;			//true para mostrar as linhas de input senao por falso
int currentLineNumber=1;

//construtor 
TTextInBuffer::TTextInBuffer(const char *pInputFileName)
{
	pfileName = new char[strlen(pInputFileName)+1];
	strcpy(pfileName,pInputFileName);

	file.open(pfileName,ios::in);
}

//GetChar
char TTextInBuffer::GetChar(void)
{
	const int tabSize=8;			//numero de espaços de um tab
	char ch;						//char para fazer o return

	if(*pChar == eofChar){return eofChar;}				//end of file
	else if(*pChar == '\0'){ch = GetLine();}			//end of line
	else
	{
		++pChar;
		++inputPosition;
		ch=*pChar;
	}
	if(ch == '\t'){inputPosition += tabSize - inputPosition%tabSize;}

	return ch;
}

char TTextInBuffer::PutBackChar(void)
{
	--pChar;
	--inputPosition;
	return *pChar;
}

//----------------------------------------------------------------------------------
//source buffer

TSourceBuffer::TSourceBuffer(const char *pSourceFileName) : TTextInBuffer(pSourceFileName)
{
	list.Initialize(pSourceFileName);
	if(listFlag)
	{
		GetLine();
	}
}

char TSourceBuffer::GetLine(void)
{
	extern int lineNumber;

	if(file.eof()){pChar=&eofChar;}
	else
	{
		file.getline(text,maxInputBufferSize);
		pChar=text;

		if(listFlag){list.PutLine(text,++currentLineNumber);}	
	}

	inputPosition=0;
	return *pChar;
}


//List Buffer
const int maxPrintLineLenght=80;
const int maxLinesPerPage=50;

TListBuffer list;

void TListBuffer::PrintPageHeader(void)
{
	const char formFeedChar ='\f';

	cout<<formFeedChar<<"Page "<<++pageNumber<<"     "<<pSourceFileName<<"     "<<date<<endl<<endl;

	lineCount=0;
}


void TListBuffer::Initialize(const char *pFileName)
{
	text[0]='\0';
	pageNumber=0;

	pSourceFileName = new char[strlen(pFileName)+1];

	strcpy(pSourceFileName,pFileName);

	time_t timer;
	time(&timer);
	strcpy(date,asctime(localtime(&timer)));

	date[strlen(date)-1]='\0';

	PrintPageHeader();
}


void TListBuffer::PutLine(void)
{
	if(lineCount == 0 && (lineCount == maxLinesPerPage)){PrintPageHeader();}

	text[maxPrintLineLenght]='\0';

	cout<<text<<endl;

	++lineCount;
}


