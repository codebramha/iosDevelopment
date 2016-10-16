//
//  main.c
//  Coolness
//
//  Created by harikanth on 9/4/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int i ;
    for ( i = 99; i >= 0; i-- )
    {
        if ( i % 5 == 0)
        {
            printf("Found one!\n");
            continue;
        }
        
        printf("%d\n", i);
    }
    printf("Hari is cool\n");
    return 0;
}
