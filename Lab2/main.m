//
//  main.m
//  Lab2
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box = [[Box alloc] initWithFloats :10 :10 :10];
        
        Box *box1 = [[Box alloc] initWithFloats :5 :10 :10];
        Box *box2 = [[Box alloc] initWithFloats :5 :10 :10];
        Box *box3 = [[Box alloc] initWithFloats :5 :10 :10];
        
        [box add:[box1 volume]];
        [box add:[box2 volume]];
        [box add:[box3 volume]];
        
        // insert code here...
        NSLog(@"Volume is %f", [box volume]);
        NSLog(@"Content Volume is %f", [box contentVolume]);
        NSLog(@"size count is %d", [box countInBox]);
    }
    return 0;
}
