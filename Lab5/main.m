//
//  main.m
//  Lab3
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "Question.h"
#import "QuestionFactory.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!");
    ScoreKeeper *s = [[ScoreKeeper alloc] init];
    QuestionManager *qm = [[QuestionManager alloc] init];
    @autoreleasepool {
        while (1) {
            Question *q = [QuestionFactory createInstance];
            NSString *answer = [InputHandler getUserInput :10 :[qm ask :q]];
            if (answer == nil || [answer isEqualToString: @"quit"]) {
                break;
            }
            if ([qm inspect :[answer integerValue]]) {
                NSLog(@"Right!");
                [s match];
            } else {
                NSLog(@"Wrong!");
                [s miss];
            }
            NSLog(@"%@", [s score]);
            NSLog(@"%@", [qm stats]);
        }
    }
    return 0;
}
