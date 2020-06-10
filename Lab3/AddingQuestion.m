//
//  AddingQuestion.m
//  Lab3
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddingQuestion.h"

@implementation AddingQuestion {
    int left;
    int right;
    int answer;
}
- (instancetype) init {
    if (self = [super init]) {
        [self generateRandomQuestion];
    }
    return self;
}

- (bool)inspect: (int) _answer
{
    return answer == _answer;
}

- (NSString*) generateRandomQuestion
{
    left = [self genRandomNum];
    right =  [self genRandomNum];
    answer = left + right;
    return [self toString];
}

- (int) genRandomNum
{
    return arc4random_uniform(100 - 10) + 10;
}

- (NSString*) toString
{
    return [NSString stringWithFormat:@"%d + %d ?",left, right];
}

@end
