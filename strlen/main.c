#include <stdio.h>
int main(){
    char * hello = "hell";
    printf("%d\n", mystrlen(hello));
    return 0;
}
// gcc -static main.c mystrlen.s