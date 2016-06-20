#include <stdio.h>

int main(int argc, char* argv[])
{
	char buffer[100];
	fgets(buffer, sizeof(buffer) - 1, stdin);
	for(int i = 0; i < 100; i++)
	{
		buffer[i] ^= 0x42;
	}
	buffer[99] = 0;
	printf("%s\n", buffer);
}
