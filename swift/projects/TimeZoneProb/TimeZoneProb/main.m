//
//  main.m
//  TimeZoneProb
//
//  Created by harikanth on 9/8/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeZone *tzone = [[NSTimeZone alloc] init];
        bool isDayLight = [tzone isDaylightSavingTime];
        if (isDayLight == true)
            {
            NSLog(@"It is DaylightSavingTime");
            }
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
