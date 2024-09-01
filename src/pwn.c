#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void init()
{
  setvbuf(stdout, NULL, _IONBF, 0);
  setvbuf(stdin, NULL, _IONBF, 0);
  setvbuf(stderr, NULL, _IONBF, 0);
}

int main()
{
  char command[256];
  init();

  puts("Welcome to the test your nc challenge!");
  while (1)
  {
    printf("# ");
    if (fgets(command, sizeof(command), stdin) != NULL)
    {
      size_t len = strlen(command);
      if (len > 0 && command[len - 1] == '\n')
      {
        command[len - 1] = '\0';
      }
      system(command);
    }
  }
  return 0;
}