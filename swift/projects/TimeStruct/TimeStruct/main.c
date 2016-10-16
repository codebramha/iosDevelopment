//
//  main.c
//  TimeStruct
//
//  Created by harikanth on 9/6/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[]) {
    long secondsSince1970 = time(NULL);
    long secondsNew = secondsSince1970 + 4000000;
    
    struct tm now;
    //localtime_r(&secondsSince1970, &now);
    localtime_r(&secondsNew, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    printf("It has been %ld seconds since 1970.\n", secondsSince1970);
    printf("The date after %ldsec(i.e. 4 mil. sec) is %d-%d-%d\n", secondsNew, now.tm_mon+1, now.tm_mday, now.tm_year + 1900);
    printf("Hello, World!\n");
    return 0;
}
