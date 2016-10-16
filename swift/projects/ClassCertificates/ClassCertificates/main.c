//
//  main.c
//  ClassCertificates
//
//  Created by harikanth on 9/4/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>

void congratulateStudent( char *student, char *course, int numDays)
{
    printf("%s has done as much %s programming as i could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    congratulateStudent("Hari", "IOS", 10);
    congratulateStudent("Chris", "SWIFT", 10);
    congratulateStudent("Rob","Objective-C", 5);
    
    printf("Hello, World!\n");
    return 0;
}
