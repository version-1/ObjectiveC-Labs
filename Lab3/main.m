//
//  main.m
//  Lab3
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddingQuestion.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!");
    AddingQuestion *q = [[AddingQuestion alloc] init];
    @autoreleasepool {
        while (1) {
            NSString *option = getUserInput(10, q.generateRandomQuestion);
            if (option == nil || [option isEqualToString: @"exit"]) {
                break;
            }
            if ([q inspect: [option integerValue]]) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
