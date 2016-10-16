//
//  main.m
//  hostNameProg
//
//  Created by harikanth on 9/8/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *myHost = [NSHost currentHost];
        NSString *myName = [myHost localizedName];
        NSLog(@"My host name is %@", myName);
        NSLog(@"Hello, World!");
    }
    return 0;
}
