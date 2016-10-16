//
//  main.c
//  PolarToCartesian
//
//  Created by harikanth on 9/5/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr){
    
    //is rPtr non-null
    if (rPtr){
        *rPtr = sqrt(x*x + y*y);
    }
    float theta;
    //is thetaPtr non-null
    
    if (!thetaPtr)
    {
        return;
    }
    
    if (x==0)
    {
        if (y == 0)
        {
            theta = 0.0;
        }
        else if ( y > 0)
        {
            theta = M_PI_2;
        } else
        {
            theta = -M_PI_2;
        }
    }else
    {
        theta = atan(y/x);
    }
    *thetaPtr = theta;
}

int main(int argc, const char * argv[]) {
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f )!\n", x,y, angle, radius);
    return 0;
}
