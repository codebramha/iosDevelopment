//
//  main.c
//  PBR
//
//  Created by harikanth on 9/5/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    fractionPart = modf(pi, &integerPart);
    printf("Integer part = %.0f and the fraction part = %.2f\n", integerPart, fractionPart);
    return 0;
    
    
}
