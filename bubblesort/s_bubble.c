#include <stdio.h>
// the c one is so much faster lol

int main(){
    long arr[]= {5,4,938,6,68,999};
    //always asc order cuz easier
    bubblesort(arr, 6);
    for(int i=0; i<6;i++){
        printf("%ld, ", arr[i]);
    }
    printf("\n");
    return 0;
}
