//
//  main.c
//  Turkey
//
//  Created by harikanth on 9/1/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
   
    float weight;
    weight = 14.2;
    printf("The weight of Turkey is %f.\n", weight);
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    return 0;

}

