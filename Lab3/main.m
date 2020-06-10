//
//  main.m
//  Lab3
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddingQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!");
    AddingQuestion *q = [[AddingQuestion alloc] init];
    ScoreKeeper *s = [[ScoreKeeper alloc] init];
    @autoreleasepool {
        while (1) {
            NSString *option = [InputHandler getUserInput :10 :[q generateRandomQuestion]];
            if (option == nil || [option isEqualToString: @"quit"]) {
                break;
            }
            if ([q inspect: [option integerValue]]) {
                NSLog(@"Right!");
                [s match];
            } else {
                NSLog(@"Wrong!");
                [s miss];
            }
            NSLog([s score]);
        }
    }
    return 0;
}
