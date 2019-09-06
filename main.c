#include <stdio.h>
#include <time.h> 
#define MAX	10
extern void __bubbleSORT(int *, int);
extern void __selectionSORT(int *, int);

int main()
{	
  int arrB[MAX] = {9,7,0,4,5,3,2,6,1,8};
	int arrS[MAX] = {9,7,0,2,4,3,1,0,1,8};
	
	__bubbleSORT(arrB, MAX);	
	
	__selectionSORT(arrS, MAX);
	
	return 0;
}
