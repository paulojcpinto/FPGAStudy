#include "stdafx.h"

void TParser::Parse(void)
{
	do
	{
		GetToken();		
		switch(token)
		{
//***************************************************************************************
//			ALU INSTRUCTIONS

			case tcADD:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitADD(reg1,reg2);
				}break;

			case tcMUL:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitMUL(reg1,reg2);
				}break;

			case tcSUB:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitSUB(reg1,reg2);
				}break;

			case tcAND:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitAND(reg1,reg2);
				}break;

			case tcOR:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitOR(reg1,reg2);
				}break;

			case tcXOR:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitXOR(reg1,reg2);
				}break;

			case tcNOT:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitNOT(reg1);
				}break;

//*******************************************************************************************
//			LOADS STORES INSTRUCTIONS

			case tcLOADI:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int imm=atoi(pToken->String());
				cgen->EmitLOADI(reg1,imm);
				}break;

			case tcLOAD:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();							//,
				GetToken();
				
				if(token == tcAT)
				{
					GetToken();
					int reg2=pToken->Value().integer;
					cgen->EmitLOAD1(reg1,reg2);
				}
				else
				{
					int imm=pToken->Value().integer;
					cgen->EmitLOAD2(reg1,imm);
				}

				}break;

			case tcSTORE:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();								// ,
				GetToken();
				
				if(token == tcAT)
				{
					GetToken();
					int reg2=pToken->Value().integer;
					cgen->EmitSTORE1(reg1,reg2);
				}
				else
				{
					int imm=pToken->Value().integer;
					cgen->EmitSTORE2(reg1,imm);
				}

				}break;

//************************************************************************************************
//				JUMP INSTRUCTIONS

			case tcJMP:{
				GetToken();
				int reg=pToken->Value().integer;
				cgen->EmitJMP(reg);
				}break;

			case tcBRZ:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitBRZ(reg1,reg2);
				}break;

			case tcBRNZ:{
				GetToken();
				int reg1=pToken->Value().integer;
				GetToken();
				GetToken();
				int reg2=pToken->Value().integer;
				cgen->EmitBRNZ(reg1,reg2);
				}break;

//***************************************************************************************************

			case tcNOP:
				cgen->EmitNOP();
				break;

//***************************************************************************************************
//			se for labels

			case tcWord:
				//se alguem quiser fazer em casa
				break;

		}//chaveta do switch
	
	}while(token != tcEndOfFile);


	cgen->PrintCode();							//print final code in file
}