//
//  InputHandler.m
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString*) getUserInput: (int)maxLength: (NSString*)prompt
{
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
@end
