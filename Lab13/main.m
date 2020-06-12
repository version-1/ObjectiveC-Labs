//
//  main.m
//  Lab13
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [@"Hello World" stringByPigLatinization]);
        NSLog(@"%@", [@"Lorem ipsum" stringByPigLatinization]);
    }
    return 0;
}
