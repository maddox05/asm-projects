#include <stdio.h>

c_isprime(int n){
    for(int i=2; i<n; i++){
        if(n % i == 0 ){
            return 0;
        }
       
    }
     return 1;

}

int main(){
    printf("%d\n", isprime(47));
}