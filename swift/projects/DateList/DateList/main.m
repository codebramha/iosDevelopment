//
//  main.m
//  DateList
//
//  Created by harikanth on 9/8/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //create three NSArray objects
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60*60];
        //Create an array containing all three dates and nil terminates the list
        NSArray *dateList =[NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        for (NSDate *d in dateList)
            {
            NSLog(@"Here is a date: %@", d);
            }
        
    }
    return 0;
}

//This looping is called as fast enumeration and its efficient

