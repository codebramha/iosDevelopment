//
//  main.c
//  TheHeap
//
//  Created by harikanth on 9/6/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct{
    float heightInMeters;
    float weightInKgs;

} Person;

float bodyMaskIndex(Person *p)
{
    return p->weightInKgs/(p->heightInMeters*p->heightInMeters);
}

int main ( int argc, const char * argv[])
{
    
    //Allocate memory to one person struct
    
    Person *x = (Person *)malloc(sizeof(Person));
    
    //fill in the two members of the struct
    
    x->weightInKgs = 70;
    x->heightInMeters = 1.7;
    
    float xBMI = bodyMaskIndex(x);
    printf("The BMI of the person x is %f\n", xBMI);
    
    free(x);
    
    
}
