//
//  main.c
//  Degrees
//
//  Created by harikanth on 9/4/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
float fahrenheitFromCelsius(float cel)
{
    float fahr = cel * 0.8 + 32.0;
    printf("%f celsius is %f fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit!\n", freezeInF);
    return 0;
}
