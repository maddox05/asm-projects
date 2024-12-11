#include <stdio.h>
#include <stdlib.h>
/**
 * countArray is an array of 256 elements that stores the number of repetitions for each ASCII character. 
 * For instance, if letter "A" (ASCII 65) 
 * appears 3 times in s, then countArray[65] is incremented three times. 
 * compute_histogram will return the length of s.
 */
long compute_histogram(char * s, long * countArray){
    while (*s != '\0'){
        countArray[(int)(*s)]++;
        s++;
    }

}

int main(){
    char * s = "hello";
    long * countArray = calloc(256,8);
    printf("%ld", countArray);
    hist(s, countArray);
    for(int i=0;i<256;i++){
        printf("%c, %ld\n", i, countArray[i]);
    }
}