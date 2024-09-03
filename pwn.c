#include <stdio.h>
#include <stdlib.h>

void init() {
  setvbuf(stdout, NULL, _IONBF, 0);
  setvbuf(stdin, NULL, _IONBF, 0);
  setvbuf(stderr, NULL, _IONBF, 0);
}

int main() {
  init();

  puts("Welcome to the test your nc challenge!");
  system("script -qc /bin/sh /dev/null");
  return 0;
}