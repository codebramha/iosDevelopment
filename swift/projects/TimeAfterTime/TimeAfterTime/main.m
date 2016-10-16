//
//  main.m
//  TimeAfterTime
//
//  Created by harikanth on 9/6/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        double seconds = [now timeIntervalSince1970];
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1988];
        [comps setMonth:8];
        [comps setDay:14];
        [comps setHour:6];
        [comps setMinute:5];
        [comps setSecond:10];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        double d = [later timeIntervalSinceDate:dateOfBirth];
        NSLog(@"the new date lives at %p", now);
        NSLog(@"The date is %@", now);
        NSLog(@"The seconds from 1970 till today are %f ",seconds);
        NSLog(@"The later date is %@", later);
        NSLog(@"The date of birth is %@", dateOfBirth);
        NSLog(@"The total time i lived on planet earth is %f seconds", d);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit: NSCalendarUnitDay
                                        inUnit: NSCalendarUnitMonth
                                       forDate: now];
        NSLog(@"This is day %lu of the month", day);
        
        
        
    }
    return 0;
}