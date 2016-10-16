//
//  main.c
//  TwoFloats
//
//  Created by harikanth on 9/3/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    
    float var1;
    float var2;
    var1 = 3.14;
    var2 = 42.08;
    float sum;
    sum = var1 + var2;
    printf("The sum of var1 and var2 is %f\n", sum);
    
    
    
    int i = 20;
    int j = 25;
    int k = ( i > j ) ? 10 : 5 ;
    if ( 5 < j - k ) {
        
        printf("The first expression is true");
    } else if(j > i){
        printf("Second expression is true.");
        
    } else {
        printf("Neither expression is true");
    }
    
    return 0;
}


//ifelse
