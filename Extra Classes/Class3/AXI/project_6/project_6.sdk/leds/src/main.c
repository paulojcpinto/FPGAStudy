/*
 * main.c
 *
 *  Created on: 26/02/2020
 *      Author: Bruno
 */


int main(){
int *ptr=0x43c00000;
int i = 0;

while(1){
	*ptr = 1;
	*(ptr + 4) = 1;
	*(ptr + 8) = 1;
	*(ptr + 12) = 1;
	for(i = 0; i < 50000000; i++);
	*ptr = 0;
	*(ptr + 4) = 0;
	*(ptr + 8) = 0;
	*(ptr + 12) = 0;
	for(i = 0; i < 50000000; i++);
}


}
