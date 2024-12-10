#include <stdio.h>

int c_bubblesort(long * a, int n){
    for(int i=0; i<n-1; i++){
        for(int j=0; j<n-1;j++){
            if(a[j]>a[j+1]){
                int tmp = a[j];
                a[j]=a[j+1];
                a[j+1]=tmp;
            }
        }
    }
}

int main(){
    long arr[]= {5,4,938,6,68,999};
    //always asc order cuz easier
    c_bubblesort(arr, 6);
    for(int i=0; i<6;i++){
        printf("%ld, ", arr[i]);
    }
    printf("\n");
    return 0;
}