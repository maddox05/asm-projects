#include <stdio.h>
long c_range_array(long * arr, long n){
    long max = arr[0];
    long min = arr[0];
    for(int i=0; i<n; i++){
        if(max<arr[i]){
            max=arr[i];
        }else if(min>arr[i]){ // i am dumb I cannot do it anymore
            min=arr[i];
        }
    }
    return max-min;
}



int main(){
    long arr[] = {2,5,8,42};
    printf("%ld\n", range(arr,4));
}