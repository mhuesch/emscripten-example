#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "console.h"

void say_hello() {
  console_log("Hello, World!\n");
}

void echo(char * input) {
  char * res;
  int len = (sizeof *res)*(strlen(input));
  res = (char *)calloc(0, len+2);
  sprintf(res, "%s\n", input);
  console_log(res);
}

int main(int argc, const char *argv[]) {
  say_hello();
  return 0;
}
