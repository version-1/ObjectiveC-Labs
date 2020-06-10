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
        Box *box = [[Box alloc] initWithFloats :100 :100 :100];
        
        
        
        // insert code here...
        NSLog(@"Volume is %d", [box size]);
    }
    return 0;
}
