//
//  main.c
//  Triangle
//
//  Created by harikanth on 9/4/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float remainingAngle(float A, float B) {
    
    float C = 180 - (A + B);
    return C;
    
}

int main(int argc, const char * argv[]) {
    
    float angleA = 60;
    float angleB = 30;
    float angleC = remainingAngle(angleA, angleB);
    
    printf("The third angle is %f\n", angleC);
    return EXIT_SUCCESS;
}
