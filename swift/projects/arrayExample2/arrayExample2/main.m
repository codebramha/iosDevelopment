//
//  main.m
//  arrayExample2
//
//  Created by harikanth on 9/11/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSDate *now = [NSDate date];
        NSDate *yesterday = [now dateByAddingTimeInterval: -60*24*60];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        
        NSMutableArray *dateList = [NSMutableArray array];
        
        //add dates to the array
        
        [dateList addObject:now];
        [dateList addObject:yesterday];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        for(NSDate *d in dateList)
            {
            NSLog(@"Here is the date: %@", d );
            }
        
        
        
        
        
    }
    return 0;
}
