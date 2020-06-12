
//
//  Question.m
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) initWith: (NSInteger) left: (NSInteger) right
{
    if (self = [super init]) {
        self.left = left;
        self.right = right;
        [self calculate];
    }
    return self;
}

- (NSInteger) timediff {
    NSTimeInterval diff = [_endTime timeIntervalSinceDate:_startTime];
    return (NSInteger)diff;
}

- (void)ask
{
    _startTime = [[NSDate alloc] init];
}

- (bool)inspect: (int) answer
{
    self.endTime = [[NSDate alloc] init];
    return _answer == answer;
}


- (void) calculate
{
    self.answer = 0;
}

@end
