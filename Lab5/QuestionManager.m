//
//  QuestionManager.m
//  Lab5
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype) init {
    _questions = [[NSMutableArray alloc] init];
    return self;
}

- (NSString*) ask: (Question*) q {
    [_questions addObject: q];
    return [q ask];
}

- (bool) inspect: (NSUInteger) ans {
    if ([_questions count] == 0) {
        return false;
    }
    Question *q = [_questions lastObject];
    bool res =[q inspect :ans];
    _totalTime += [q timediff];
    _averageTime = _totalTime / [_questions count];
    return res;
}

- (NSString*) stats {
    return [NSString stringWithFormat:@"total time: %.0fs, average  time %.0fs", _totalTime, _averageTime];
}


@end
