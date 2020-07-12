// PipeASM.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

int main(int argc, char** argv)
{
	TParser *pParser=new TParser(new TSourceBuffer(argv[1]));
	pParser->Parse();
	delete pParser;
	system("pause");
	return 0;
}

