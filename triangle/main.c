#include <stdio.h>

void c_triangle(){
    long n;
    printf("N? ");
    scanf("%ld", &n);
    for(int i=n; i>0;i--){
        for(int j=0; j<i;j++){
            printf("*");
        }
        printf("\n");
    }
}

int main(){
    c_triangle();
    triangle();
}