//
//  main.m
//  Lab13
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject *obj = [[NSObject alloc] init];
        NSLog(@"%@", [obj stringByPigLatinization :@"Hello World"]);
        NSLog(@"%@", [obj stringByPigLatinization :@"Lorem ipsum"]);
    }
    return 0;
}
