//
//  main.c
//  Addresses
//
//  Created by harikanth on 9/4/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int i = 17;
    int *addressOfI = &i;
    printf("I stores its value at %p\n", &i);
    
    *addressOfI = 89;
    
    printf("Address of I is %p\n", addressOfI);
    printf("The value in I is %d\n", *addressOfI);
    printf("This function is stored at %p\n", &main);
    printf("An int is %zu size\n", sizeof(int));
    printf("A pointer is %zu size\n", sizeof(int *));
    
    return 0;
}
