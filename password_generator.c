
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void randomPasswordCreation(int length)
{

	int i,random = 0;


	srand((unsigned int)(time(NULL)));

	
	char numbers[] = "0123456789";


	char letters[] = "abcdefghijklmnoqprstuvwyzx";

	
	char LETTERS[] = "ABCDEFGHIJKLMNOQPRSTUYWVZX";

	
	char symbols[] = "!@#$^&*?";


	char password[length];

	
	random= rand() % 4;

	
	for (i = 0; i < length; i++) {

		if (random == 1) {
			password[i] = numbers[rand() % 10];
			random = rand() % 4;
			printf("%c", password[i]);
		}
		else if (random == 2) {
			password[i] = symbols[rand() % 8];
			random = rand() % 4;
			printf("%c", password[i]);
		}
		else if (random == 3) {
			password[i] = LETTERS[rand() % 26];
			random = rand() % 4;
			printf("%c", password[i]);
		}
		else {
			password[i] = letters[rand() % 26];
			random = rand() % 4;
			printf("%c", password[i]);
		}
	}
}

int main()
{
	
	int length = 10;

	randomPasswordCreation(length);

	return 0;
}
